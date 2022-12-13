package com.giasuanhem.controller.Client.Admin;

import java.util.List;
import java.io.IOException;
import java.text.DateFormat;
import java.text.SimpleDateFormat;
import java.util.Date;
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
import com.fasterxml.jackson.databind.JsonMappingException;
import com.giasuanhem.model.Models.CategoryModel;
import com.giasuanhem.model.Models.ClassModel;
import com.giasuanhem.model.Models.PostModel;
import com.giasuanhem.model.Models.SubjectModel;
import com.giasuanhem.model.Models.TransactionHistoryModel;
import com.giasuanhem.service.ExcelExporter.CourceExcelExporter;
import com.giasuanhem.service.ExcelExporter.TransactionHistoryExcelExporter;
import com.giasuanhem.service.Mapper.MapperModel;
import com.giasuanhem.service.Service.AccountService;
import com.giasuanhem.service.Service.CategoryService;
import com.giasuanhem.service.Service.ClassService;
import com.giasuanhem.service.Service.PostService;
import com.giasuanhem.service.Service.SubjectService;
import com.giasuanhem.service.Service.TransactionService;

@Controller
public class AdminController {
	@Autowired
	MapperModel commonModel;
	@Autowired
	HttpSession session;

	@RequestMapping(value = "/admin", method = RequestMethod.GET)
	public ModelAndView adminPage() throws JsonParseException, JsonMappingException, IOException {
		if (session.getAttribute("admin") != null) {

			ModelAndView mav = new ModelAndView("admin/adminhome");
			return mav;
		} else {
			ModelAndView mav = new ModelAndView("admin/login");
			return mav;
		}

	}

	@RequestMapping(value = "/quanlylichsugiaodich", method = RequestMethod.GET)
	public ModelAndView adminTransaction(HttpServletRequest request, HttpServletResponse response) {
		try {
			if (session.getAttribute("admin") != null) {

				List<TransactionHistoryModel> listTransaction = TransactionService.getListTransaction(session);
				
				
				String typeRequest = request.getParameter("type");
				if (typeRequest != null && typeRequest.equals("history")) {
					DateFormat dateFormatter = new SimpleDateFormat("yyyy-MM-dd_HH:mm:ss");
					String currentDateTime = dateFormatter.format(new Date());

					String headerKey = "Content-Disposition";
					String headerValue = "attachment; filename=History_" + currentDateTime + ".xlsx";
					response.setHeader(headerKey, headerValue);

					TransactionHistoryExcelExporter excelExporter = new TransactionHistoryExcelExporter(listTransaction);
					excelExporter.export(response);
					return null;
				}

				ModelAndView mav = new ModelAndView("admin/transactionHistory");
				mav.addObject("listTransaction", listTransaction);

				return mav;
			} else {
				ModelAndView mav = new ModelAndView("admin/login");
				return mav;
			}
		} catch (Exception e) {
			ModelAndView mav = new ModelAndView("404page");
			return mav;
		}
	}

}