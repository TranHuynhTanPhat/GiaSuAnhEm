package com.giasuanhem.controller.Client;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import com.giasuanhem.model.Models.NewClassModel;
import com.giasuanhem.model.Models.adminModel;
import com.giasuanhem.service.Service.CommonService;

@Controller
public class AdminController {
	@Autowired
	CommonService commonService;
	@Autowired
	HttpSession session;

	@RequestMapping(value = "/admin", method = RequestMethod.GET)
	public ModelAndView adminPage() {
		if (session.getAttribute("userName") != null) {
			ModelAndView mav = new ModelAndView("admin/adminhome");
			return mav;
		} else {
			ModelAndView mav = new ModelAndView("admin/login");
			return mav;
		}
	}

	@RequestMapping(value = "/admin-introduction", method = RequestMethod.GET)
	public ModelAndView adminIntroduction() {
		if (session.getAttribute("userName") != null) {
			ModelAndView mav = new ModelAndView("admin/adminIntroduction");
			return mav;
		} else {
			ModelAndView mav = new ModelAndView("admin/login");
			return mav;
		}
	}

	@RequestMapping(value = "/login", method = RequestMethod.GET)
	public ModelAndView login() {
		if (session.getAttribute("userName") != null) {
			ModelAndView mav = new ModelAndView("admin/adminhome");
			return mav;
		} else {
			ModelAndView mav = new ModelAndView("admin/login");
			return mav;
		}
	}

	@RequestMapping(value = "/login", method = RequestMethod.POST)
	public ModelAndView login(@RequestParam("username") String username, @RequestParam("password") String password) {

		Map<String, Object> params = new HashMap<>();
		params.put("userName", username);
		params.put("password", password);
		return commonService.checkLogin(params, session);

	}
	
	@RequestMapping(value = "/logout", method = RequestMethod.GET)
	public ModelAndView logoutAdmin() {
		session.invalidate();
		System.out.print("a");
		ModelAndView mav = new ModelAndView("admin/login");
		return mav;

	}

	@RequestMapping(value = "/quanlygiasu", method = RequestMethod.GET)
	public ModelAndView tutorManagement() {
		if (session.getAttribute("userName") != null) {
			ModelAndView mav = new ModelAndView("admin/tutorManagement");
			return mav;
		} else {
			ModelAndView mav = new ModelAndView("admin/login");
			return mav;
		}
	}

	@RequestMapping(value = "/quanlykhoahoc", method = RequestMethod.GET)
	public ModelAndView courceManagement() {
		if (session.getAttribute("userName") != null) {
			ModelAndView mav = new ModelAndView("admin/courceManagement");
			return mav;
		} else {
			ModelAndView mav = new ModelAndView("admin/login");
			return mav;
		}
	}

	@RequestMapping(value = "/quanlyluong", method = RequestMethod.GET)
	public ModelAndView salaryManagement() {
		if (session.getAttribute("userName") != null) {
			ModelAndView mav = new ModelAndView("admin/salaryManagement");
			return mav;
		} else {
			ModelAndView mav = new ModelAndView("admin/login");
			return mav;
		}
	}

	@RequestMapping(value = "/quanlytuyendung", method = RequestMethod.GET)
	public ModelAndView recruitmentManagement() {
		if (session.getAttribute("userName") != null) {
			ModelAndView mav = new ModelAndView("admin/recruitmentManagement");
			return mav;
		} else {
			ModelAndView mav = new ModelAndView("admin/login");
			return mav;
		}
	}

	@RequestMapping(value = "/quanlyphigiasu", method = RequestMethod.GET)
	public ModelAndView feeTutorManagement() {
		if (session.getAttribute("userName") != null) {
			ModelAndView mav = new ModelAndView("admin/feeTutorManagement");
			return mav;
		} else {
			ModelAndView mav = new ModelAndView("admin/login");
			return mav;
		}

	}

	@RequestMapping(value = "/quanlylophoc", method = RequestMethod.GET)
	public ModelAndView classManagement() {
		if (session.getAttribute("userName") != null) {
			ModelAndView mav = new ModelAndView("admin/classManagement");
			return mav;
		} else {
			ModelAndView mav = new ModelAndView("admin/login");
			return mav;
		}
	}

	@RequestMapping(value = "/quanlymonhoc", method = RequestMethod.GET)
	public ModelAndView subjectManagement() {
		if (session.getAttribute("userName") != null) {
			ModelAndView mav = new ModelAndView("admin/subjectManagement");
			return mav;
		} else {
			ModelAndView mav = new ModelAndView("admin/login");
			return mav;
		}
	}

	

	@RequestMapping(value = "/quanlylienhe", method = RequestMethod.GET)
	public ModelAndView contactManagement() {
		if (session.getAttribute("userName") != null) {
			ModelAndView mav = new ModelAndView("admin/contactManagement");
			return mav;
		} else {
			ModelAndView mav = new ModelAndView("admin/login");
			return mav;
		}
	}
}