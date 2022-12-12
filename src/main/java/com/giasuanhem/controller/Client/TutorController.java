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
import com.giasuanhem.service.Service.CategoryService;
import com.giasuanhem.service.Service.ClassService;
import com.giasuanhem.service.Service.CommonService;
import com.giasuanhem.service.Service.SubjectService;

@Controller
public class TutorController {
	@Autowired
	CommonService commonService;
	@Autowired
	HttpSession session;

	@RequestMapping(value = "/gia-su", method = RequestMethod.GET)
	public ModelAndView tutorPage() {
		try {

			Map<String, Object> paramsClass = new HashMap<>();
			paramsClass.put("type", 0);
			List<CategoryModel> listCategoryClass = CategoryService.getListCategory(paramsClass, session);

			Map<String, Object> paramsDistrict = new HashMap<>();
			paramsDistrict.put("type", 1);
			List<CategoryModel> listCategoryDistrict = CategoryService.getListCategory(paramsDistrict, session);

			session.setAttribute("listCategoryClass", listCategoryClass);
			session.setAttribute("listCategoryDistrict", listCategoryDistrict);

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
			if (role.equals("tutor")) {
				Map<String, Object> paramsClass = new HashMap<>();
				paramsClass.put("type", 0);
				List<CategoryModel> listCategoryClass = CategoryService.getListCategory(paramsClass, session);

				Map<String, Object> paramsDistrict = new HashMap<>();
				paramsDistrict.put("type", 1);
				List<CategoryModel> listCategoryDistrict = CategoryService.getListCategory(paramsDistrict, session);

				session.setAttribute("listCategoryClass", listCategoryClass);
				session.setAttribute("listCategoryDistrict", listCategoryDistrict);

				List<ClassModel> listClass = ClassService.getListClass(session);
				List<SubjectModel> listSubject = SubjectService.getListSubject(session);

				session.setAttribute("listClass", listClass);
				session.setAttribute("listSubject", listSubject);
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
