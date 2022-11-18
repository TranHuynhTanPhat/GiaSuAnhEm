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

import com.giasuanhem.model.Models.SubjectModel;
import com.giasuanhem.service.Service.CommonService;
import com.giasuanhem.service.Service.MapperModel;

@Controller
public class SubjectManagementController {
	@Autowired
	CommonService commonService;
	@Autowired
	MapperModel commonModel;

	@RequestMapping(value = "/quanlymonhoc", method = RequestMethod.GET)
	public ModelAndView subjectManagement(HttpSession session) {
		if (session.getAttribute("userName") != null) {
			List<SubjectModel> list = commonService.getListSubject();
			ModelAndView mav = new ModelAndView("admin/subjectManagement");
			mav.addObject("listSubject", list);
			return mav;
		} else {
			ModelAndView mav = new ModelAndView("admin/login");
			return mav;
		}
	}

	@RequestMapping(value = "/quanlymonhoc", params = "delete", method = RequestMethod.POST)
	public ModelAndView remove_subjectManagement(HttpSession session, @RequestParam("remove_subject") String[] ids) {
		try {
			Map<String, Object> params = new HashMap<>();
			for (String id : ids) {
				params.put("_id", id);
				commonService.removeSubject(params);
			}
			List<SubjectModel> list = commonService.getListSubject();
			ModelAndView mav = new ModelAndView("admin/subjectManagement");
			mav.addObject("listSubject", list);
			return mav;
		} catch (Exception e) {
			e.printStackTrace();
			List<SubjectModel> list = commonService.getListSubject();
			ModelAndView mav = new ModelAndView("admin/subjectManagement");
			mav.addObject("listSubject", list);
			return mav;
		}
	}

	@RequestMapping(value = "/addsubject", method = RequestMethod.POST)
	public ModelAndView addSubject(HttpSession session) {
		if (session.getAttribute("userName") != null) {
			ModelAndView mav = new ModelAndView("admin/addSubject");
			return mav;
		} else {
			ModelAndView mav = new ModelAndView("admin/login");
			return mav;
		}
	}

	@RequestMapping(value = "/updatesubject", method = RequestMethod.POST)
	public ModelAndView updateSubject(HttpSession session) {
		if (session.getAttribute("userName") != null) {
			ModelAndView mav = new ModelAndView("admin/updateSubject");
			return mav;
		} else {
			ModelAndView mav = new ModelAndView("admin/login");
			return mav;
		}
	}
}
