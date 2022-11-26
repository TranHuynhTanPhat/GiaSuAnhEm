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
import com.giasuanhem.model.Models.TutorModel;
import com.giasuanhem.service.Service.CommonService;
import com.giasuanhem.service.Service.MapperModel;

@Controller
public class ClassManagementController {
	@Autowired
	CommonService commonService;
	@Autowired
	MapperModel commonModel;
	@Autowired
	HttpSession session;

	@RequestMapping(value = "/quanlylophoc", method = RequestMethod.GET)
	public ModelAndView classManagement(HttpSession session) {
		if (session.getAttribute("userName") != null) {
			List<ClassModel> listClass = commonService.getListClass();
			session.setAttribute("listClass", listClass);
			ModelAndView mav = new ModelAndView("admin/classManagement");

			return mav;
		} else {
			ModelAndView mav = new ModelAndView("admin/login");
			return mav;
		}
	}

	@RequestMapping(value = "/quanlylophoc", params = "delete", method = RequestMethod.POST)
	public ModelAndView remove_classManagement(HttpSession session, @RequestParam("remove_class") String[] ids) {
		try {
			Map<String, Object> params = new HashMap<>();
			for (String id : ids) {
				params.put("_id", id);
				commonService.removeClass(params);
			}
			List<ClassModel> list = commonService.getListClass();
			ModelAndView mav = new ModelAndView("admin/classManagement");
			session.setAttribute("listClass", list);
			return mav;
		} catch (Exception e) {
			e.printStackTrace();
			ModelAndView mav = new ModelAndView("admin/classManagement");
			return mav;
		}
	}

	@RequestMapping(value = "/addClass", method = RequestMethod.GET)
	public ModelAndView addClass(HttpSession session) {
		if (session.getAttribute("userName") != null) {
			ModelAndView mav = new ModelAndView("admin/addClass");
			return mav;
		} else {
			ModelAndView mav = new ModelAndView("admin/login");
			return mav;
		}
	}

	@RequestMapping(value = "/addClass", method = RequestMethod.POST)
	public String addClass(@RequestParam("tenlop") String tenlop) {
		try {
			ClassModel itemAdd = commonModel.mapClass(tenlop);
			commonService.createClass(itemAdd);
			return "redirect:/quanlylophoc";
		} catch (Exception e) {
			// TODO: handle exception
			return "redirect:/quanlylophoc";
		}
	}

	@RequestMapping(value = "/updateClass", method = RequestMethod.GET)
	public ModelAndView updateClass(@RequestParam("id") String id) {
		if (session.getAttribute("userName") != null) {
			Map<String, Object> param = new HashMap<>();
			param.put("_id", id);
			ClassModel Class = commonService.getClass(param);
			ModelAndView mav = new ModelAndView("admin/updateClass");
			mav.addObject("Class", Class);
			return mav;
		} else {
			ModelAndView mav = new ModelAndView("admin/login");
			return mav;
		}
	}

	@RequestMapping(value = "/updateClass", method = RequestMethod.POST)
	public String updateClass(@RequestParam("id") String id, @RequestParam("tenlop") String tenlop) { 
		if(session.getAttribute("userName") != null) { 
			try {
				Map<String, Object> param = new HashMap<String, Object>();
				param.put("_id", id);

				ClassModel Class = commonModel.mapClass(tenlop);

				commonService.updateClass(Class, param);
				return "redirect:/quanlylophoc";
			}catch(Exception e) {
				e.printStackTrace();
				return "redirect:quanlylophoc";
			}
		}else { 
			return "redirect:/login"; 
		} 
	}
	 
	@RequestMapping(value = "/deleteClass", method = RequestMethod.GET)
	public String deleteClass(@RequestParam("id") String id) {
		try {
			Map<String, Object> params = new HashMap<>();
			params.put("_id", id);
			commonService.removeClass(params);
			List<ClassModel> list = commonService.getListClass();

			session.setAttribute("listClass", list);
			return "redirect:/quanlylophoc";
		} catch (Exception e) {
			e.printStackTrace();

			return "redirect:/quanlylophoc";
		}
	}
}
