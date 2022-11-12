package com.giasuanhem.controller.Client;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

@Controller
public class AdminController {
	@RequestMapping(value="/admin", method=RequestMethod.GET)
	public ModelAndView adminPage() {
		ModelAndView mav= new ModelAndView("admin/adminhome");
		return mav;
	}
	@RequestMapping(value="/admin-introduction",method=RequestMethod.GET)
	public ModelAndView adminIntroduction() {
		ModelAndView mav= new ModelAndView("admin/adminIntroduction");
		// Test
		return mav;
	}
	@RequestMapping(value="/login", method=RequestMethod.GET)
	public ModelAndView login(){
		ModelAndView mav= new ModelAndView("admin/login");
		return mav;
	}
	@RequestMapping(value="/quanlygiasu", method=RequestMethod.GET)
	public ModelAndView tutorManagement(){
		ModelAndView mav= new ModelAndView("admin/tutorManagement");
		return mav;
	}
	@RequestMapping(value="/quanlykhoahoc", method=RequestMethod.GET)
	public ModelAndView courceManagement(){
		ModelAndView mav= new ModelAndView("admin/courceManagement");
		return mav;
	}
}