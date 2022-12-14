package com.giasuanhem.controller.Admin;

import java.util.List;
import java.util.Map;
import java.io.IOException;
import java.text.DateFormat;
import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.HashMap;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

import com.fasterxml.jackson.core.JsonParseException;
import com.fasterxml.jackson.databind.JsonMappingException;
import com.giasuanhem.model.Models.TransactionHistoryModel;
import com.giasuanhem.service.ExcelExporter.TransactionHistoryExcelExporter;
import com.giasuanhem.service.Mapper.MapperModel;
import com.giasuanhem.service.Service.TransactionService;

@Controller
public class TransactionManagementController {
	@Autowired
	MapperModel commonModel;
	@Autowired
	HttpSession session;

	@RequestMapping(value = "/quanlylichsugiaodich", method = RequestMethod.GET)
	public ModelAndView adminTransaction(HttpServletRequest request, HttpServletResponse response)
			throws JsonParseException, JsonMappingException, IOException {

		if (session.getAttribute("admin") != null) {

			List<TransactionHistoryModel> listTransaction = TransactionService.getListTransaction(session);

			ModelAndView mav = new ModelAndView("admin/transactionHistory");

			// Excel
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

			// Search
			String keys = request.getParameter("keys");
			if (keys == null || keys == "") {
				mav.addObject("listTransaction", listTransaction);
			} else {
				Map<String, Object> params = new HashMap<>();
				params.put("key", keys);
				listTransaction = TransactionService.search(params, session);
				mav.addObject("listTransaction", listTransaction);
			}

			return mav;
		} else {
			ModelAndView mav = new ModelAndView("admin/login");
			return mav;
		}
	}
}
