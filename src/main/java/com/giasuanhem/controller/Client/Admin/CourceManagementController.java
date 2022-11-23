package com.giasuanhem.controller.Client.Admin;

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

import com.giasuanhem.model.Models.CategoryModel;
import com.giasuanhem.model.Models.ClassModel;
import com.giasuanhem.model.Models.NewClassModel;
import com.giasuanhem.model.Models.SubjectModel;
import com.giasuanhem.service.Service.CommonService;
import com.giasuanhem.service.Service.MapperModel;

@Controller
public class CourceManagementController {

	@Autowired
	CommonService commonService;
	@Autowired
	MapperModel commonModel;

	@RequestMapping(value = "/quanlykhoahoc", method = RequestMethod.GET)
	public ModelAndView courceManagement(HttpSession session) {

		if (session.getAttribute("userName") != null) {

			List<NewClassModel> listNewCource = commonService.getListNewClass();
			ModelAndView mav = new ModelAndView("admin/courceManagement");

			session.removeAttribute("listNewCource");
			return mav;
		} else {
			ModelAndView mav = new ModelAndView("admin/login");
			return mav;
		}
	}

	@RequestMapping(value = "/quanlykhoahoc", params = "delete", method = RequestMethod.POST)
	public ModelAndView remove_courceManagement(HttpSession session, @RequestParam("remove_cource") String[] ids) {
		try {
			Map<String, Object> params = new HashMap<>();
			for (String id : ids) {
				params.put("_id", id);
				commonService.removeCource(params);
			}
			List<NewClassModel> list = commonService.getListNewClass();
			ModelAndView mav = new ModelAndView("admin/courceManagement");
			session.setAttribute("listNewCource", list);
			return mav;
		} catch (Exception e) {
			e.printStackTrace();
			List<NewClassModel> list = commonService.getListNewClass();
			ModelAndView mav = new ModelAndView("admin/courceManagement");
			session.setAttribute("listNewCource", list);
			return mav;
		}
	}

	@RequestMapping(value = "/addnewcource", method = RequestMethod.POST)
	public ModelAndView addNewCource(HttpSession session) {
		if (session.getAttribute("userName") != null) {
			ModelAndView mav = new ModelAndView("admin/addNewCource");
			return mav;
		} else {
			ModelAndView mav = new ModelAndView("admin/login");
			return mav;
		}
	}

	@RequestMapping(value = "/updatenewcource", method = RequestMethod.POST)
	public ModelAndView updateNewCource(HttpSession session) {
		if (session.getAttribute("userName") != null) {
			ModelAndView mav = new ModelAndView("admin/updateNewCource");
			return mav;
		} else {
			ModelAndView mav = new ModelAndView("admin/login");
			return mav;
		}
	}

}
