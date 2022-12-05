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

import com.giasuanhem.model.Models.ClassModel;
import com.giasuanhem.model.Models.SubjectModel;
import com.giasuanhem.service.Service.CommonService;
import com.giasuanhem.service.Service.MapperModel;

@Controller
public class SubjectManagementController {
	@Autowired
	CommonService commonService;
	@Autowired
	MapperModel commonModel;
	@Autowired
	HttpSession session;

	@RequestMapping(value = "/quanlymonhoc", method = RequestMethod.GET)
	public ModelAndView subjectManagement() {
		try {
			if (session.getAttribute("userName") != null) {
				List<SubjectModel> listSubject = commonService.getListSubject();
				session.setAttribute("listSubject", listSubject);
				ModelAndView mav = new ModelAndView("admin/subjectManagement");
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

	@RequestMapping(value = "/addSubject", method = RequestMethod.GET)
	public ModelAndView addSubject() {
		try {
			if (session.getAttribute("userName") != null) {
				ModelAndView mav = new ModelAndView("admin/addSubject");
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

	@RequestMapping(value = "/addSubject", method = RequestMethod.POST)
	public String addSubject(@RequestParam("tenmon") String tenmon) {
		try {
			SubjectModel itemAdd = commonModel.mapSubject(tenmon);
			commonService.createSubject(itemAdd);
			return "redirect:/quanlymonhoc";
		} catch (Exception e) {
			// TODO: handle exception
			return "redirect:/error";
		}
	}

	@RequestMapping(value = "/updateSubject", method = RequestMethod.GET)
	public ModelAndView updateSubject(@RequestParam("id") String id) {
		try {
			if (session.getAttribute("userName") != null) {
				Map<String, Object> param = new HashMap<>();
				param.put("_id", id);
				SubjectModel Subject = commonService.getSubject(param);
				ModelAndView mav = new ModelAndView("admin/updateSubject");
				mav.addObject("Subject", Subject);

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

	@RequestMapping(value = "/updateSubject", method = RequestMethod.POST)
	public String updateSubject(@RequestParam("id") String id, @RequestParam("tenmon") String tenmon) {
		try {
			if (session.getAttribute("userName") != null) {
				try {
					Map<String, Object> param = new HashMap<String, Object>();
					param.put("_id", id);
					SubjectModel Subject = commonModel.mapSubject(tenmon);
					commonService.updateSubject(Subject, param);

					return "redirect:/quanlymonhoc";
				} catch (Exception e) {
					e.printStackTrace();
					return "redirect:quanlymonhoc";
				}
			} else {
				return "redirect:/login";
			}
		} catch (Exception e) {
			return "redirect:/error";
		}
	}

	@RequestMapping(value = "/deleteSubject", method = RequestMethod.GET)
	public String deleteSubject(@RequestParam("id") String id) {
		try {
			Map<String, Object> params = new HashMap<>();
			params.put("_id", id);
			commonService.removeSubject(params);

			return "redirect:/quanlymonhoc";
		} catch (Exception e) {
			e.printStackTrace();

			return "redirect:/error";
		}
	}
}
