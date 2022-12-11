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

import com.fasterxml.jackson.core.JsonProcessingException;
import com.giasuanhem.model.Models.CategoryModel;
import com.giasuanhem.service.Service.CommonService;
import com.giasuanhem.service.Service.MapperModel;

@Controller
public class CatrgoryManagementController {
	@Autowired
	CommonService commonService;
	@Autowired
	MapperModel commonModel;
	@Autowired
	HttpSession session;

	@RequestMapping(value = "/quanlydanhmuc", method = RequestMethod.GET)
	public ModelAndView categoryManagement() {
		try {
			if (session.getAttribute("admin") != null) {
				Map<String, Object> paramsClass = new HashMap<>();
				paramsClass.put("style", 0);
				List<CategoryModel> listCategoryClass = commonService.getListCategory(paramsClass);

				Map<String, Object> paramsDistrict = new HashMap<>();
				paramsDistrict.put("style", 1);
				List<CategoryModel> listCategoryDistrict = commonService.getListCategory(paramsDistrict);

				session.setAttribute("listCategoryClass", listCategoryClass);
				session.setAttribute("listCategoryDistrict", listCategoryDistrict);

				ModelAndView mav = new ModelAndView("admin/CategoryManagement/categoryManagement");
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

	@RequestMapping(value = "/createCategory", method = RequestMethod.GET)
	public ModelAndView addCategory() {
		try {
			if (session.getAttribute("admin") != null) {
				ModelAndView mav = new ModelAndView("admin/CategoryManagement/addCategory");
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

	@RequestMapping(value = "/createCategory", method = RequestMethod.POST)
	public String addCategory(HttpSession session, @RequestParam("CategoryName") String name,
			@RequestParam("style") int tyle) throws JsonProcessingException {
		try {
			if (session.getAttribute("admin") != null) {
				CategoryModel model = new CategoryModel();
				model.setName(name);
				model.setTyle(tyle);
				commonService.createCategory(model);
				return "redirect:/quanlydanhmuc";
			} else {
				return "redirect:/login";
			}
		} catch (Exception e) {
			return "redirect:/error";
		}
	}

	@RequestMapping(value = "/updateCategory", method = RequestMethod.GET)
	public ModelAndView updateCategory(HttpSession session, @RequestParam("id") String id) {
		try {
			if (session.getAttribute("admin") != null) {

				Map<String, Object> param = new HashMap<String, Object>();
				param.put("_id", id);
				CategoryModel category = commonService.getCategory(param);

				ModelAndView mav = new ModelAndView("admin/CategoryManagement/updateCategory");
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

	@RequestMapping(value = "/updateCategory", method = RequestMethod.POST)
	public String updateCategory(HttpSession session, @RequestParam("id") String id,
			@RequestParam("CategoryName") String name, @RequestParam("style") int tyle) {
		try {
			if (session.getAttribute("admin") != null) {
				CategoryModel model = new CategoryModel();
				model.setName(name);
				model.setTyle(tyle);

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

	@RequestMapping(value = "/deleteCategory", method = RequestMethod.GET)
	public String deleteCategoryClass(HttpSession session, @RequestParam("id") String id) {
		try {
			if (session.getAttribute("admin") != null) {
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
