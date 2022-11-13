package com.giasuanhem.controller.Client;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

import com.giasuanhem.model.Models.ClassModel;
import com.giasuanhem.model.Models.TutorModel;

import java.util.List;



import com.giasuanhem.model.Models.NewClassModel;
import com.giasuanhem.model.Models.SubjectModel;
import com.giasuanhem.service.Service.CommonService;

@Controller
public class AdminController {
	@Autowired
	CommonService commonService;

	@RequestMapping(value = "/admin", method = RequestMethod.GET)
	public ModelAndView adminPage() {
		ModelAndView mav = new ModelAndView("admin/adminhome");
		return mav;
	}

	@RequestMapping(value = "/admin-introduction", method = RequestMethod.GET)
	public ModelAndView adminIntroduction() {
		ModelAndView mav = new ModelAndView("admin/adminIntroduction");
		return mav;
	}

	@RequestMapping(value = "/login", method = RequestMethod.GET)
	public ModelAndView login() {
		ModelAndView mav = new ModelAndView("admin/login");
		return mav;
	}
	@RequestMapping(value="/quanlygiasu", method=RequestMethod.GET)
	public ModelAndView tutorManagement(){
		List<TutorModel> list = commonService.getListTutor();
		ModelAndView mav= new ModelAndView("admin/tutorManagement");
		mav.addObject("listTutor",list);
		return mav;
	}

	@RequestMapping(value = "/quanlykhoahoc", method = RequestMethod.GET)
	public ModelAndView courceManagement() {
		List<NewClassModel> list = commonService.getListNewClass();
		ModelAndView mav = new ModelAndView("admin/courceManagement");
		mav.addObject("listNewClass", list);
		return mav;
	}

	@RequestMapping(value = "/quanlyluong", method = RequestMethod.GET)
	public ModelAndView salaryManagement() {
		ModelAndView mav = new ModelAndView("admin/salaryManagement");
		return mav;
	}

	@RequestMapping(value = "/quanlytuyendung", method = RequestMethod.GET)
	public ModelAndView recruitmentManagement() {
		ModelAndView mav = new ModelAndView("admin/recruitmentManagement");
		return mav;
	}

	@RequestMapping(value = "/quanlyphigiasu", method = RequestMethod.GET)
	public ModelAndView feeTutorManagement() {
		ModelAndView mav = new ModelAndView("admin/feeTutorManagement");
		return mav;
	}

	@RequestMapping(value = "/quanlylophoc", method = RequestMethod.GET)
	public ModelAndView classManagement() {
		List<ClassModel> list = commonService.getListClass();
		ModelAndView mav = new ModelAndView("admin/classManagement");
		mav.addObject("listClass", list);
		return mav;
	}

	@RequestMapping(value = "/quanlymonhoc", method = RequestMethod.GET)
	public ModelAndView subjectManagement() {
		List<SubjectModel> list = commonService.getListSubject();
		ModelAndView mav = new ModelAndView("admin/subjectManagement");
		mav.addObject("listSubject", list);
		return mav;
	}

	@RequestMapping(value = "/quanlylienhe", method = RequestMethod.GET)
	public ModelAndView contactManagement() {
		ModelAndView mav = new ModelAndView("admin/contactManagement");
		return mav;
	}
}