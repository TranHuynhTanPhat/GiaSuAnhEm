package com.giasuanhem.controller.Admin;

import java.io.IOException;
import java.util.HashMap;
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
import com.giasuanhem.service.Service.AccountService;

@Controller
public class AuthorizationAdminController {

	@Autowired
	HttpSession session;

	@RequestMapping(value = "/login", method = RequestMethod.GET)
	public ModelAndView login() {
		try {
			session.removeAttribute("admin");
			ModelAndView mav = new ModelAndView("admin/login");
			return mav;
		} catch (Exception e) {
			ModelAndView mav = new ModelAndView("404page");
			return mav;
		}
	}

	@RequestMapping(value = "/login", method = RequestMethod.POST)
	public String login(@RequestParam("username") String username, @RequestParam("password") String password)
			throws JsonParseException, JsonMappingException, IOException {

		Map<String, Object> params = new HashMap<>();
		params.put("username", username);
		params.put("password", password);

		AccountService.checkLogin(params, session);
		return "redirect:/admin";

	}

	@RequestMapping(value = "/logout", method = RequestMethod.GET)
	public String logoutAdmin() {
		try {
			session.removeAttribute("errorMessage");
			session.removeAttribute("admin");
			return "redirect:/login";
		} catch (Exception e) {
			return "redirect:error";
		}
	}
}
