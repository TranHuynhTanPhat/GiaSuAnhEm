package com.giasuanhem.controller.Client;

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
			ModelAndView mav = new ModelAndView("users/home/loginUser");
			return mav;
		} catch (Exception e) {
			ModelAndView mav = new ModelAndView("404page");
			return mav;
		}
	}

	@RequestMapping(value = "/dang-nhap", method = RequestMethod.POST)
	public String loginPage(@RequestParam("username") String username, @RequestParam("password") String password) {
		try {
			Map<String, Object> params = new HashMap<>();
			params.put("username", username);
			params.put("password", password);

			AccountService.checkLogin(params, session);
			return "redirect:/trang-chu";

		} catch (Exception e) {
			e.printStackTrace();
			return "redirect:/error";
		}
	}

	@RequestMapping(value = "/dang-ky", method = RequestMethod.GET)
	public ModelAndView registerPage() {
		try {
			ModelAndView mav = new ModelAndView("users/home/register");
			return mav;
		} catch (Exception e) {
			ModelAndView mav = new ModelAndView("404page");
			return mav;
		}
	}

	@RequestMapping(value = "/dang-ky", method = RequestMethod.POST)
	public String registerPage(@RequestParam("username") String username, @RequestParam("email") String email,
			@RequestParam("password") String password, @RequestParam("role") int role) {
		try {
			AccountModel model = new AccountModel();
			model.setUsername(username);
			model.setEmail(email);
			model.setPassword(password);
			model.setRole(role);
			model.setState(2);

			AccountService.register(model, session);

//			Map<String, Object> params = new HashMap<>();
//			params.put("username", username);
//			params.put("password", password);
//
//			AccountService.checkLogin(params, session);

			OTP = RandomOTP.randomOTP();
			EmailService.sendEmail(email, "verify", EmailService.formOTP(OTP));
			session.setAttribute("email", email);
			return "redirect:/verify";
//			EmailService.sendEmail("20110695@student.hcmute.edu.vn", "Verify", EmailService.formOTP("123456"));

		} catch (Exception e) {
			e.printStackTrace();
			return "redirect:/error";
		}
	}

	@RequestMapping(value = "/verify", method = RequestMethod.GET)
	public ModelAndView verify(HttpServletRequest request, HttpServletResponse response) {
		String email = request.getParameter("email");
		if (email != null) {
			OTP = RandomOTP.randomOTP();
			EmailService.sendEmail(email, "verify", EmailService.formOTP(OTP));
			return null;
		}
		return new ModelAndView("users/home/verifyForm");
	}

	@RequestMapping(value = "/verify", method = RequestMethod.POST)
	public String verify(@RequestParam("verifyCode") String code) {
		if (code.equals(OTP)) {
			System.out.println("ok");
			return "redirect:/trang-chu";
		}
		return "redirect:/verify";
	}

	@RequestMapping(value = "/dang-xuat", method = RequestMethod.GET)
	public String logOut() {
		try {
			session.removeAttribute("role");
			return "redirect:/trang-chu";
		} catch (Exception e) {
			return "redirect:/error";
		}
	}

}
