package com.giasuanhem.controller.Client.Admin;

import java.util.List;
import java.io.IOException;
import java.text.DateFormat;
import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.HashMap;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
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
import com.giasuanhem.service.ExcelExporter.CourceExcelExporter;
import com.giasuanhem.service.ExcelExporter.TutorExcelExporter;
import com.giasuanhem.service.Service.CommonService;

@Controller
public class AdminController {
	@Autowired
	CommonService commonService;
	@Autowired
	MapperModel commonModel;
	@Autowired
	HttpSession session;

	@RequestMapping(value = "/admin", method = RequestMethod.GET)
	public ModelAndView adminPage() {
		try {
			if (session.getAttribute("admin") != null) {
				List<ClassModel> listClass = commonService.getListClass();

				List<SubjectModel> listSubject = commonService.getListSubject();

//				Map<String, Object> paramsDistrict = new HashMap<>();
//				paramsDistrict.put("style", 1);
//				List<CategoryModel> listCategoryDistrict = commonService.getListCategory(paramsDistrict);
//
//				Map<String, Object> paramsClass = new HashMap<>();
//				paramsDistrict.put("style", 0);
//				List<CategoryModel> listCategoryClass = commonService.getListCategory(paramsClass);

				List<CategoryModel> listCategories = commonService.getListCategory();
//
				session.setAttribute("listSubject", listSubject);
				session.setAttribute("listClass", listClass);
//				session.setAttribute("listCategoryDistrict", listCategoryDistrict);
//				session.setAttribute("listCategoryClass", listCategoryClass);
				session.setAttribute("listCategory", listCategories);

				ModelAndView mav = new ModelAndView("admin/adminhome");
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

	@RequestMapping(value = "/admin-introduction", method = RequestMethod.GET)
	public ModelAndView adminIntroduction() {
		try {
			if (session.getAttribute("admin") != null) {
				Map<String, Object> params = new HashMap<>();
				params.put("style", 1);
				List<PostModel> listIntroductionPost = commonService.getListPostWithParams(params);

				ModelAndView mav = new ModelAndView("admin/Introduction/adminIntroduction");
				mav.addObject("listIntroductionPost", listIntroductionPost);

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

	@RequestMapping(value = "/transaction", method = RequestMethod.GET)
	public ModelAndView adminTransaction() {
		try {
			if (session.getAttribute("admin") != null) {

//				Map<String, Object> params = new HashMap<>();
//				params.put("style", 1);
//				List<PostModel> listIntroductionPost = commonService.getListPostWithParams(params);

				ModelAndView mav = new ModelAndView("admin/transactionHistory");
//				mav.addObject("listIntroductionPost", listIntroductionPost);

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

	@RequestMapping(value = "/uploadIntroduction", method = RequestMethod.POST)
	public String uploadIntroduction(@RequestParam("id") String id, @RequestParam("title") String title,
			@RequestParam("content") String content) {
		try {
			if (session.getAttribute("admin") != null) {
				PostModel model = new PostModel();
				model.setTitle(title);
				model.setBody(content);
				model.setstyle(1);

				Map<String, Object> param = new HashMap<String, Object>();
				param.put("_id", id);
				commonService.updatePost(model, param);

				return "redirect:/admin-introduction";
			} else {
				return "redirect:/login";
			}
		} catch (Exception e) {
			return "redrect:/error";
		}
	}

	@RequestMapping(value = "/login", method = RequestMethod.GET)
	public ModelAndView login() {
		try {
			session.removeAttribute("admin");
			ModelAndView mav = new ModelAndView("admin/login");
			return mav;
		} catch (Exception e) {
			ModelAndView mav = new ModelAndView("404page");
			return mav;
		}
	}

	@RequestMapping(value = "/login", method = RequestMethod.POST)
	public String login(@RequestParam("username") String username, @RequestParam("password") String password) {
		try {
			Map<String, Object> params = new HashMap<>();
			params.put("username", username);
			params.put("password", password);
			try {
				commonService.checkLogin(params, session);
				return "redirect:/admin";
			} catch (Exception e) {
				e.printStackTrace();
//				session.setAttribute("errorMessage", "Username hoặc Password không đúng!");
				return "redirect:/login";
			}
		} catch (Exception e) {
			return "redirect:/error";
		}
	}

	@RequestMapping(value = "/logout", method = RequestMethod.GET)
	public String logoutAdmin() {
		try {
			session.removeAttribute("errorMessage");
			session.removeAttribute("admin");
			return "redirect:/login";
		} catch (Exception e) {
			return "redirect:error";
		}
	}

}