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

import com.fasterxml.jackson.core.JsonProcessingException;
import com.giasuanhem.model.Models.AccountModel;
import com.giasuanhem.model.Models.CategoryModel;
import com.giasuanhem.service.Service.CommonService;
import com.giasuanhem.service.Service.MapperModel;

@Controller
public class AccountManagementController {
	@Autowired
	CommonService commonService;
	@Autowired
	MapperModel commonModel;
	@Autowired
	HttpSession session;

	@RequestMapping(value = "/quanlytaikhoan", method = RequestMethod.GET)
	public ModelAndView accountManagement() {
		try {
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

				List<AccountModel> listAccounts = commonService.getListAccount();

				ModelAndView mav = new ModelAndView("admin/AccountManagement/accountManagement");
				mav.addObject("listAccounts", listAccounts);
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

	@RequestMapping(value = "/createAccount", method = RequestMethod.GET)
	public ModelAndView addAccount() {
		try {
			if (session.getAttribute("admin") != null) {
				ModelAndView mav = new ModelAndView("admin/AccountManagement/addAccount");
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

	@RequestMapping(value = "/createAccount", method = RequestMethod.POST)
	public String addAccount(@RequestParam("username") String name, @RequestParam("email") String email,
			@RequestParam("password") String password, @RequestParam("role") int role,
			@RequestParam("state") int state) {
		try {
			if (session.getAttribute("admin") != null) {
				AccountModel model = new AccountModel();
				model.setUsername(name);
				model.setEmail(email);
				model.setPassword(password);
				model.setRole(role);
				model.setState(state);

				commonService.register(model, session);
				return "redirect:/quanlytaikhoan";
			} else {
				return "redirect:/login";
			}
		} catch (Exception e) {
			return "redirect:/error";
		}
	}

	@RequestMapping(value = "/updateAccount", method = RequestMethod.GET)
	public ModelAndView updateAccount(HttpSession session, @RequestParam("id") String id) {
		try {
			if (session.getAttribute("admin") != null) {

				Map<String, Object> param = new HashMap<String, Object>();
				param.put("id", id);
				AccountModel account = commonService.getAccount(param);

				ModelAndView mav = new ModelAndView("admin/AccountManagement/updateAccount");
				mav.addObject("model", account);
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

	@RequestMapping(value = "/updateAccount", method = RequestMethod.POST)
	public String updateAccount(@RequestParam("id") int id, @RequestParam("username") String name,
			@RequestParam("email") String email, @RequestParam("state") int state, @RequestParam("role") int role,
			@RequestParam("created") String created, @RequestParam("password") String password) {
		try {

			if (session.getAttribute("admin") != null) {
				AccountModel model = new AccountModel();
				model.setId(id);
				model.setUsername(name);
				model.setEmail(email);
				model.setState(state);
				model.setRole(role);
				model.setPassword(password);
				model.setCreated_at(created);

				commonService.updateAccount(model);

				return "redirect:/quanlytaikhoan";
			} else {
				return "redirect:/login";
			}
		} catch (Exception e) {
			return "redirect:/error";
		}
	}

	@RequestMapping(value = "/deleteAccount", method = RequestMethod.GET)
	public String deleteAccount(@RequestParam("id") String id) {
		try {
			if (session.getAttribute("admin") != null) {
				Map<String, Object> param = new HashMap<String, Object>();
				param.put("_id", id);
				commonService.removeCategory(param);

				return "redirect:/quanlydanhmuc";
			} else {
				return "redirect:/login";
			}
		} catch (Exception e) {
			return "redirect:/error";
		}
	}
}
