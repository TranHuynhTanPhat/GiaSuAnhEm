package com.giasuanhem.controller.Client.Admin;

import java.util.List;
import java.util.HashMap;
import java.util.Map;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import com.giasuanhem.service.Service.MapperModel;
import com.giasuanhem.model.Models.PostModel;
import com.giasuanhem.service.Service.CommonService;

@Controller
public class AdminController {
	@Autowired
	CommonService commonService;
	@Autowired
	MapperModel commonModel;

	@RequestMapping(value = "/admin", method = RequestMethod.GET)
	public ModelAndView adminPage(HttpSession session) {
		if (session.getAttribute("userName") != null) {
			ModelAndView mav = new ModelAndView("admin/adminhome");
			return mav;
		} else {
			ModelAndView mav = new ModelAndView("admin/login");
			return mav;
		}
	}

	@RequestMapping(value = "/admin-introduction", method = RequestMethod.GET)
	public ModelAndView adminIntroduction(HttpSession session) {

		if (session.getAttribute("userName") != null) {
			Map<String, Object> params = new HashMap<>();
			params.put("style", 0);
			List<PostModel> listPost = commonService.getListPostWithParams(params);
			ModelAndView mav = new ModelAndView("admin/adminIntroduction");
			mav.addObject("listPost", listPost);
			return mav;
		} else {
			ModelAndView mav = new ModelAndView("admin/login");
			return mav;
		}
	}

	@RequestMapping(value = "/login", method = RequestMethod.GET)
	public ModelAndView login(HttpSession session) {
		if (session.getAttribute("userName") != null) {
			ModelAndView mav = new ModelAndView("admin/adminhome");
			return mav;
		} else {
			ModelAndView mav = new ModelAndView("admin/login");
			return mav;
		}
	}

	@RequestMapping(value = "/login", method = RequestMethod.POST)
	public ModelAndView login(HttpSession session, @RequestParam("username") String username,
			@RequestParam("password") String password) {

		Map<String, Object> params = new HashMap<>();
		params.put("userName", username);
		params.put("password", password);
		return commonService.checkLogin(params, session);

	}

	@RequestMapping(value = "/logout", method = RequestMethod.POST)
	public ModelAndView logoutAdmin(HttpSession session) {
		session.invalidate();
		ModelAndView mav = new ModelAndView("admin/login");
		return mav;

	}

	@RequestMapping(value = "/quanlytuyendung", method = RequestMethod.GET)
	public ModelAndView recruitmentManagement(HttpSession session) {
		if (session.getAttribute("userName") != null) {
			Map<String, Object> params = new HashMap<>();
			params.put("style", 0);
			List<PostModel> listPost = commonService.getListPostWithParams(params);
			ModelAndView mav = new ModelAndView("admin/recruitmentManagement");
			mav.addObject("listPost", listPost);
			return mav;
		} else {
			ModelAndView mav = new ModelAndView("admin/login");
			return mav;
		}
	}

	@RequestMapping(value = "/quanlyphigiasu", method = RequestMethod.GET)
	public ModelAndView feeTutorManagement(HttpSession session) {
		if (session.getAttribute("userName") != null) {
			ModelAndView mav = new ModelAndView("admin/feeTutorManagement");
			return mav;
		} else {
			ModelAndView mav = new ModelAndView("admin/login");
			return mav;
		}

	}

	@RequestMapping(value = "/quanlylienhe", method = RequestMethod.GET)
	public ModelAndView contactManagement(HttpSession session) {
		if (session.getAttribute("userName") != null) {
			ModelAndView mav = new ModelAndView("admin/contactManagement");
			return mav;
		} else {
			ModelAndView mav = new ModelAndView("admin/login");
			return mav;
		}
	}
}