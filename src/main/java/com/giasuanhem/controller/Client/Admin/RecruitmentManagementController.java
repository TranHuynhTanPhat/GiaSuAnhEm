package com.giasuanhem.controller.Client.Admin;

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
import com.fasterxml.jackson.core.JsonProcessingException;
import com.fasterxml.jackson.databind.JsonMappingException;
import com.giasuanhem.model.Models.PostModel;
import com.giasuanhem.service.Mapper.MapperModel;
import com.giasuanhem.service.Service.CommonService;
import com.giasuanhem.service.Service.PostService;

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
				paramsRecruit.put("type", 1);
				List<PostModel> listRecruitPost = PostService.getListPostWithParams(paramsRecruit, session);

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
				paramsRecruit.put("id", id);
				PostModel recruitPost = PostService.getPost(paramsRecruit, session);

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
	public String updateRecruitment(@RequestParam("id") int id, @RequestParam("title") String title,
			@RequestParam("content") String content, @RequestParam("created") String created,
			@RequestParam("image") String img) {
		try {
			if (session.getAttribute("admin") != null) {
				PostModel model = new PostModel();
				model.setTitle(title);
				model.setBody(content);
				model.setType(1);
				model.setCreated_at(created);
				model.setImg(img);
				model.setId(id);

				PostService.updatePost(model, session);

				return "redirect:/quanlytuyendung";
			} else {
				return "redirect:/login";
			}
		} catch (Exception e) {
			return "redirect:/error";
		}
	}

	@RequestMapping(value = "/createRecruitment", method = RequestMethod.POST)
	public String createIntroduction(@RequestParam("title") String title, @RequestParam("content") String content,
			@RequestParam("image") String img) throws IOException {
		if (session.getAttribute("admin") != null) {

			PostModel model = new PostModel();
			model.setTitle(title);
			model.setBody(content);
			model.setType(1);
			model.setImg("");

			PostService.createRecruitment(model, session);
			return "redirect:/quanlytuyendung";
		} else {
			return "redirect:/login";
		}
	}

	@RequestMapping(value = "/deleteRecruitment", method = RequestMethod.GET)
	public String createIntroduction(@RequestParam("id") String id)
			throws JsonParseException, JsonMappingException, IOException {

		if (session.getAttribute("admin") != null) {
			Map<String, Object> param = new HashMap<String, Object>();
			param.put("id", id);
			PostService.removePost(param, session);
			return "redirect:/quanlytuyendung";
		} else {
			return "redirect:/login";
		}

	}
}
