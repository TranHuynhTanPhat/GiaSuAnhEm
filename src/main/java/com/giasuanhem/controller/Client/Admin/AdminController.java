package com.giasuanhem.controller.Client.Admin;

import java.util.List;
import java.util.HashMap;
import java.util.Map;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import com.giasuanhem.model.Models.CategoryModel;
import com.giasuanhem.model.Models.ClassModel;
import com.giasuanhem.model.Models.PostModel;
import com.giasuanhem.model.Models.SubjectModel;
import com.giasuanhem.service.Mapper.MapperModel;
import com.giasuanhem.service.Service.AccountService;
import com.giasuanhem.service.Service.CategoryService;
import com.giasuanhem.service.Service.ClassService;
import com.giasuanhem.service.Service.PostService;
import com.giasuanhem.service.Service.SubjectService;

@Controller
public class AdminController {
	@Autowired
	MapperModel commonModel;
	@Autowired
	HttpSession session;

	@RequestMapping(value = "/admin", method = RequestMethod.GET)
	public ModelAndView adminPage() {
		try {
			if (session.getAttribute("admin") != null) {
				List<ClassModel> listClass = ClassService.getListClass(session);

				List<SubjectModel> listSubject = SubjectService.getListSubject();

				Map<String, Object> paramsDistrict = new HashMap<>();
				paramsDistrict.put("type", 0);
				List<CategoryModel> listCategoryDistrict = CategoryService.getListCategory(paramsDistrict, session);

				Map<String, Object> paramsClass = new HashMap<>();
				paramsClass.put("type", 1);
				List<CategoryModel> listCategoryClass = CategoryService.getListCategory(paramsClass, session);

				session.setAttribute("listSubject", listSubject);
				session.setAttribute("listClass", listClass);
				session.setAttribute("listCategoryDistrict", listCategoryDistrict);
				session.setAttribute("listCategoryClass", listCategoryClass);

				ModelAndView mav = new ModelAndView("admin/adminhome");
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

	@RequestMapping(value = "/transaction", method = RequestMethod.GET)
	public ModelAndView adminTransaction() {
		try {
			if (session.getAttribute("admin") != null) {

//				Map<String, Object> params = new HashMap<>();
//				params.put("style", 1);
//				List<PostModel> listIntroductionPost = commonService.getListPostWithParams(params);

				ModelAndView mav = new ModelAndView("admin/transactionHistory");
//				mav.addObject("listIntroductionPost", listIntroductionPost);

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
				model.setImg(img);
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
	public String login(@RequestParam("username") String username, @RequestParam("password") String password) {
		try {
			Map<String, Object> params = new HashMap<>();
			params.put("username", username);
			params.put("password", password);
			try {
				AccountService.checkLogin(params, session);
				return "redirect:/admin";
			} catch (Exception e) {
				e.printStackTrace();
//				session.setAttribute("errorMessage", "Username hoặc Password không đúng!");
				return "redirect:/login";
			}
		} catch (Exception e) {
			return "redirect:/error";
		}
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