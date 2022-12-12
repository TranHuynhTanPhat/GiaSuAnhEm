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

import com.giasuanhem.model.Models.PostModel;
import com.giasuanhem.service.Service.PostService;

@Controller
public class IntroductionController {
	@Autowired
	HttpSession session;

	@RequestMapping(value = "/admin-introduction", method = RequestMethod.GET)
	public ModelAndView adminIntroduction() {
		try {
			if (session.getAttribute("admin") != null) {
				Map<String, Object> params = new HashMap<>();
				params.put("type", 0);
				List<PostModel> listIntroductionPost = PostService.getListPostWithParams(params, session);

				ModelAndView mav = new ModelAndView("admin/Introduction/adminIntroduction");
				mav.addObject("listIntroductionPost", listIntroductionPost);

				return mav;
			} else {
				ModelAndView mav = new ModelAndView("admin/login");
				return mav;
			}
		} catch (Exception e) {
			e.printStackTrace();
			ModelAndView mav = new ModelAndView("404page");
			return mav;
		}
	}

	@RequestMapping(value = "/uploadIntroduction", method = RequestMethod.POST)
	public String uploadIntroduction(@RequestParam("id") int id, @RequestParam("title") String title,
			@RequestParam("content") String content, @RequestParam("created") String created,
			@RequestParam("image") String img) {
		try {
			if (session.getAttribute("admin") != null) {
				PostModel model = new PostModel();
				model.setTitle(title);
				model.setBody(content);
				model.setType(0);
				model.setCreated_at(created);
				model.setImg("");
				model.setId(id);

				PostService.updatePost(model, session);

				return "redirect:/admin-introduction";
			} else {
				return "redirect:/login";
			}
		} catch (Exception e) {
			return "redrect:/error";
		}
	}
}
