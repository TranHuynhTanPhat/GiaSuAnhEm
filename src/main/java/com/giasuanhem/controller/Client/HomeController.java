package com.giasuanhem.controller.Client;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

import com.giasuanhem.model.Models.CategoryModel;
import com.giasuanhem.model.Models.NewClassModel;
import com.giasuanhem.model.Models.PostModel;
import com.giasuanhem.service.Service.CommonService;

@Controller
public class HomeController {
	@Autowired
	private CommonService commonService;
	

	@RequestMapping(value = "/trang-chu", method = RequestMethod.GET)
	public ModelAndView homePage() {

		Map<String, Object> paramsClass = new HashMap<>();
		paramsClass.put("style", 0);
		List<CategoryModel> listClass = commonService.getListCategory(paramsClass);

		Map<String, Object> paramsDistrict = new HashMap<>();
		paramsDistrict.put("style", 1);
		List<CategoryModel> listDistrict = commonService.getListCategory(paramsDistrict);

		session.setAttribute("listCategoryClass", listClass);
		session.setAttribute("listCategoryDistrict", listDistrict);
		ModelAndView mav = new ModelAndView("home/home");
//		mav.addObject("listCategoryClass", listClass);
//		mav.addObject("listCategoryDistrict", listDistrict);
		return mav;
	}

	@RequestMapping(value = "/springmvc", method = RequestMethod.GET)
	public ModelAndView springMVCPage() {
		ModelAndView mav = new ModelAndView("springmvc");
		return mav;
	}

	@RequestMapping(value = "/gioi-thieu", method = RequestMethod.GET)
	public ModelAndView instructionPage() {
		Map<String, Object> paramsClass = new HashMap<>();
		paramsClass.put("style", 0);
		List<CategoryModel> listClass = commonService.getListCategory(paramsClass);

		Map<String, Object> paramsDistrict = new HashMap<>();
		paramsDistrict.put("style", 1);
		List<CategoryModel> listDistrict = commonService.getListCategory(paramsDistrict);

		Map<String, Object> paramsIntroduction = new HashMap<>();
		paramsIntroduction.put("style", 0);
		List<PostModel> listPost = commonService.getListPostWithParams(paramsIntroduction);

		ModelAndView mav = new ModelAndView("home/introduce");
		mav.addObject("listCategoryClass", listClass);
		mav.addObject("listPost", listPost);
		mav.addObject("listCategoryDistrict", listDistrict);
		return mav;
	}

	@RequestMapping(value = "/tuyen-dung", method = RequestMethod.GET)
	public ModelAndView recruitPage() {
		Map<String, Object> paramsClass = new HashMap<>();
		paramsClass.put("style", 0);
		List<CategoryModel> listClass = commonService.getListCategory(paramsClass);

		Map<String, Object> paramsDistrict = new HashMap<>();
		paramsDistrict.put("style", 1);
		List<CategoryModel> listDistrict = commonService.getListCategory(paramsDistrict);

		ModelAndView mav = new ModelAndView("home/recruit");
		mav.addObject("listCategoryClass", listClass);
		mav.addObject("listCategoryDistrict", listDistrict);
		return mav;
	}

	@RequestMapping(value = "muc-phi-gia-su", method = RequestMethod.GET)
	public ModelAndView feeTutorPage() {
		Map<String, Object> paramsClass = new HashMap<>();
		paramsClass.put("style", 0);
		List<CategoryModel> listClass = commonService.getListCategory(paramsClass);

		Map<String, Object> paramsDistrict = new HashMap<>();
		paramsDistrict.put("style", 1);
		List<CategoryModel> listDistrict = commonService.getListCategory(paramsDistrict);

		ModelAndView mav = new ModelAndView("home/feeTutor");
		mav.addObject("listCategoryClass", listClass);
		mav.addObject("listCategoryDistrict", listDistrict);
		return mav;
	}

	@RequestMapping(value = "/lien-he", method = RequestMethod.GET)
	public ModelAndView contactPage() {
		Map<String, Object> paramsClass = new HashMap<>();
		paramsClass.put("style", 0);
		List<CategoryModel> listClass = commonService.getListCategory(paramsClass);

		Map<String, Object> paramsDistrict = new HashMap<>();
		paramsDistrict.put("style", 1);
		List<CategoryModel> listDistrict = commonService.getListCategory(paramsDistrict);

		ModelAndView mav = new ModelAndView("home/contact");
		mav.addObject("listCategoryClass", listClass);
		mav.addObject("listCategoryDistrict", listDistrict);
		return mav;
	}
}