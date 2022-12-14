package com.giasuanhem.controller.Client;

import java.io.IOException;
import java.lang.ProcessBuilder.Redirect;
import java.net.http.HttpRequest;
import java.net.http.HttpResponse;
import java.util.HashMap;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import com.fasterxml.jackson.core.JsonParseException;
import com.fasterxml.jackson.core.type.TypeReference;
import com.fasterxml.jackson.databind.JsonMappingException;
import com.fasterxml.jackson.databind.ObjectMapper;
import com.giasuanhem.model.Models.AccountModel;
import com.giasuanhem.model.Models.NewClassModel;
import com.giasuanhem.model.Models.TransactionHistoryModel;
import com.giasuanhem.service.Email.EmailService;
import com.giasuanhem.service.Email.RandomOTP;
import com.giasuanhem.service.Service.AccountService;
import com.giasuanhem.service.Service.CommonService;
import com.giasuanhem.service.Service.CourceService;
import com.giasuanhem.service.Service.TransactionService;

@Controller
public class paymentController {
	@Autowired
	HttpSession session;

	@RequestMapping(value = "/invoice", method = RequestMethod.GET)
	public ModelAndView invoicePage(HttpServletRequest request) {
		try {
			if (session.getAttribute("role") != null) {
				ObjectMapper objectMapper = new ObjectMapper();

				AccountModel model = objectMapper.convertValue(session.getAttribute("newAccount"),
						new TypeReference<AccountModel>() {
						});

				Map<String, Object> params = new HashMap<>();
				params.put("id", request.getParameter("id"));
				NewClassModel classModel = CourceService.getNewClass(params, session);

				int total = (int) (classModel.getSalary() * 0.4);

				TransactionHistoryModel newModel = new TransactionHistoryModel();
				newModel.setAmount(total);
				newModel.setContent("Đăng kí dạy lớp: " + (String) request.getParameter("id"));
				newModel.setId_account(model.getId());
				newModel.setStatus(1);
				TransactionHistoryModel history = TransactionService.createTransaction(newModel, session);

				Map<String, Object> paramStatus = new HashMap<>();
				paramStatus.put("id", classModel.getId());
				paramStatus.put("status", 1);
				CourceService.updateStatus(paramStatus, session);

				EmailService.sendEmail(model.getEmail(), "Hóa đơn thanh toán",
						EmailService.formInvoice(history.getAmount(), String.valueOf(history.getId()),
								history.getCreated_at(), model.getUsername(), "Thanh toán phí đăng ký nhận lớp.",
								String.valueOf(classModel.getId())));

				ModelAndView mav = new ModelAndView("users/formInvoice");
				mav.addObject("username", model.getUsername());
				mav.addObject("id", classModel.getId());
				mav.addObject("salary", classModel.getSalary());
				mav.addObject("idInvoice", history.getId());
				return mav;
			} else {
				return new ModelAndView("404page");
			}
		} catch (Exception e) {
			e.printStackTrace();
			ModelAndView mav = new ModelAndView("404page");
			return mav;
		}
	}

	@RequestMapping(value = "/dang-ky-day", method = RequestMethod.GET)
	public ModelAndView registerForTutor(HttpServletRequest request, HttpServletResponse response) {
		String role = String.valueOf(session.getAttribute("role"));

		if (role.equals("tutor")) {
			String classID = String.valueOf(request.getParameter("id"));
			String salary = String.valueOf(request.getParameter("salary"));
			ModelAndView mav = new ModelAndView("users/payBill");
			mav.addObject("id", classID);
			mav.addObject("salary", Integer.parseInt(salary));
			return mav;
		} else {
			return new ModelAndView("404page");
		}
	}
}
