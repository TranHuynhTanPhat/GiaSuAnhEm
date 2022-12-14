package com.giasuanhem.controller.Client;

import java.io.IOException;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

import com.fasterxml.jackson.core.JsonParseException;
import com.fasterxml.jackson.databind.JsonMappingException;
import com.giasuanhem.model.Models.CategoryModel;
import com.giasuanhem.model.Models.ClassModel;
import com.giasuanhem.model.Models.NewClassModel;
import com.giasuanhem.model.Models.SubjectModel;
import com.giasuanhem.service.Service.CategoryService;
import com.giasuanhem.service.Service.ClassService;
import com.giasuanhem.service.Service.CourceService;
import com.giasuanhem.service.Service.SubjectService;

@Controller
public class NewClassController {
	@Autowired
	HttpSession session;

	@RequestMapping(value = "/lop-moi", method = RequestMethod.GET)
	public ModelAndView newClassPage() throws JsonParseException, JsonMappingException, IOException {

		Map<String, Object> paramsClass = new HashMap<>();
		paramsClass.put("type", 0);
		List<CategoryModel> listCategoryClass = CategoryService.getListCategory(paramsClass, session);

		Map<String, Object> paramsDistrict = new HashMap<>();
		paramsDistrict.put("type", 1);
		List<CategoryModel> listCategoryDistrict = CategoryService.getListCategory(paramsDistrict, session);

		session.setAttribute("listCategoryClass", listCategoryClass);
		session.setAttribute("listCategoryDistrict", listCategoryDistrict);

		List<NewClassModel> listNewClass = CourceService.getListNewClass(session);

		ModelAndView mav = new ModelAndView("users/newclass/newclass");
		mav.addObject("listNewClass", listNewClass);
		return mav;

	}

	@RequestMapping(value = "/dang-ky-mo-lop", method = RequestMethod.GET)
	public ModelAndView registerNewClassPage() throws JsonParseException, JsonMappingException, IOException {

		String role = String.valueOf(session.getAttribute("role"));
		if (role.equals("parent")) {
			Map<String, Object> paramsClass = new HashMap<>();
			paramsClass.put("type", 0);
			List<CategoryModel> listCategoryClass = CategoryService.getListCategory(paramsClass, session);

			Map<String, Object> paramsDistrict = new HashMap<>();
			paramsDistrict.put("type", 1);
			List<CategoryModel> listCategoryDistrict = CategoryService.getListCategory(paramsDistrict, session);

			List<ClassModel> listClass = ClassService.getListClass(session);
			List<SubjectModel> listSubject = SubjectService.getListSubject(session);

			ModelAndView mav = new ModelAndView("users/newclass/addnewclass");
			mav.addObject("listCategoryClass", listCategoryClass);
			mav.addObject("listCategoryDistrict", listCategoryDistrict);
			mav.addObject("listClass", listClass);
			mav.addObject("listSubject", listSubject);
			return mav;
		} else {
			return new ModelAndView("404page");
		}

	}
}
