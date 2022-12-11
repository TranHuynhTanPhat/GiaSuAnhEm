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
import com.giasuanhem.model.Models.PostModel;
import com.giasuanhem.service.Service.CommonService;
import com.giasuanhem.service.Service.MapperModel;

@Controller
public class RecruitmentManagementController {
	@Autowired
	CommonService commonService;
	@Autowired
	MapperModel commonModel;
	@Autowired
	HttpSession session;

	@RequestMapping(value = "/quanlytuyendung", method = RequestMethod.GET)
	public ModelAndView recruitmentManagement() {
		try {
			if (session.getAttribute("admin") != null) {

				Map<String, Object> paramsRecruit = new HashMap<>();
				paramsRecruit.put("style", 0);
				List<PostModel> listRecruitPost = commonService.getListPostWithParams(paramsRecruit);

				ModelAndView mav = new ModelAndView("admin/RecruitmentManagement/recruitmentManagement");
				mav.addObject("listRecruitPost", listRecruitPost);
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

	@RequestMapping(value = "/updateRecruitment", method = RequestMethod.GET)
	public ModelAndView updateRecruitment(@RequestParam("id") String id) {
		try {
			if (session.getAttribute("admin") != null) {
				Map<String, Object> paramsRecruit = new HashMap<>();
				paramsRecruit.put("_id", id);
				PostModel recruitPost = commonService.getPost(paramsRecruit);

				ModelAndView mav = new ModelAndView("admin/RecruitmentManagement/updateRecruitment");
				mav.addObject("recruitPost", recruitPost);
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

	@RequestMapping(value = "/updateRecruitment", method = RequestMethod.POST)
	public String updateRecruitment(@RequestParam("id") String id, @RequestParam("title") String title,
			@RequestParam("content") String content) {
		try {
			if (session.getAttribute("admin") != null) {
				PostModel model = new PostModel();
				model.setTitle(title);
				model.setBody(content);

				Map<String, Object> paramsRecruit = new HashMap<>();
				paramsRecruit.put("_id", id);

				commonService.updatePost(model, paramsRecruit);

				return "redirect:/quanlytuyendung";
			} else {
				return "redirect:/login";
			}
		} catch (Exception e) {
			return "redirect:/error";
		}
	}

	@RequestMapping(value = "/createRecruitment", method = RequestMethod.POST)
	public String createIntroduction(@RequestParam("title") String title, @RequestParam("content") String content)
			throws JsonProcessingException {
		if (session.getAttribute("admin") != null) {

			PostModel model = new PostModel();
			model.setBody(content);
			model.setTitle(title);
			model.setstyle(0);

			commonService.createRecruitment(model);
			return "redirect:/quanlytuyendung";
		} else {
			return "redirect:/login";
		}
	}

	@RequestMapping(value = "/deleteRecruitment", method = RequestMethod.GET)
	public String createIntroduction(@RequestParam("id") String id) {
		try {
			if (session.getAttribute("admin") != null) {
				Map<String, Object> param = new HashMap<String, Object>();
				param.put("_id", id);
				commonService.removePost(param);
				return "redirect:/quanlytuyendung";
			} else {
				return "redirect:/login";
			}
		} catch (Exception e) {
			return "redirect:/error";
		}
	}
}
