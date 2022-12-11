package com.giasuanhem.controller.Client;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

import com.giasuanhem.model.Models.CategoryModel;
import com.giasuanhem.model.Models.ClassModel;
import com.giasuanhem.model.Models.PostModel;
import com.giasuanhem.model.Models.SubjectModel;
import com.giasuanhem.service.Service.CommonService;

@Controller
public class TutorController {
	@Autowired
	CommonService commonService;
	@Autowired
	HttpSession session;

	@RequestMapping(value = "/gia-su", method = RequestMethod.GET)
	public ModelAndView tutorPage() {
		try {
			ModelAndView mav = new ModelAndView("users/tutor/tutor");
			return mav;
		} catch (Exception e) {
			ModelAndView mav = new ModelAndView("404page");
			return mav;
		}
	}

	@RequestMapping(value = "/them-gia-su", method = RequestMethod.GET)
	public ModelAndView addTutorPage() {
		try {
			String role = String.valueOf(session.getAttribute("role"));
			System.out.println(role);
			if (role == "tutor") {
				ModelAndView mav = new ModelAndView("users/tutor/addTutor");
				return mav;
			} else {
				return new ModelAndView("users/home/loginUser");
			}
		} catch (Exception e) {
			ModelAndView mav = new ModelAndView("404page");
			return mav;
		}
	}

	@RequestMapping(value = "/quy-trinh-nhan-lop", method = RequestMethod.GET)
	public ModelAndView proccessClass() {
		try {
			if (session.getAttribute("role") != null) {
				ModelAndView mav = new ModelAndView("users/tutor/quyTrinhNhanLop");
				return mav;
			} else {
				return new ModelAndView("\"404page\"");
			}
		} catch (Exception e) {
			ModelAndView mav = new ModelAndView("404page");
			return mav;
		}
	}
}
