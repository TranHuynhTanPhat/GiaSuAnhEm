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
public class NewClassController{
	@Autowired
	CommonService commnService;
	@RequestMapping(value = "/lop-moi", method = RequestMethod.GET)
	public ModelAndView newClassPage() {
		List<NewClassModel> list = commnService.getListNewClass();
		
		Map<String, Object> paramsClass = new HashMap<>();
		paramsClass.put("style", 0);
		List<CategoryModel> listClass = commnService.getListCategory(paramsClass);
		
		Map<String, Object> paramsDistrict = new HashMap<>();
		paramsDistrict.put("style", 1);
		List<CategoryModel> listDistrict = commnService.getListCategory(paramsDistrict);
		
		ModelAndView mav = new ModelAndView("newclass/newclass");
		mav.addObject("listNewClass", list);
		mav.addObject("listCategoryClass",listClass);
		mav.addObject("listCategoryDistrict",listDistrict);
		return mav;
	}
}
