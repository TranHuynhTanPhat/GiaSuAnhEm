package com.giasuanhem.controller.Client;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

import com.giasuanhem.model.Models.CategoryModel;
import com.giasuanhem.model.Models.SalaryModel;
import com.giasuanhem.service.Service.CommonService;

@Controller
public class WageController {
	@Autowired
	private CommonService commonService;

	@RequestMapping(value = "/bang-luong", method = RequestMethod.GET)
	public ModelAndView wagePage() {
		try {
			Map<String, Object> paramST = new HashMap<>();
			paramST.put("style", 0);
			List<SalaryModel> listSST = commonService.getListSalary(paramST);

			Map<String, Object> paramTE = new HashMap<>();
			paramST.put("style", 1);
			List<SalaryModel> listSTE = commonService.getListSalary(paramTE);

			ModelAndView mav = new ModelAndView("wage/wage");
			mav.addObject("listSST", listSST);
			mav.addObject("listSTE", listSTE);
			return mav;
		} catch (Exception e) {
			ModelAndView mav = new ModelAndView("404page");
			return mav;
		}
	}
}
