package com.giasuanhem.controller.Admin;

import java.io.IOException;
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

import com.fasterxml.jackson.core.JsonParseException;
import com.fasterxml.jackson.databind.JsonMappingException;
import com.giasuanhem.model.Models.CategoryModel;
import com.giasuanhem.service.Mapper.MapperModel;
import com.giasuanhem.service.Service.CategoryService;
import com.giasuanhem.service.Service.CommonService;

@Controller
public class CatrgoryManagementController {
	@Autowired
	CommonService commonService;
	@Autowired
	MapperModel commonModel;
	@Autowired
	HttpSession session;

	@RequestMapping(value = "/quanlydanhmuc", method = RequestMethod.GET)
	public ModelAndView categoryManagement() throws JsonParseException, JsonMappingException, IOException {

		if (session.getAttribute("admin") != null) {
			Map<String, Object> paramsClass = new HashMap<>();
			paramsClass.put("type", 0);
			List<CategoryModel> listCategoryClass = CategoryService.getListCategory(paramsClass, session);

			Map<String, Object> paramsDistrict = new HashMap<>();
			paramsDistrict.put("type", 1);
			List<CategoryModel> listCategoryDistrict = CategoryService.getListCategory(paramsDistrict, session);

			ModelAndView mav = new ModelAndView("admin/CategoryManagement/categoryManagement");
			mav.addObject("listCategoryClass", listCategoryClass);
			mav.addObject("listCategoryDistrict", listCategoryDistrict);
			return mav;
		} else {
			ModelAndView mav = new ModelAndView("admin/login");
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
			@RequestParam("type") int type) throws IOException {

		if (session.getAttribute("admin") != null) {
			CategoryModel model = new CategoryModel();
			model.setName(name);
			model.setType(type);
			CategoryService.createCategory(model, session);
			return "redirect:/quanlydanhmuc";
		} else {
			return "redirect:/login";
		}
	}

	@RequestMapping(value = "/updateCategory", method = RequestMethod.GET)
	public ModelAndView updateCategory(HttpSession session, @RequestParam("id") String id)
			throws JsonParseException, JsonMappingException, IOException {

		if (session.getAttribute("admin") != null) {

			Map<String, Object> param = new HashMap<String, Object>();
			param.put("id", id);
			CategoryModel category = CategoryService.getCategory(param, session);

			ModelAndView mav = new ModelAndView("admin/CategoryManagement/updateCategory");
			mav.addObject("category", category);
			return mav;
		} else {
			ModelAndView mav = new ModelAndView("admin/login");
			return mav;
		}

	}

	@RequestMapping(value = "/updateCategory", method = RequestMethod.POST)
	public String updateCategory(HttpSession session, @RequestParam("id") int id,
			@RequestParam("CategoryName") String name, @RequestParam("type") int type,
			@RequestParam("created") String created) throws JsonParseException, JsonMappingException, IOException {

		if (session.getAttribute("admin") != null) {
			CategoryModel model = new CategoryModel();
			model.setName(name);
			model.setType(type);
			model.setCreated_at(created);
			model.setId(id);

			CategoryService.updateCategory(model, session);

			return "redirect:/quanlydanhmuc";
		} else {
			return "redirect:/login";
		}

	}

	@RequestMapping(value = "/deleteCategory", method = RequestMethod.GET)
	public String deleteCategoryClass(HttpSession session, @RequestParam("id") String id)
			throws JsonParseException, JsonMappingException, IOException {

		if (session.getAttribute("admin") != null) {
			Map<String, Object> param = new HashMap<String, Object>();
			param.put("id", id);
			CategoryService.removeCategory(param, session);

			return "redirect:/quanlydanhmuc";
		} else {
			return "redirect:/login";
		}

	}
}
