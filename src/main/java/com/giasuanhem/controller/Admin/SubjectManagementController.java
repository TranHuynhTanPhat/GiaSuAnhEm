package com.giasuanhem.controller.Admin;

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
import com.giasuanhem.service.Mapper.MapperModel;
import com.giasuanhem.service.Service.CommonService;
import com.giasuanhem.service.Service.SubjectService;

@Controller
public class SubjectManagementController {
	@Autowired
	MapperModel commonModel;
	@Autowired
	HttpSession session;

	@RequestMapping(value = "/quanlymonhoc", method = RequestMethod.GET)
	public ModelAndView subjectManagement() throws JsonParseException, JsonMappingException, IOException {
		if (session.getAttribute("admin") != null) {
			List<SubjectModel> listSubject = SubjectService.getListSubject(session);

			ModelAndView mav = new ModelAndView("admin/SubjectManagement/subjectManagement");

			mav.addObject("listSubject", listSubject);
			return mav;
		} else {
			ModelAndView mav = new ModelAndView("admin/login");
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
		SubjectService.createSubject(itemAdd, session);
		return "redirect:/quanlymonhoc";

	}

	@RequestMapping(value = "/updateSubject", method = RequestMethod.GET)
	public ModelAndView updateSubject(@RequestParam("id") String id)
			throws JsonParseException, JsonMappingException, IOException {

		if (session.getAttribute("admin") != null) {

			Map<String, Object> param = new HashMap<>();
			param.put("id", id);
			SubjectModel Subject = SubjectService.getSubject(param, session);

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

			SubjectService.updateSubject(model, session);
			return "redirect:/quanlymonhoc";
		} else {
			return "redirect:/login";
		}
	}

	@RequestMapping(value = "/deleteSubject", method = RequestMethod.GET)
	public String deleteSubject(@RequestParam("id") String id)
			throws JsonParseException, JsonMappingException, IOException {
		Map<String, Object> params = new HashMap<>();
		params.put("id", id);
		SubjectService.removeSubject(params, session);

		return "redirect:/quanlymonhoc";

	}
}
