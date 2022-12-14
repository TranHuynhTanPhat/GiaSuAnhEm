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
import com.fasterxml.jackson.databind.JsonMappingException;
import com.giasuanhem.model.Models.ClassModel;
import com.giasuanhem.service.Mapper.MapperModel;
import com.giasuanhem.service.Service.ClassService;
import com.giasuanhem.service.Service.CommonService;

@Controller
public class ClassManagementController {
	@Autowired
	CommonService commonService;
	@Autowired
	MapperModel commonModel;
	@Autowired
	HttpSession session;

	@RequestMapping(value = "/quanlylophoc", method = RequestMethod.GET)
	public ModelAndView classManagement() throws JsonParseException, JsonMappingException, IOException {
		if (session.getAttribute("admin") != null) {
			List<ClassModel> listClass = ClassService.getListClass(session);

			ModelAndView mav = new ModelAndView("admin/ClassManagement/classManagement");
			mav.addObject("listClass", listClass);
			return mav;
		} else {
			ModelAndView mav = new ModelAndView("admin/login");
			return mav;
		}

	}

	@RequestMapping(value = "/addClass", method = RequestMethod.GET)
	public ModelAndView addClass() {
		try {
			if (session.getAttribute("admin") != null) {
				ModelAndView mav = new ModelAndView("admin/ClassManagement/addClass");
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

	@RequestMapping(value = "/addClass", method = RequestMethod.POST)
	public String addClass(@RequestParam("tenlop") String tenlop) throws IOException {
		if (session.getAttribute("admin") != null) {
			ClassModel itemAdd = commonModel.mapClass(tenlop);
			ClassService.createClass(itemAdd, session);
			return "redirect:/quanlylophoc";
		} else {
			return "redirect:/login";
		}

	}

	@RequestMapping(value = "/updateClass", method = RequestMethod.GET)
	public ModelAndView updateClass(@RequestParam("id") String id)
			throws JsonParseException, JsonMappingException, IOException {
		if (session.getAttribute("admin") != null) {
			Map<String, Object> param = new HashMap<>();
			param.put("id", id);
			ClassModel Class = ClassService.getClass(param, session);
			ModelAndView mav = new ModelAndView("admin/ClassManagement/updateClass");
			mav.addObject("Class", Class);
			return mav;
		} else {
			ModelAndView mav = new ModelAndView("admin/login");
			return mav;
		}

	}

	@RequestMapping(value = "/updateClass", method = RequestMethod.POST)
	public String updateClass(@RequestParam("id") int id, @RequestParam("tenlop") String tenlop,
			@RequestParam("created") String created) throws JsonParseException, JsonMappingException, IOException {
		if (session.getAttribute("admin") != null) {

			ClassModel model = new ClassModel();
			model.setId(id);
			model.setName(tenlop);
			model.setCreated_at(created);
			ClassService.updateClass(model, session);

			return "redirect:/quanlylophoc";

		} else {
			return "redirect:/login";
		}

	}

	@RequestMapping(value = "/deleteClass", method = RequestMethod.GET)
	public String deleteClass(@RequestParam("id") String id)
			throws JsonParseException, JsonMappingException, IOException {

		Map<String, Object> params = new HashMap<>();
		params.put("id", id);
		ClassService.removeClass(params, session);

		return "redirect:/quanlylophoc";

	}
}
