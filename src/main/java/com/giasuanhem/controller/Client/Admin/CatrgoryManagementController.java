package com.giasuanhem.controller.Client.Admin;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
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
	
	@RequestMapping(value="/updateCategory", method=RequestMethod.GET)
	public ModelAndView updateCategory(HttpSession session, @RequestParam("id") String id) {
		if (session.getAttribute("userName") != null) {
			System.out.println(id);
			ModelAndView mav = new ModelAndView("admin/updateCategory");
			return mav;
		} else {
			ModelAndView mav = new ModelAndView("admin/login");
			return mav;
		}
	}

	@RequestMapping(value = "/updateCategory", method = RequestMethod.POST)
	public ModelAndView updateCategory(HttpSession session) {
		if (session.getAttribute("userName") != null) {
			ModelAndView mav = new ModelAndView("admin/updateCategory");
			return mav;
		} else {
			ModelAndView mav = new ModelAndView("admin/login");
			return mav;
		}
	}

	@RequestMapping(value = "/addCategoryClass", method = RequestMethod.POST)
	public ModelAndView addCategoryClass(HttpSession session) {
		if (session.getAttribute("userName") != null) {
			ModelAndView mav = new ModelAndView("admin/addCategoryClass");
			return mav;
		} else {
			ModelAndView mav = new ModelAndView("admin/login");
			return mav;
		}
	}
	
	@RequestMapping(value = "/updateCategoryClass", method = RequestMethod.GET)
	public ModelAndView updateCategoryClass(HttpSession session, @RequestParam("id") String id) {
		if (session.getAttribute("userName") != null) {
			System.out.println(id);
			ModelAndView mav = new ModelAndView("admin/updateCategoryClass");
			return mav;
		} else {
			ModelAndView mav = new ModelAndView("admin/login");
			return mav;
		}
	}

	@RequestMapping(value = "/updateCategoryClass", method = RequestMethod.POST)
	public ModelAndView updateCategoryClass(HttpSession session) {
		if (session.getAttribute("userName") != null) {
			ModelAndView mav = new ModelAndView("admin/updateCategoryClass");
			return mav;
		} else {
			ModelAndView mav = new ModelAndView("admin/login");
			return mav;
		}
	}
	
	@RequestMapping(value="/deleteCategory", method=RequestMethod.GET)
	public String deleteCategoryClass(HttpSession session, @RequestParam("id") String id) {
		if (session.getAttribute("userName") != null) {
			return "redirect:/quanlydanhmuc";
		} else {
			return "redirect:/login";
		}
	}
}
