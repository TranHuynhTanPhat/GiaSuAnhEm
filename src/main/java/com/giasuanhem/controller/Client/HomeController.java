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

import com.giasuanhem.model.Models.CategoryModel;
import com.giasuanhem.model.Models.ClassModel;
import com.giasuanhem.model.Models.PostModel;
import com.giasuanhem.model.Models.SubjectModel;
import com.giasuanhem.service.Email.EmailService;
import com.giasuanhem.service.Service.CommonService;

@Controller
public class HomeController {
	@Autowired
	private CommonService commonService;
	@Autowired
	HttpSession session;

	@RequestMapping(value = { "/trang-chu" }, method = RequestMethod.GET)
	public ModelAndView homePage() {
		try {

			Map<String, Object> paramsClass = new HashMap<>();
			paramsClass.put("style", 0);
			List<CategoryModel> listCategoryClass = commonService.getListCategory(paramsClass);

			Map<String, Object> paramsDistrict = new HashMap<>();
			paramsDistrict.put("style", 1);
			List<CategoryModel> listCategoryDistrict = commonService.getListCategory(paramsDistrict);

			List<ClassModel> listClass = commonService.getListClass();
			List<SubjectModel> listSubject = commonService.getListSubject();
//
//		session.removeAttribute("listCategoryClass");
//		session.removeAttribute("listCategoryDistrict");
//		session.removeAttribute("listClass");
//		session.removeAttribute("listSubject");

			session.setAttribute("listCategoryClass", listCategoryClass);
			session.setAttribute("listCategoryDistrict", listCategoryDistrict);
			session.setAttribute("listClass", listClass);
			session.setAttribute("listSubject", listSubject);

			ModelAndView mav = new ModelAndView("users/home/home");
			return mav;
		} catch (Exception e) {
			ModelAndView mav = new ModelAndView("404page");
			return mav;
		}
	}

	@RequestMapping(value = "/error", method = RequestMethod.GET)
	public ModelAndView errrorPage() {
		ModelAndView mav = new ModelAndView("404page");
		return mav;
	}

	@ExceptionHandler({ Exception.class })
	public String errorPage() {
		return "redirect:/error";
	}

	@RequestMapping(value = "/gioi-thieu", method = RequestMethod.GET)
	public ModelAndView instructionPage(HttpSession session) {
		try {
			Map<String, Object> paramsIntroduction = new HashMap<>();
			paramsIntroduction.put("style", 1);
			List<PostModel> listPost = commonService.getListPostWithParams(paramsIntroduction);

			ModelAndView mav = new ModelAndView("users/home/introduce");
			mav.addObject("listIntroductionPost", listPost);
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
			paramsIntroduction.put("style", 0);
			List<PostModel> listRecruitment = commonService.getListPostWithParams(paramsIntroduction);

			ModelAndView mav = new ModelAndView("users/home/recruit");
			mav.addObject("listRecruitment", listRecruitment);
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
			return mav;
		} catch (Exception e) {
			ModelAndView mav = new ModelAndView("404page");
			return mav;
		}
	}

	@RequestMapping(value = "/dang-nhap", method = RequestMethod.GET)
	public ModelAndView loginPage() {
		try {
			ModelAndView mav = new ModelAndView("users/home/loginUser");
			return mav;
		} catch (Exception e) {
			ModelAndView mav = new ModelAndView("404page");
			return mav;
		}
	}

	@RequestMapping(value = "/dang-ky", method = RequestMethod.GET)
	public ModelAndView registerPage() {
		try {
			ModelAndView mav = new ModelAndView("users/home/register");
			EmailService.sendEmail("20110695@student.hcmute.edu.vn", "Verify", EmailService.formOTP("123456"));
			return mav;
		} catch (Exception e) {
			ModelAndView mav = new ModelAndView("404page");
			return mav;
		}
	}

	@RequestMapping(value = "/invoice", method = RequestMethod.GET)
	public ModelAndView invoicePage() {
		try {
			ModelAndView mav = new ModelAndView("users/formInvoice");

			return mav;
		} catch (Exception e) {
			ModelAndView mav = new ModelAndView("404page");
			return mav;
		}
	}
}