package com.giasuanhem.controller.Client;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

import com.giasuanhem.model.Models.CategoryModel;
import com.giasuanhem.model.Models.NewClassModel;
import com.giasuanhem.service.Service.CommonService;

@Controller
public class NewClassController {
	@Autowired
	CommonService commonService;

	@RequestMapping(value = "/lop-moi", method = RequestMethod.GET)
	public ModelAndView newClassPage() {
		try {
			List<NewClassModel> listNewClass = commonService.getListNewClass();

			ModelAndView mav = new ModelAndView("newclass/newclass");
			mav.addObject("listNewClass", listNewClass);
			return mav;
		} catch (Exception e) {
			ModelAndView mav = new ModelAndView("404page");
			return mav;
		}
	}
}
