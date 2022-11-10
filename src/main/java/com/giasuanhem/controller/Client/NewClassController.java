package com.giasuanhem.controller.Client;

import java.util.ArrayList;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

import com.giasuanhem.entity.Entity.NewClass;
import com.giasuanhem.service.Service.CommonService;

@Controller
public class NewClassController{
	@Autowired
	CommonService commnService;
	@RequestMapping(value = "/lop-moi", method = RequestMethod.GET)
	public ModelAndView newClassPage() {
		List<NewClass>  listNewClass = new ArrayList<NewClass>();
		listNewClass = commnService.getListNewClass();
		ModelAndView mav = new ModelAndView("newclass/newclass");
		mav.addObject("listClass", listNewClass);
		return mav;
	}
}
