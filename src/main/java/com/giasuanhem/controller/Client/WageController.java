package com.giasuanhem.controller.Client;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

import com.giasuanhem.model.Models.CategoryModel;
import com.giasuanhem.model.Models.SalaryModel;
import com.giasuanhem.service.Service.CategoryService;
import com.giasuanhem.service.Service.CommonService;
import com.giasuanhem.service.Service.SalaryService;

@Controller
public class WageController {
	@Autowired
	HttpSession session;

	@RequestMapping(value = "/bang-luong", method = RequestMethod.GET)
	public ModelAndView wagePage() {
		try {
			Map<String, Object> paramST = new HashMap<>();
			paramST.put("type", 0);
			List<SalaryModel> listSST = SalaryService.getListSalary(paramST, session);

			Map<String, Object> paramTE = new HashMap<>();
			paramTE.put("type", 1);
			List<SalaryModel> listSTE = SalaryService.getListSalary(paramTE, session);

			ModelAndView mav = new ModelAndView("users/wage/wage");
			mav.addObject("listSST", listSST);
			mav.addObject("listSTE", listSTE);

			Map<String, Object> paramsClass = new HashMap<>();
			paramsClass.put("type", 1);
			List<CategoryModel> listCategoryClass = CategoryService.getListCategory(paramsClass, session);

			Map<String, Object> paramsDistrict = new HashMap<>();
			paramsDistrict.put("type", 0);
			List<CategoryModel> listCategoryDistrict = CategoryService.getListCategory(paramsDistrict, session);
			mav.addObject("listCategoryClass", listCategoryClass);
			mav.addObject("listCategoryDistrict", listCategoryDistrict);
			return mav;
		} catch (Exception e) {
			ModelAndView mav = new ModelAndView("404page");
			return mav;
		}
	}
}
