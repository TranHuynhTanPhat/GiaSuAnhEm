package com.giasuanhem.controller.Client.Admin;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

import com.giasuanhem.model.Models.CategoryModel;
import com.giasuanhem.service.Service.CommonService;
import com.giasuanhem.service.Service.MapperModel;

@Controller
public class CatrgoryManagementController {
	@Autowired
	CommonService commonService;
	@Autowired
	MapperModel commonModel;

	@RequestMapping(value = "/quanlydanhmuc", method = RequestMethod.GET)
	public ModelAndView categoryManagement(HttpSession session) {
		if (session.getAttribute("userName") != null) {
			
			ModelAndView mav = new ModelAndView("admin/categoryManagement");
			return mav;
		} else {
			ModelAndView mav = new ModelAndView("admin/login");
			return mav;
		}
	}

	@RequestMapping(value = "/addcategory", method = RequestMethod.POST)
	public ModelAndView addCategory(HttpSession session) {
		if (session.getAttribute("userName") != null) {
			ModelAndView mav = new ModelAndView("admin/addCategory");
			return mav;
		} else {
			ModelAndView mav = new ModelAndView("admin/login");
			return mav;
		}
	}

	@RequestMapping(value = "/updatecategory", method = RequestMethod.POST)
	public ModelAndView updateCategory(HttpSession session) {
		if (session.getAttribute("userName") != null) {
			ModelAndView mav = new ModelAndView("admin/updateCategory");
			return mav;
		} else {
			ModelAndView mav = new ModelAndView("admin/login");
			return mav;
		}
	}

	@RequestMapping(value = "/addcategoryclass", method = RequestMethod.POST)
	public ModelAndView addCategoryClass(HttpSession session) {
		if (session.getAttribute("userName") != null) {
			ModelAndView mav = new ModelAndView("admin/addCategoryClass");
			return mav;
		} else {
			ModelAndView mav = new ModelAndView("admin/login");
			return mav;
		}
	}

	@RequestMapping(value = "/updatecategoryclass", method = RequestMethod.POST)
	public ModelAndView updateCategoryClass(HttpSession session) {
		if (session.getAttribute("userName") != null) {
			ModelAndView mav = new ModelAndView("admin/updateCategoryClass");
			return mav;
		} else {
			ModelAndView mav = new ModelAndView("admin/login");
			return mav;
		}
	}
}
