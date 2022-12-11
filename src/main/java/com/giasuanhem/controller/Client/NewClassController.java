package com.giasuanhem.controller.Client;

import java.util.ArrayList;
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
import com.giasuanhem.model.Models.NewClassModel;
import com.giasuanhem.model.Models.SubjectModel;
import com.giasuanhem.service.Service.CommonService;

@Controller
public class NewClassController {
	@Autowired
	CommonService commonService;
	@Autowired
	HttpSession session;

	@RequestMapping(value = "/lop-moi", method = RequestMethod.GET)
	public ModelAndView newClassPage() {
		try {
			List<NewClassModel> listNewClass = commonService.getListNewClass();

			ModelAndView mav = new ModelAndView("users/newclass/newclass");
			mav.addObject("listNewClass", listNewClass);
			return mav;
		} catch (Exception e) {
			ModelAndView mav = new ModelAndView("404page");
			return mav;
		}
	}

	@RequestMapping(value = "/dang-ky-mo-lop", method = RequestMethod.GET)
	public ModelAndView registerNewClassPage() {
		try {
			String role = String.valueOf(session.getAttribute("role"));
			System.out.println(role);
			if (role == "parent") {
				Map<String, Object> paramsClass = new HashMap<>();
				paramsClass.put("style", 0);
				List<CategoryModel> listCategoryClass = commonService.getListCategory(paramsClass);

				Map<String, Object> paramsDistrict = new HashMap<>();
				paramsDistrict.put("style", 1);
				List<CategoryModel> listCategoryDistrict = commonService.getListCategory(paramsDistrict);

				session.setAttribute("listCategoryClass", listCategoryClass);
				session.setAttribute("listCategoryDistrict", listCategoryDistrict);

				List<ClassModel> listClass = commonService.getListClass();
				List<SubjectModel> listSubject = commonService.getListSubject();

				session.setAttribute("listClass", listClass);
				session.setAttribute("listSubject", listSubject);

				ModelAndView mav = new ModelAndView("users/newclass/addnewclass");
				return mav;
			} else {
				return new ModelAndView("404page");
			}
		} catch (Exception e) {
			ModelAndView mav = new ModelAndView("404page");
			return mav;
		}
	}
}
