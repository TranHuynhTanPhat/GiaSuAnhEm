package com.giasuanhem.controller.Client;

import java.io.IOException;
import java.lang.ProcessBuilder.Redirect;
import java.net.http.HttpRequest;
import java.net.http.HttpResponse;
import java.util.HashMap;
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
import com.fasterxml.jackson.core.type.TypeReference;
import com.fasterxml.jackson.databind.JsonMappingException;
import com.fasterxml.jackson.databind.ObjectMapper;
import com.giasuanhem.model.Models.AccountModel;
import com.giasuanhem.service.Email.EmailService;
import com.giasuanhem.service.Email.RandomOTP;
import com.giasuanhem.service.Service.AccountService;
import com.giasuanhem.service.Service.CommonService;

@Controller
public class AuthorizationController {
	@Autowired
	HttpSession session;
	private String OTP = "";

	@RequestMapping(value = "/dang-nhap", method = RequestMethod.GET)
	public ModelAndView loginPage() {
		try {
			ModelAndView mav = new ModelAndView("users/authorization/loginUser");
			return mav;
		} catch (Exception e) {
			ModelAndView mav = new ModelAndView("404page");
			return mav;
		}
	}

	@RequestMapping(value = "/dang-nhap", method = RequestMethod.POST)
	public String loginPage(@RequestParam("username") String username, @RequestParam("password") String password)
			throws JsonParseException, JsonMappingException, IOException {
		Map<String, Object> params = new HashMap<>();
		params.put("username", username);
		params.put("password", password);

		AccountService.checkLogin(params, session);
		if (session.getAttribute("state") != null) {
			if ((int) session.getAttribute("state") == 2) {
				return "redirect:/verify";
			}
		} else {
			return "redirect:/dang-nhap";
		}

		return "redirect:/trang-chu";

	}

	@RequestMapping(value = "/dang-ky", method = RequestMethod.GET)
	public ModelAndView registerPage() {
		try {
			ModelAndView mav = new ModelAndView("users/authorization/register");
			return mav;
		} catch (Exception e) {
			ModelAndView mav = new ModelAndView("404page");
			return mav;
		}
	}

	@RequestMapping(value = "/dang-ky", method = RequestMethod.POST)
	public String registerPage(@RequestParam("username") String username, @RequestParam("email") String email,
			@RequestParam("password") String password, @RequestParam("role") int role)
			throws JsonParseException, JsonMappingException, IOException {

		AccountModel model = new AccountModel();
		model.setUsername(username);
		model.setEmail(email);
		model.setPassword(password);
		model.setRole(role);
		model.setState(2);

		AccountService.register(model, session);

		Map<String, Object> params = new HashMap<>();
		params.put("username", model.getUsername());
		params.put("password", model.getPassword());
		AccountService.checkLogin(params, session);

		return "redirect:/verify";

	}

	@RequestMapping(value = "/verify", method = RequestMethod.GET)
	public ModelAndView verify(HttpServletResponse response) {
		try {
			response.setIntHeader("Refresh", 60);

			OTP = RandomOTP.randomOTP();
			EmailService.sendEmail(String.valueOf(session.getAttribute("emailUser")), "verify",
					EmailService.formOTP(OTP));
			return new ModelAndView("users/authorization/verifyForm");
		} catch (Exception e) {
			// TODO: handle exception
			e.printStackTrace();
			return new ModelAndView("404page");
		}
	}

	@RequestMapping(value = "/verify", method = RequestMethod.POST)
	public String verify(@RequestParam("verifyCode") String code)
			throws JsonParseException, JsonMappingException, IOException {
		if (code.equals(OTP)) {
			ObjectMapper objectMapper = new ObjectMapper();
			AccountModel model = objectMapper.convertValue(session.getAttribute("newAccount"),
					new TypeReference<AccountModel>() {
					});
			model.setState(1);
			AccountService.updateAccount(model, session);

			Map<String, Object> params = new HashMap<>();
			params.put("username", model.getUsername());
			params.put("password", model.getPassword());

			AccountService.checkLogin(params, session);

			return "redirect:/trang-chu";
		}
		return "redirect:/verify";
	}

	@RequestMapping(value = "/dang-xuat", method = RequestMethod.GET)
	public String logOut() {
		try {
			session.removeAttribute("role");
			session.removeAttribute("id");
			session.removeAttribute("accessToken");
			session.removeAttribute("state");

			session.removeAttribute("newAccount");
			session.removeAttribute("emailUser");
			return "redirect:/trang-chu";
		} catch (Exception e) {
			return "redirect:/error";
		}
	}

	@RequestMapping(value = "/thong-tin-ca-nhan", method = RequestMethod.GET)
	public ModelAndView xemThongTin() {
		try {
			ModelAndView mav = new ModelAndView("users/home/user_information");
			return mav;
		} catch (Exception e) {
			ModelAndView mav = new ModelAndView("404page");
			return mav;
		}
	}
}
