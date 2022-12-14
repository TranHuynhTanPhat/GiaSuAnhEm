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
import com.giasuanhem.model.Models.CategoryModel;
import com.giasuanhem.model.Models.SalaryModel;
import com.giasuanhem.service.Mapper.MapperModel;
import com.giasuanhem.service.Service.CategoryService;
import com.giasuanhem.service.Service.CommonService;
import com.giasuanhem.service.Service.SalaryService;

@Controller
public class SalaryManageController {
	@Autowired
	CommonService commonService;
	@Autowired
	MapperModel commonModel;
	@Autowired
	HttpSession session;

	@RequestMapping(value = "/quanlyluong", method = RequestMethod.GET)
	public ModelAndView salaryManagement() throws JsonParseException, JsonMappingException, IOException {
		if (session.getAttribute("admin") != null) {
			Map<String, Object> paramST = new HashMap<>();
			paramST.put("type", 0);
			List<SalaryModel> listSST = SalaryService.getListSalary(paramST, session);

			Map<String, Object> paramTE = new HashMap<>();
			paramTE.put("type", 1);
			List<SalaryModel> listSTE = SalaryService.getListSalary(paramTE, session);
			ModelAndView mav = new ModelAndView("admin/SalaryManagement/salaryManagement");
			mav.addObject("listSST", listSST);
			mav.addObject("listSTE", listSTE);
			return mav;
		} else {
			ModelAndView mav = new ModelAndView("admin/login");
			return mav;
		}

	}

	@RequestMapping(value = "/addSalary", method = RequestMethod.POST)
	public String addSalary(@RequestParam("id_category") int grade, @RequestParam("type_teacher") int type_teacher,
			@RequestParam("twosession") String twosession, @RequestParam("threesession") String threesession,
			@RequestParam("foursession") String foursession, @RequestParam("fivesession") String fivesession)
			throws IOException {
		if (session.getAttribute("admin") != null) {

			SalaryModel model = commonModel.mapSalary(type_teacher, twosession, threesession, foursession, fivesession,
					grade);

			SalaryService.createSalary(model, session);
			return "redirect:/quanlyluong";

		} else {
			return "redirect:/quanlyluong";
		}
	}

	@RequestMapping(value = "/addSalary", method = RequestMethod.GET)
	public ModelAndView addSalary() throws JsonParseException, JsonMappingException, IOException {
		if (session.getAttribute("admin") != null) {
			Map<String, Object> paramsClass = new HashMap<>();
			paramsClass.put("type", 1);
			List<CategoryModel> listCategoryClass = CategoryService.getListCategory(paramsClass, session);

			ModelAndView mav = new ModelAndView("admin/SalaryManagement/addSalary");
			mav.addObject("listCategoryClass", listCategoryClass);
			return mav;
		} else {
			ModelAndView mav = new ModelAndView("admin/login");
			return mav;
		}
	}

	@RequestMapping(value = "/updateSalary", method = RequestMethod.POST)
	public String updateSalary(@RequestParam("id") int id, @RequestParam("id_category") int grade,
			@RequestParam("type_teacher") int type_teacher, @RequestParam("twosession") String twosession,
			@RequestParam("threesession") String threesession, @RequestParam("foursession") String foursession,
			@RequestParam("fivesession") String fivesession, @RequestParam("created") String created)
			throws JsonParseException, JsonMappingException, IOException {
		if (session.getAttribute("admin") != null) {
			SalaryModel model = commonModel.mapSalary(type_teacher, twosession, threesession, foursession, fivesession,
					grade);
			model.setCreated_at(created);
			model.setId(id);

			SalaryService.updateSalary(model, session);

			return "redirect:/quanlyluong";
		} else {
			return "redirect:/login";
		}
	}

	@RequestMapping(value = "/updateSalary", method = RequestMethod.GET)
	public ModelAndView updateSalary(@RequestParam("id") String id)
			throws JsonParseException, JsonMappingException, IOException {

		if (session.getAttribute("admin") != null) {
			Map<String, Object> param = new HashMap<String, Object>();
			param.put("id", id);
			SalaryModel model = SalaryService.getSalary(param, session);

			Map<String, Object> paramsClass = new HashMap<>();
			paramsClass.put("type", 1);
			List<CategoryModel> listCategoryClass = CategoryService.getListCategory(paramsClass, session);

			ModelAndView mav = new ModelAndView("admin/SalaryManagement/updateSalary");
			mav.addObject("listCategoryClass", listCategoryClass);
			mav.addObject("model", model);
			return mav;
		} else {
			ModelAndView mav = new ModelAndView("admin/login");
			return mav;
		}

	}

	@RequestMapping(value = "/deleteSalary", method = RequestMethod.GET)
	public String deleteSalary(@RequestParam("id") String id)
			throws JsonParseException, JsonMappingException, IOException {
		if (session.getAttribute("admin") != null) {
			Map<String, Object> param = new HashMap<String, Object>();
			param.put("id", id);
			SalaryService.removeSalary(param, session);
			return "redirect:/quanlyluong";
		} else {
			return "redirect:/login";
		}

	}
}
