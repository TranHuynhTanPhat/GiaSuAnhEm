package com.giasuanhem.controller.Client.Admin;

import java.io.IOException;
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

import com.fasterxml.jackson.core.JsonParseException;
import com.fasterxml.jackson.core.JsonProcessingException;
import com.fasterxml.jackson.databind.JsonMappingException;
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
			if (session.getAttribute("admin") != null) {
				List<SubjectModel> listSubject = commonService.getListSubject();
				session.setAttribute("listSubject", listSubject);
				ModelAndView mav = new ModelAndView("admin/SubjectManagement/subjectManagement");
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
			if (session.getAttribute("admin") != null) {
				ModelAndView mav = new ModelAndView("admin/SubjectManagement/addSubject");
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
	public String addSubject(@RequestParam("tenmon") String tenmon) throws IOException {

		SubjectModel itemAdd = commonModel.mapSubject(tenmon);
		commonService.createSubject(itemAdd);
		return "redirect:/quanlymonhoc";

	}

	@RequestMapping(value = "/updateSubject", method = RequestMethod.GET)
	public ModelAndView updateSubject(@RequestParam("id") String id)
			throws JsonParseException, JsonMappingException, IOException {

		if (session.getAttribute("admin") != null) {

			Map<String, Object> param = new HashMap<>();
			param.put("id", id);
			SubjectModel Subject = commonService.getSubject(param);

			ModelAndView mav = new ModelAndView("admin/SubjectManagement/updateSubject");
			mav.addObject("Subject", Subject);

			return mav;
		} else {
			ModelAndView mav = new ModelAndView("admin/login");
			return mav;
		}

	}

	@RequestMapping(value = "/updateSubject", method = RequestMethod.POST)
	public String updateSubject(@RequestParam("id") int id, @RequestParam("tenmon") String tenmon,
			@RequestParam("created") String created) throws JsonParseException, JsonMappingException, IOException {

		if (session.getAttribute("admin") != null) {

			SubjectModel model = new SubjectModel();
			model.setId(id);
			model.setName(tenmon);
			model.setCreated_at(created);

			commonService.updateSubject(model);
			return "redirect:/quanlymonhoc";
		} else {
			return "redirect:/login";
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
