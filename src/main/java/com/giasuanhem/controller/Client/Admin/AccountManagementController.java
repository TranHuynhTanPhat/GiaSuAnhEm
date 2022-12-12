package com.giasuanhem.controller.Client.Admin;

import java.util.HashMap;
import java.util.Map;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import com.fasterxml.jackson.core.JsonProcessingException;
import com.giasuanhem.model.Models.CategoryModel;
import com.giasuanhem.service.Service.CommonService;
import com.giasuanhem.service.Service.MapperModel;

@Controller
public class AccountManagementController {
	@Autowired
	CommonService commonService;
	@Autowired
	MapperModel commonModel;
	@Autowired
	HttpSession session;

	@RequestMapping(value = "/quanlytaikhoan", method = RequestMethod.GET)
	public ModelAndView accountManagement() {
		try {
			if (session.getAttribute("userName") != null) {
//				Map<String, Object> paramsClass = new HashMap<>();
//				paramsClass.put("style", 0);
//				List<CategoryModel> listCategoryClass = commonService.getListCategory(paramsClass);
//
//				Map<String, Object> paramsDistrict = new HashMap<>();
//				paramsDistrict.put("style", 1);
//				List<CategoryModel> listCategoryDistrict = commonService.getListCategory(paramsDistrict);
//
//				session.setAttribute("listCategoryClass", listCategoryClass);
//				session.setAttribute("listCategoryDistrict", listCategoryDistrict);

				ModelAndView mav = new ModelAndView("admin/AccountManagement/accountManagement");
				return mav;
			} else {
				ModelAndView mav = new ModelAndView("admin/login");
				return mav;
			}
		} catch (Exception e) {
			ModelAndView mav = new ModelAndView("404page");
			return mav;
		}
	}

	@RequestMapping(value = "/createAccount", method = RequestMethod.GET)
	public ModelAndView addAccount() {
		try {
			if (session.getAttribute("userName") != null) {
				ModelAndView mav = new ModelAndView("admin/AccountManagement/addAccount");
				return mav;
			} else {
				ModelAndView mav = new ModelAndView("admin/login");
				return mav;
			}
		} catch (Exception e) {
			ModelAndView mav = new ModelAndView("404page");
			return mav;
		}
	}

	@RequestMapping(value = "/createAccount", method = RequestMethod.POST)
	public String addAccount(HttpSession session, @RequestParam("CategoryName") String name,
			@RequestParam("style") float style) throws JsonProcessingException {
		try {
			if (session.getAttribute("userName") != null) {
				CategoryModel model = new CategoryModel();
				model.setName(name);
				model.setStyle(style);
				commonService.createCategory(model);
				return "redirect:/quanlydanhmuc";
			} else {
				return "redirect:/login";
			}
		} catch (Exception e) {
			return "redirect:/error";
		}
	}

	@RequestMapping(value = "/updateAccount", method = RequestMethod.GET)
	public ModelAndView updateAccount(HttpSession session, @RequestParam("id") String id) {
		try {
			if (session.getAttribute("userName") != null) {

				Map<String, Object> param = new HashMap<String, Object>();
				param.put("_id", id);
				CategoryModel category = commonService.getCategory(param);

				ModelAndView mav = new ModelAndView("admin/AccountManagement/updateAccount");
				mav.addObject("category", category);
				return mav;
			} else {
				ModelAndView mav = new ModelAndView("admin/login");
				return mav;
			}
		} catch (Exception e) {
			ModelAndView mav = new ModelAndView("404page");
			return mav;
		}
	}

	@RequestMapping(value = "/updateAccount", method = RequestMethod.POST)
	public String updateAccount(HttpSession session, @RequestParam("id") String id,
			@RequestParam("CategoryName") String name, @RequestParam("style") float style) {
		try {
			if (session.getAttribute("userName") != null) {
				CategoryModel model = new CategoryModel();
				model.setName(name);
				model.setStyle(style);

				Map<String, Object> param = new HashMap<String, Object>();
				param.put("_id", id);
				commonService.updateCategory(model, param);

				return "redirect:/quanlydanhmuc";
			} else {
				return "redirect:/login";
			}
		} catch (Exception e) {
			return "redirect:/error";
		}
	}

	@RequestMapping(value = "/deleteAccount", method = RequestMethod.GET)
	public String deleteAccount(HttpSession session, @RequestParam("id") String id) {
		try {
			if (session.getAttribute("userName") != null) {
				Map<String, Object> param = new HashMap<String, Object>();
				param.put("_id", id);
				commonService.removeCategory(param);

				return "redirect:/quanlydanhmuc";
			} else {
				return "redirect:/login";
			}
		} catch (Exception e) {
			return "redirect:/error";
		}
	}
}
