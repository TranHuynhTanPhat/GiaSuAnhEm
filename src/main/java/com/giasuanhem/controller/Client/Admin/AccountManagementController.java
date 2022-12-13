package com.giasuanhem.controller.Client.Admin;

import java.io.IOException;
import java.text.DateFormat;
import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import com.fasterxml.jackson.core.JsonParseException;
import com.fasterxml.jackson.databind.JsonMappingException;
import com.giasuanhem.model.Models.AccountModel;
import com.giasuanhem.service.ExcelExporter.AccountExcelExporter;
import com.giasuanhem.service.Mapper.MapperModel;
import com.giasuanhem.service.Service.AccountService;
import com.giasuanhem.service.Service.CategoryService;

@Controller
public class AccountManagementController {
	@Autowired
	MapperModel commonModel;
	@Autowired
	HttpSession session;

	@RequestMapping(value = "/quanlytaikhoan", method = RequestMethod.GET)
	public ModelAndView accountManagement(HttpServletRequest request, HttpServletResponse response) throws IOException {

		if (session.getAttribute("admin") != null) {
//				Map<String, Object> paramsClass = new HashMap<>();
//				paramsClass.put("style", 0);
//				List<CategoryModel> listCategoryClass = commonService.getListCategory(paramsClass);
//
//				Map<String, Object> paramsDistrict = new HashMap<>();
//				paramsDistrict.put("style", 1);
//				List<CategoryModel> listCategoryDistrict = commonService.getListCategory(paramsDistrict);
//
//				session.setAttribute("listCategoryClass", listCategoryClass);
//				session.setAttribute("listCategoryDistrict", listCategoryDistrict);

			List<AccountModel> listAccounts = AccountService.getListAccount(session);

			// Xuất excel
			String typeRequest = request.getParameter("type");
			if (typeRequest != null && typeRequest.equals("account")) {
				DateFormat dateFormatter = new SimpleDateFormat("yyyy-MM-dd_HH:mm:ss");
				String currentDateTime = dateFormatter.format(new Date());

				String headerKey = "Content-Disposition";
				String headerValue = "attachment; filename=Accounts_" + currentDateTime + ".xlsx";
				response.setHeader(headerKey, headerValue);

				AccountExcelExporter excelExporter = new AccountExcelExporter(listAccounts);
				excelExporter.export(response);
				return null;
			}

			ModelAndView mav = new ModelAndView("admin/AccountManagement/accountManagement");
			mav.addObject("listAccounts", listAccounts);
			return mav;
		} else {
			ModelAndView mav = new ModelAndView("admin/login");
			return mav;
		}

	}

	@RequestMapping(value = "/createAccount", method = RequestMethod.GET)
	public ModelAndView addAccount() {

		if (session.getAttribute("admin") != null) {
			ModelAndView mav = new ModelAndView("admin/AccountManagement/addAccount");
			return mav;
		} else {
			ModelAndView mav = new ModelAndView("admin/login");
			return mav;
		}

	}

	@RequestMapping(value = "/createAccount", method = RequestMethod.POST)
	public String addAccount(@RequestParam("username") String name, @RequestParam("email") String email,
			@RequestParam("password") String password, @RequestParam("role") int role, @RequestParam("state") int state)
			throws JsonParseException, JsonMappingException, IOException {

		if (session.getAttribute("admin") != null) {
			AccountModel model = new AccountModel();
			model.setUsername(name);
			model.setEmail(email);
			model.setPassword(password);
			model.setRole(role);
			model.setState(state);

			AccountService.register(model, session);
			return "redirect:/quanlytaikhoan";
		} else {
			return "redirect:/login";
		}

	}

	@RequestMapping(value = "/updateAccount", method = RequestMethod.GET)
	public ModelAndView updateAccount(HttpSession session, @RequestParam("id") String id)
			throws JsonParseException, JsonMappingException, IOException {

		if (session.getAttribute("admin") != null) {

			Map<String, Object> param = new HashMap<String, Object>();
			param.put("id", id);
			AccountModel account = AccountService.getAccount(param);

			ModelAndView mav = new ModelAndView("admin/AccountManagement/updateAccount");
			mav.addObject("model", account);
			return mav;
		} else {
			ModelAndView mav = new ModelAndView("admin/login");
			return mav;
		}

	}

	@RequestMapping(value = "/updateAccount", method = RequestMethod.POST)
	public String updateAccount(@RequestParam("id") int id, @RequestParam("username") String name,
			@RequestParam("email") String email, @RequestParam("state") int state, @RequestParam("role") int role,
			@RequestParam("created") String created, @RequestParam("password") String password)
			throws JsonParseException, JsonMappingException, IOException {

		if (session.getAttribute("admin") != null) {
			AccountModel model = new AccountModel();
			model.setId(id);
			model.setUsername(name);
			model.setEmail(email);
			model.setState(state);
			model.setRole(role);
			model.setPassword(password);
			model.setCreated_at(created);

			AccountService.updateAccount(model, session);

			return "redirect:/quanlytaikhoan";
		} else {
			return "redirect:/login";
		}

	}

	@RequestMapping(value = "/deleteAccount", method = RequestMethod.GET)
	public String deleteAccount(@RequestParam("id") int id, @RequestParam("username") String name,
			@RequestParam("email") String email, @RequestParam("state") int state, @RequestParam("role") int role,
			@RequestParam("created") String created, @RequestParam("password") String password) {
		try {
			if (session.getAttribute("admin") != null) {
				AccountModel model = new AccountModel();
				model.setId(id);
				model.setUsername(name);
				model.setEmail(email);
				model.setState(0);
				model.setRole(role);
				model.setPassword(password);
				model.setCreated_at(created);

				AccountService.updateAccount(model, session);

				return "redirect:/quanlytaikhoan";
			} else {
				return "redirect:/login";
			}
		} catch (Exception e) {
			return "redirect:/error";
		}
	}
}
