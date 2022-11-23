package com.giasuanhem.controller.Client.Admin;

import java.util.List;
import java.io.IOException;
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
import com.fasterxml.jackson.annotation.JsonCreator.Mode;
import com.giasuanhem.model.Models.CategoryModel;
import com.giasuanhem.model.Models.ClassModel;
import com.giasuanhem.model.Models.NewClassModel;
import com.giasuanhem.model.Models.PostModel;
import com.giasuanhem.model.Models.SalaryModel;
import com.giasuanhem.model.Models.SubjectModel;
import com.giasuanhem.model.Models.TutorModel;
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
			List<ClassModel> listClass = commonService.getListClass();
			session.setAttribute("listClass", listClass);
			List<SubjectModel> listSubject = commonService.getListSubject();
			session.setAttribute("listSubject", listSubject);
			Map<String, Object> paramsDistrict = new HashMap<>();
			paramsDistrict.put("style", 1);
			List<CategoryModel> listCategoryDistrict = commonService.getListCategory(paramsDistrict);
			session.setAttribute("listCategoryDistrict", listCategoryDistrict);
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
			List<PostModel> listIntroductionPost = commonService.getListPostWithParams(params);
			
			ModelAndView mav = new ModelAndView("admin/adminIntroduction");
			mav.addObject("listIntroductionPost", listIntroductionPost);
			return mav;
		} else {
			ModelAndView mav = new ModelAndView("admin/login");
			return mav;
		}
	}

	@RequestMapping(value = "/login", method = RequestMethod.GET)
	public ModelAndView login(HttpSession session) {
		session.removeAttribute("username");
		session.removeAttribute("password");
		if (session.getAttribute("userName") != null) {
			ModelAndView mav = new ModelAndView("admin/adminhome");
			return mav;
		} else {
			ModelAndView mav = new ModelAndView("admin/login");
			return mav;
		}
	}

	@RequestMapping(value="/login", method=RequestMethod.POST)
	public String login(HttpSession session, @RequestParam("username") String username, @RequestParam("password") String password) {
		Map<String, Object> params = new HashMap<>();
		params.put("userName", username);
		params.put("password", password);
		try {
			commonService.checkLogin(params, session);
			return "redirect:/admin";
		} catch (Exception e) {
			e.printStackTrace();
			session.setAttribute("errorMessage", e.getMessage());
			return "admin/login";
		}
	}
	
//	@RequestMapping(value = "/login", method = RequestMethod.POST)
//	public ModelAndView login(HttpSession session, @RequestParam("username") String username,
//			@RequestParam("password") String password) {
//		Map<String, Object> params = new HashMap<>();
//		params.put("userName", username);
//		params.put("password", password);
//		try {
//			commonService.checkLogin(params, session);
//			ModelAndView mav = new ModelAndView("admin/adminhome");
//			return mav;
//		} catch (Exception e) {
//			e.printStackTrace();
//			ModelAndView mav = new ModelAndView("admin/login");
//			mav.addObject("errorMessage", "Bạn nhập sai");
//			return mav;
//		}
//
//	}

	@RequestMapping(value = "/logout", method = RequestMethod.POST)
	public String logoutAdmin(HttpSession session) {
		session.removeAttribute("userName");
		session.removeAttribute("password");
		session.invalidate();
		return "redirect:/login";

	}

	@RequestMapping(value = "/quanlytuyendung", method = RequestMethod.GET)
	public ModelAndView recruitmentManagement(HttpSession session) {
		if (session.getAttribute("userName") != null) {

			Map<String, Object> paramsRecruit = new HashMap<>();
			paramsRecruit.put("style", 0);
			List<PostModel> listRecruitPost = commonService.getListPostWithParams(paramsRecruit);
			
			ModelAndView mav = new ModelAndView("admin/recruitmentManagement");
			mav.addObject("listRecruitPost", listRecruitPost);
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