package com.giasuanhem.controller.Admin;

import java.util.Map;
import java.io.IOException;
import java.text.DateFormat;
import java.text.SimpleDateFormat;
import java.time.LocalDate;
import java.time.ZoneId;
import java.util.Date;
import java.util.HashMap;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

import com.fasterxml.jackson.core.JsonParseException;
import com.fasterxml.jackson.databind.JsonMappingException;
import com.giasuanhem.model.Models.StatisticalModel;
import com.giasuanhem.service.Mapper.MapperModel;
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

			Date date = new Date();
			LocalDate localDate = date.toInstant().atZone(ZoneId.systemDefault()).toLocalDate();
			String month = String.valueOf(localDate.getMonthValue());
			String day = String.valueOf(localDate.getDayOfMonth());
			String year = String.valueOf(localDate.getYear());

			Map<String, Object> params = new HashMap<String, Object>();
			params.put("month", month);
			params.put("day", day);
			params.put("year", year);
			StatisticalModel model = TransactionService.statistical(params, session);
			ModelAndView mav = new ModelAndView("admin/adminhome");
			mav.addObject("model", model);
			return mav;
		} else {
			ModelAndView mav = new ModelAndView("admin/login");
			return mav;
		}

	}

}