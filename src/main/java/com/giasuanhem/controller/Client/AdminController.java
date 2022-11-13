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
	@RequestMapping(value="/quanlyluong", method=RequestMethod.GET)
	public ModelAndView salaryManagement(){
		ModelAndView mav= new ModelAndView("admin/salaryManagement");
		return mav;
	}
	@RequestMapping(value="/quanlytuyendung", method=RequestMethod.GET)
	public ModelAndView recruitmentManagement(){
		ModelAndView mav= new ModelAndView("admin/recruitmentManagement");
		return mav;
	}
	@RequestMapping(value="/quanlyphigiasu", method=RequestMethod.GET)
	public ModelAndView feeTutorManagement(){
		ModelAndView mav= new ModelAndView("admin/feeTutorManagement");
		return mav;
	}
	@RequestMapping(value="/quanlylophoc", method=RequestMethod.GET)
	public ModelAndView classManagement(){
		ModelAndView mav= new ModelAndView("admin/classManagement");
		return mav;
	}
	@RequestMapping(value="/quanlymonhoc", method=RequestMethod.GET)
	public ModelAndView subjectManagement(){
		ModelAndView mav= new ModelAndView("admin/subjectManagement");
		return mav;
	}
	@RequestMapping(value="/quanlylienhe", method=RequestMethod.GET)
	public ModelAndView contactManagement(){
		ModelAndView mav= new ModelAndView("admin/contactManagement");
		return mav;
	}
}