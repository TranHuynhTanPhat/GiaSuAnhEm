package com.giasuanhem.controller.Client.Admin;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

import com.giasuanhem.model.Models.SalaryModel;
import com.giasuanhem.service.Service.CommonService;
import com.giasuanhem.service.Service.MapperModel;

@Controller
public class SalaryManageController {
	@Autowired
	CommonService commonService;
	@Autowired
	MapperModel commonModel;

	@RequestMapping(value = "/quanlyluong", method = RequestMethod.GET)
	public ModelAndView salaryManagement(HttpSession session) {
		if (session.getAttribute("userName") != null) {
			Map<String, Object> paramST = new HashMap<>();
			paramST.put("style", 0);
			List<SalaryModel> listSST = commonService.getListSalary(paramST);

			Map<String, Object> paramTE = new HashMap<>();
			paramTE.put("style", 1);
			List<SalaryModel> listSTE = commonService.getListSalary(paramTE);
			ModelAndView mav = new ModelAndView("admin/salaryManagement");
			session.setAttribute("listSST", listSST);
			session.setAttribute("listSTE", listSTE);
			return mav;
		} else {
			ModelAndView mav = new ModelAndView("admin/login");
			return mav;
		}
	}

	@RequestMapping(value = "/addsalary", method = RequestMethod.POST)
	public ModelAndView addSalary(HttpSession session) {
		if (session.getAttribute("userName") != null) {
			ModelAndView mav = new ModelAndView("admin/addSalary");
			return mav;
		} else {
			ModelAndView mav = new ModelAndView("admin/login");
			return mav;
		}
	}

	@RequestMapping(value = "/updatesalary", method = RequestMethod.POST)
	public ModelAndView updateSalary(HttpSession session) {
		if (session.getAttribute("userName") != null) {
			ModelAndView mav = new ModelAndView("admin/updateSalary");
			return mav;
		} else {
			ModelAndView mav = new ModelAndView("admin/login");
			return mav;
		}
	}
}
