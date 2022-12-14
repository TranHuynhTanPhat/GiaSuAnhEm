package com.giasuanhem.controller.Client;

import java.util.HashMap;
import java.util.List;
import java.util.Map;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.ExceptionHandler;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

import com.fasterxml.jackson.core.JsonParseException;
import com.fasterxml.jackson.databind.JsonMappingException;
import com.giasuanhem.model.Models.CategoryModel;
import com.giasuanhem.model.Models.PostModel;
import com.giasuanhem.service.Service.CategoryService;
import com.giasuanhem.service.Service.PostService;

@Controller
public class HomeController {
	@Autowired
	HttpSession session;

	@RequestMapping(value = { "/trang-chu" }, method = RequestMethod.GET)
	public ModelAndView homePage() {
		try {

			ModelAndView mav = new ModelAndView("users/home/home");

			Map<String, Object> paramsClass = new HashMap<>();
			paramsClass.put("type", 1);
			List<CategoryModel> listCategoryClass = CategoryService.getListCategory(paramsClass, session);

			Map<String, Object> paramsDistrict = new HashMap<>();
			paramsDistrict.put("type", 0);
			List<CategoryModel> listCategoryDistrict = CategoryService.getListCategory(paramsDistrict, session);
			mav.addObject("listCategoryClass", listCategoryClass);
			mav.addObject("listCategoryDistrict", listCategoryDistrict);

			return mav;
		} catch (Exception e) {
			e.printStackTrace();
			return null;
			// TODO: handle exception
		}

	}

//	@RequestMapping(value = "/error", method = RequestMethod.GET)
//	

	@ExceptionHandler({ Exception.class, JsonParseException.class, JsonMappingException.class })
	@RequestMapping(value = "/error")
	public ModelAndView errrorPage() {
		ModelAndView mav = new ModelAndView("404page");
		return mav;
	}

	@RequestMapping(value = "/gioi-thieu", method = RequestMethod.GET)
	public ModelAndView instructionPage(HttpSession session) {
		try {
			Map<String, Object> paramsIntroduction = new HashMap<>();
			paramsIntroduction.put("type", 0);
			List<PostModel> listPost = PostService.getListPostWithParams(paramsIntroduction, session);

			ModelAndView mav = new ModelAndView("users/home/introduce");
			mav.addObject("listIntroductionPost", listPost);

			Map<String, Object> paramsClass = new HashMap<>();
			paramsClass.put("type", 1);
			List<CategoryModel> listCategoryClass = CategoryService.getListCategory(paramsClass, session);

			Map<String, Object> paramsDistrict = new HashMap<>();
			paramsDistrict.put("type", 0);
			List<CategoryModel> listCategoryDistrict = CategoryService.getListCategory(paramsDistrict, session);
			mav.addObject("listCategoryClass", listCategoryClass);
			mav.addObject("listCategoryDistrict", listCategoryDistrict);

			return mav;
		} catch (Exception e) {
			ModelAndView mav = new ModelAndView("404page");
			return mav;
		}
	}

	@RequestMapping(value = "/tuyen-dung", method = RequestMethod.GET)
	public ModelAndView recruitPage() {
		try {
			Map<String, Object> paramsIntroduction = new HashMap<>();
			paramsIntroduction.put("type", 1);
			List<PostModel> listRecruitment = PostService.getListPostWithParams(paramsIntroduction, session);

			ModelAndView mav = new ModelAndView("users/home/recruit");
			mav.addObject("listRecruitment", listRecruitment);

			Map<String, Object> paramsClass = new HashMap<>();
			paramsClass.put("type", 1);
			List<CategoryModel> listCategoryClass = CategoryService.getListCategory(paramsClass, session);

			Map<String, Object> paramsDistrict = new HashMap<>();
			paramsDistrict.put("type", 0);
			List<CategoryModel> listCategoryDistrict = CategoryService.getListCategory(paramsDistrict, session);
			mav.addObject("listCategoryClass", listCategoryClass);
			mav.addObject("listCategoryDistrict", listCategoryDistrict);

			return mav;
		} catch (Exception e) {
			ModelAndView mav = new ModelAndView("404page");
			return mav;
		}
	}

	@RequestMapping(value = "muc-phi-gia-su", method = RequestMethod.GET)
	public ModelAndView feeTutorPage() {
		try {
			ModelAndView mav = new ModelAndView("users/home/feeTutor");

			Map<String, Object> paramsClass = new HashMap<>();
			paramsClass.put("type", 1);
			List<CategoryModel> listCategoryClass = CategoryService.getListCategory(paramsClass, session);

			Map<String, Object> paramsDistrict = new HashMap<>();
			paramsDistrict.put("type", 0);
			List<CategoryModel> listCategoryDistrict = CategoryService.getListCategory(paramsDistrict, session);
			mav.addObject("listCategoryClass", listCategoryClass);
			mav.addObject("listCategoryDistrict", listCategoryDistrict);

			return mav;
		} catch (Exception e) {
			ModelAndView mav = new ModelAndView("404page");
			return mav;
		}
	}

	@RequestMapping(value = "/lien-he", method = RequestMethod.GET)
	public ModelAndView contactPage() {
		try {
			ModelAndView mav = new ModelAndView("users/home/contact");

			Map<String, Object> paramsClass = new HashMap<>();
			paramsClass.put("type", 1);
			List<CategoryModel> listCategoryClass = CategoryService.getListCategory(paramsClass, session);

			Map<String, Object> paramsDistrict = new HashMap<>();
			paramsDistrict.put("type", 0);
			List<CategoryModel> listCategoryDistrict = CategoryService.getListCategory(paramsDistrict, session);
			mav.addObject("listCategoryClass", listCategoryClass);
			mav.addObject("listCategoryDistrict", listCategoryDistrict);

			return mav;
		} catch (Exception e) {
			ModelAndView mav = new ModelAndView("404page");
			return mav;
		}
	}

}