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

			Map<String, Object> params = new HashMap<>();
			params.put("style", 0);
			List<PostModel> listIntroductionPost = commonService.getListPostWithParams(params);

			Map<String, Object> paramsRecruit = new HashMap<>();
			params.put("style", 0);
			List<PostModel> listRecruitPost = commonService.getListPostWithParams(paramsRecruit);
			
			Map<String, Object> paramsClass = new HashMap<>();
			paramsClass.put("style", 0);
			List<CategoryModel> listCategoryClass = commonService.getListCategory(paramsClass);

			Map<String, Object> paramsDistrict = new HashMap<>();
			paramsDistrict.put("style", 1);
			List<CategoryModel> listCategoryDistrict = commonService.getListCategory(paramsDistrict);
			
			List<ClassModel> listClass = commonService.getListClass();
			
			List<NewClassModel> listNewCource = commonService.getListNewClass();
			List<SubjectModel> listSubject = commonService.getListSubject();
			
			Map<String, Object> paramST = new HashMap<>();
			paramST.put("style", 0);
			List<SalaryModel> listSST = commonService.getListSalary(paramST);

			Map<String, Object> paramTE = new HashMap<>();
			paramTE.put("style", 1);
			List<SalaryModel> listSTE = commonService.getListSalary(paramTE);
			
			List<TutorModel> listTutor = commonService.getListTutor();
			
			session.removeAttribute("listIntroductionPost");
			session.removeAttribute("listRecruitPost");
			session.removeAttribute("listCategoryClass");
			session.removeAttribute("listCategoryDistrict");
			session.removeAttribute("listClass");
			session.removeAttribute("listNewCource");
			session.removeAttribute("listSubject");
			session.removeAttribute("listSST");
			session.removeAttribute("listSTE");
			session.removeAttribute("listTutor");
			
			

			session.setAttribute("listIntroductionPost", listIntroductionPost);
			session.setAttribute("listRecruitPost", listRecruitPost);
			session.setAttribute("listCategoryClass", listCategoryClass);
			session.setAttribute("listCategoryDistrict", listCategoryDistrict);
			session.setAttribute("listClass", listClass);
			session.setAttribute("listNewCource", listNewCource);
			session.setAttribute("listSubject", listSubject);
			session.setAttribute("listSST", listSST);
			session.setAttribute("listSTE", listSTE);
			session.setAttribute("listTutor", listTutor);

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

			ModelAndView mav = new ModelAndView("admin/adminIntroduction");
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
		return "redirect:/login";

	}

	@RequestMapping(value = "/quanlytuyendung", method = RequestMethod.GET)
	public ModelAndView recruitmentManagement(HttpSession session) {
		if (session.getAttribute("userName") != null) {

			ModelAndView mav = new ModelAndView("admin/recruitmentManagement");
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