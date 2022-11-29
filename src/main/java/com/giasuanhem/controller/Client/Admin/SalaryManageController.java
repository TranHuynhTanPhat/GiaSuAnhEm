package com.giasuanhem.controller.Client.Admin;

import java.util.ArrayList;
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

import com.giasuanhem.model.Models.SalaryModel;
import com.giasuanhem.model.Models.TutorModel;
import com.giasuanhem.service.Service.CommonService;
import com.giasuanhem.service.Service.MapperModel;

@Controller
public class SalaryManageController {
	@Autowired
	CommonService commonService;
	@Autowired
	MapperModel commonModel;
	@Autowired
	HttpSession session;

	@RequestMapping(value = "/quanlyluong", method = RequestMethod.GET)
	public ModelAndView salaryManagement() {
		if (session.getAttribute("userName") != null) {
			Map<String, Object> paramST = new HashMap<>();
			paramST.put("style", 0);
			List<SalaryModel> listSST = commonService.getListSalary(paramST);

			Map<String, Object> paramTE = new HashMap<>();
			paramTE.put("style", 1);
			List<SalaryModel> listSTE = commonService.getListSalary(paramTE);
			ModelAndView mav = new ModelAndView("admin/salaryManagement");
			mav.addObject("listSST", listSST);
			mav.addObject("listSTE", listSTE);
			return mav;
		} else {
			ModelAndView mav = new ModelAndView("admin/login");
			return mav;
		}
	}

	@RequestMapping(value = "/addSalary", method = RequestMethod.POST)
	public String addSalary(@RequestParam("grade") String grade, @RequestParam("styleTeacher") float styleTeacher,
			@RequestParam("twosession") String twosession, @RequestParam("threesession") String threesession,
			@RequestParam("foursession") String foursession, @RequestParam("fivesession") String fivesession) {
		if (session.getAttribute("userName") != null) {
			try {
				System.out.println(grade);
				SalaryModel model = commonModel.mapSalary(grade, styleTeacher, twosession, threesession, foursession,
						fivesession);

				commonService.createSalary(model);
				return "redirect:/quanlyluong";
			} catch (Exception e) {
				e.printStackTrace();
				return "redirect:/quanlyluong";
			}
		} else {
			return "redirect:/quanlyluong";
		}
	}

	@RequestMapping(value = "/addSalary", method = RequestMethod.GET)
	public ModelAndView addSalary() {
		if (session.getAttribute("userName") != null) {
			ModelAndView mav = new ModelAndView("admin/addSalary");
			return mav;
		} else {
			ModelAndView mav = new ModelAndView("admin/login");
			return mav;
		}
	}

	@RequestMapping(value = "/updateSalary", method = RequestMethod.POST)
	public String updateSalary(@RequestParam("id") String id, @RequestParam("grade") String grade,
			@RequestParam("styleTeacher") float styleTeacher, @RequestParam("twosession") String twosession,
			@RequestParam("threesession") String threesession, @RequestParam("foursession") String foursession,
			@RequestParam("fivesession") String fivesession) {
		if (session.getAttribute("userName") != null) {
			try {
				Map<String, Object> param = new HashMap<String, Object>();
				param.put("_id", id);

				SalaryModel model = commonModel.mapSalary(grade, styleTeacher, twosession, threesession, foursession,
						fivesession);

				commonService.updateSalary(model, param);
				return "redirect:/quanlyluong";
			} catch (Exception e) {
				e.printStackTrace();
				return "redirect:/quanlyluong";
			}
		} else {
			return "redirect:/login";
		}
	}

	@RequestMapping(value = "/updateSalary", method = RequestMethod.GET)
	public ModelAndView updateSalary(@RequestParam("id") String id) {
		if (session.getAttribute("userName") != null) {
			Map<String, Object> param = new HashMap<String, Object>();
			param.put("_id", id);
			SalaryModel model = commonService.getSalary(param);
			ModelAndView mav = new ModelAndView("admin/updateSalary");
			mav.addObject("model", model);
			return mav;
		} else {
			ModelAndView mav = new ModelAndView("admin/login");
			return mav;
		}
	}

	@RequestMapping(value = "/deleteSalary", method = RequestMethod.GET)
	public String deleteSalary(@RequestParam("id") String id) {
		if (session.getAttribute("userName") != null) {
			Map<String, Object> param = new HashMap<String, Object>();
			param.put("_id", id);
			System.out.println(id);
			commonService.removeSalary(param);
			return "redirect:/quanlyluong";
		} else {
			return "redirect:/login";
		}
	}
}
