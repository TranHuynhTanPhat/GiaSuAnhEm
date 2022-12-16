package com.giasuanhem.controller.Client;

import java.io.IOException;
import java.lang.ProcessBuilder.Redirect;
import java.net.http.HttpRequest;
import java.net.http.HttpResponse;
import java.nio.charset.StandardCharsets;
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
import com.giasuanhem.service.Currency.ConvertCurrency;
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

				AccountModel modelA = AccountService.modelAccount;
				if (String.valueOf(session.getAttribute("role")).equals("tutor")) {

					Map<String, Object> params = new HashMap<>();
					params.put("id", request.getParameter("id"));
					NewClassModel classModel = CourceService.getNewClass(params, session);

					TransactionHistoryModel newModel = new TransactionHistoryModel();
					newModel.setAmount((int) (classModel.getSalary() * 0.4));

					newModel.setContent("DKDL:" + (String) request.getParameter("id"));

					newModel.setId_account(modelA.getId());
					newModel.setStatus(1);
					TransactionHistoryModel history = TransactionService.createTransaction(newModel, session);

					Map<String, Object> paramStatus = new HashMap<>();
					paramStatus.put("id", classModel.getId());
					paramStatus.put("status", 1);
					CourceService.updateStatus(paramStatus, session);

					EmailService.sendEmail(modelA.getEmail(), "Hóa đơn thanh toán", EmailService.formInvoice(
							ConvertCurrency.convertCurrency(history.getAmount()), String.valueOf(history.getId()),
							history.getCreated_at(), modelA.getUsername(),
							"Thanh toán phí đăng ký nhận lớp. Thông tin liên lạc phụ huynh: "
									+ classModel.getContact()
									+ " NẾU CÓ VẤN ĐỀ TRONG VIỆC LIÊN HỆ VỚI PHỤ HUYNH HÃY LIÊN HỆ VỚI CHÚNG TÔI QUA SỐ ĐIỆN THOẠI 0389 052 819.",
							String.valueOf(classModel.getId())));
					ModelAndView mav = new ModelAndView("users/formInvoice");
					mav.addObject("username", modelA.getUsername());
					mav.addObject("id", classModel.getId());
					mav.addObject("salary", ConvertCurrency.convertCurrency((int) (classModel.getSalary() * 0.4)));
					mav.addObject("idInvoice", history.getId());
					mav.addObject("emailUser", modelA.getEmail());
					return mav;
				} else {
					Map<String, Object> params = new HashMap<>();
					params.put("id", request.getParameter("id"));
					NewClassModel classModel = CourceService.getNewClass(params, session);

					TransactionHistoryModel newModel = new TransactionHistoryModel();
					newModel.setAmount(500000);

					newModel.setContent("DKML:" + (String) request.getParameter("id"));

					newModel.setId_account(modelA.getId());
					newModel.setStatus(1);
					TransactionHistoryModel history = TransactionService.createTransaction(newModel, session);

					EmailService.sendEmail(modelA.getEmail(), "Hóa đơn thanh toán",
							EmailService.formInvoice(ConvertCurrency.convertCurrency(history.getAmount()),
									String.valueOf(history.getId()), history.getCreated_at(), modelA.getUsername(),
									"Thanh toán phí đăng ký mở lớp.", String.valueOf(classModel.getId())));
					ModelAndView mav = new ModelAndView("users/formInvoice");
					mav.addObject("username", modelA.getUsername());
					mav.addObject("id", classModel.getId());
					mav.addObject("salary", ConvertCurrency.convertCurrency(500000));
					mav.addObject("idInvoice", history.getId());
					mav.addObject("emailUser", modelA.getEmail());
					return mav;
				}

			} else {
				return new ModelAndView("404page");
			}
		} catch (Exception e) {
			e.printStackTrace();
			ModelAndView mav = new ModelAndView("404page");
			return mav;
		}
	}

	@RequestMapping(value = "/thanh-toan-dang-ky-day", method = RequestMethod.GET)
	public ModelAndView registerForTutor(HttpServletRequest request, HttpServletResponse response) {
		if (String.valueOf(session.getAttribute("role")).equals("tutor")) {
			String classID = String.valueOf(request.getParameter("id"));
			int salary = Integer.parseInt(request.getParameter("salary"));

			ModelAndView mav = new ModelAndView("users/payBill");
			mav.addObject("id", classID);
			mav.addObject("salary", ConvertCurrency.convertCurrency((int) (salary * 0.4)));
			return mav;
		} else {
			return new ModelAndView("404page");
		}
	}

	@RequestMapping(value = "/thanh-toan-mo-lop", method = RequestMethod.GET)
	public ModelAndView registerForParent(HttpServletRequest request, HttpServletResponse response) {

		if (String.valueOf(session.getAttribute("role")).equals("parent")) {
			// String classID = String.valueOf(request.getParameter("id"));
			// String salary = String.valueOf(request.getParameter("salary"));
			ModelAndView mav = new ModelAndView("users/payBill");
			// mav.addObject("id", classID);
			// mav.addObject("salary", Integer.parseInt(salary));
			return mav;
		} else {
			return new ModelAndView("404page");
		}
	}
}
