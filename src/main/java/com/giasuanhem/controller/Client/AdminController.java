package com.giasuanhem.controller.Client;

import java.util.List;
import java.util.Collections;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import com.giasuanhem.model.Models.CategoryModel;
import com.giasuanhem.model.Models.ClassModel;
import com.giasuanhem.model.Models.TutorModel;

import com.giasuanhem.model.Models.NewClassModel;
import com.giasuanhem.model.Models.PostModel;
import com.giasuanhem.model.Models.SalaryModel;
import com.giasuanhem.model.Models.SubjectModel;
import com.giasuanhem.service.Service.CommonService;

@Controller
public class AdminController {
	@Autowired
	HttpSession session;
	@Autowired
	CommonService commonService;

	@RequestMapping(value = "/admin", method = RequestMethod.GET)
	public ModelAndView adminPage() {
		if (session.getAttribute("userName") != null) {
			ModelAndView mav = new ModelAndView("admin/adminhome");
			return mav;
		} else {
			ModelAndView mav = new ModelAndView("admin/login");
			return mav;
		}
	}

	@RequestMapping(value = "/admin-introduction", method = RequestMethod.GET)
	public ModelAndView adminIntroduction() {

		if (session.getAttribute("userName") != null) {
			Map<String, Object> params = new HashMap<>();
			params.put("style", 0);
			List<PostModel> listPost = commonService.getListPostWithParams(params);
			ModelAndView mav = new ModelAndView("admin/adminIntroduction");
			mav.addObject("listPost", listPost);
			return mav;
		} else {
			ModelAndView mav = new ModelAndView("admin/login");
			return mav;
		}
	}

	@RequestMapping(value = "/login", method = RequestMethod.GET)
	public ModelAndView login() {
		if (session.getAttribute("userName") != null) {
			ModelAndView mav = new ModelAndView("admin/adminhome");
			return mav;
		} else {
			ModelAndView mav = new ModelAndView("admin/login");
			return mav;
		}
	}

	@RequestMapping(value = "/quanlykhoahoc", method = RequestMethod.GET)
	public ModelAndView courceManagement() {

		if (session.getAttribute("userName") != null) {
			List<NewClassModel> list = commonService.getListNewClass();
			List<CategoryModel> listQuan = commonService.getListQuan();
			List<ClassModel> listClass = commonService.getListClass();
			List<SubjectModel> listSubject = commonService.getListSubject();
			ModelAndView mav = new ModelAndView("admin/courceManagement");
			mav.addObject("listNewClass", list);
			mav.addObject("listQuan", listQuan);
			mav.addObject("listClass", listClass);
			mav.addObject("listSubject", listSubject);
			return mav;
		} else {
			ModelAndView mav = new ModelAndView("admin/login");
			return mav;
		}
	}

	@RequestMapping(value = "/quanlykhoahoc", method = RequestMethod.POST)
	public ModelAndView remove_courceManagement(@RequestParam("remove_cource") String id) {
		Map<String, Object> params = new HashMap<>();
		params.put("_id", id);
		commonService.removeCource(params);
		List<NewClassModel> list = commonService.getListNewClass();
		ModelAndView mav = new ModelAndView("admin/courceManagement");
		mav.addObject("listNewClass", list);
		return mav;
	}

	@RequestMapping(value = "/login", method = RequestMethod.POST)
	public ModelAndView login(@RequestParam("username") String username, @RequestParam("password") String password) {

		Map<String, Object> params = new HashMap<>();
		params.put("userName", username);
		params.put("password", password);
		return commonService.checkLogin(params, session);

	}

	@RequestMapping(value = "/logout", method = RequestMethod.POST)
	public ModelAndView logoutAdmin() {
		session.invalidate();
		ModelAndView mav = new ModelAndView("admin/login");
		return mav;

	}

	@RequestMapping(value = "/quanlygiasu", method = RequestMethod.GET)
	public ModelAndView tutorManagement() {
		if (session.getAttribute("userName") != null) {
			ModelAndView mav = new ModelAndView("admin/tutorManagement");
			List<TutorModel> list = commonService.getListTutor();
			List<CategoryModel> listQuan = commonService.getListQuan();
			List<ClassModel> listClass = commonService.getListClass();
			List<SubjectModel> listSubject = commonService.getListSubject();
			mav.addObject("listTutor", list);
			mav.addObject("listQuan", listQuan);
			mav.addObject("listClass", listClass);
			mav.addObject("listSubject", listSubject);
			return mav;
		} else {
			ModelAndView mav = new ModelAndView("admin/login");
			return mav;
		}
	}

	@RequestMapping(value = "/quanlygiasu", method = RequestMethod.POST)
	public ModelAndView remove_tutorManagement(@RequestParam("remove_tutor") String id) {
		Map<String, Object> params = new HashMap<>();
		params.put("_id", id);
		commonService.removeTutor(params);
		System.out.println("AA");
		List<TutorModel> list = commonService.getListTutor();
		ModelAndView mav = new ModelAndView("admin/tutorManagement");
		mav.addObject("listTutor", list);
		return mav;
	}

	@RequestMapping(value = "/quanlyluong", method = RequestMethod.GET)
	public ModelAndView salaryManagement() {
		if (session.getAttribute("userName") != null) {
			Map<String, Object> paramST=new HashMap<>();
			paramST.put("style",0);
			List<SalaryModel> listSST=commonService.getListSalary(paramST);
			
			Map<String, Object> paramTE=new HashMap<>();
			paramTE.put("style",1);
			List<SalaryModel> listSTE=commonService.getListSalary(paramTE);
			
			ModelAndView mav = new ModelAndView("admin/salaryManagement");
			mav.addObject("listSST", listSST);
			mav.addObject("listSTE", listSTE);
			
			return mav;
		} else {
			ModelAndView mav = new ModelAndView("admin/login");
			return mav;
		}
	}

	@RequestMapping(value = "/quanlytuyendung", method = RequestMethod.GET)
	public ModelAndView recruitmentManagement() {
		if (session.getAttribute("userName") != null) {
			Map<String, Object> params = new HashMap<>();
			params.put("style", 0);
			List<PostModel> listPost = commonService.getListPostWithParams(params);
			ModelAndView mav = new ModelAndView("admin/recruitmentManagement");
			mav.addObject("listPost", listPost);
			return mav;
		} else {
			ModelAndView mav = new ModelAndView("admin/login");
			return mav;
		}
	}

	@RequestMapping(value = "/quanlyphigiasu", method = RequestMethod.GET)
	public ModelAndView feeTutorManagement() {
		if (session.getAttribute("userName") != null) {
			ModelAndView mav = new ModelAndView("admin/feeTutorManagement");
			return mav;
		} else {
			ModelAndView mav = new ModelAndView("admin/login");
			return mav;
		}

	}

	@RequestMapping(value = "/quanlylophoc", method = RequestMethod.GET)
	public ModelAndView classManagement() {
		if (session.getAttribute("userName") != null) {
			List<ClassModel> list = commonService.getListClass();
			ModelAndView mav = new ModelAndView("admin/classManagement");
			mav.addObject("listClass", list);
			return mav;
		} else {
			ModelAndView mav = new ModelAndView("admin/login");
			return mav;
		}
	}

	@RequestMapping(value = "/quanlymonhoc", method = RequestMethod.GET)
	public ModelAndView subjectManagement() {
		if (session.getAttribute("userName") != null) {
			List<SubjectModel> list = commonService.getListSubject();
			ModelAndView mav = new ModelAndView("admin/subjectManagement");
			mav.addObject("listSubject", list);
			return mav;
		} else {
			ModelAndView mav = new ModelAndView("admin/login");
			return mav;
		}
	}

	@RequestMapping(value = "/quanlylienhe", method = RequestMethod.GET)
	public ModelAndView contactManagement() {
		if (session.getAttribute("userName") != null) {
			ModelAndView mav = new ModelAndView("admin/contactManagement");
			return mav;
		} else {
			ModelAndView mav = new ModelAndView("admin/login");
			return mav;
		}
	}

	@RequestMapping(value = "/quanlydanhmuc", method = RequestMethod.GET)
	public ModelAndView categoryManagement() {
		if (session.getAttribute("userName") != null) {
			ModelAndView mav = new ModelAndView("admin/categoryManagement");
			return mav;
		} else {
			ModelAndView mav = new ModelAndView("admin/login");
			return mav;
		}
	}

	@RequestMapping(value = "/addtutor", method = RequestMethod.POST)
	public ModelAndView addTutor() {
		if (session.getAttribute("userName") != null) {
			ModelAndView mav = new ModelAndView("admin/addTutor");
			return mav;
		} else {
			ModelAndView mav = new ModelAndView("admin/login");
			return mav;
		}
	}

	@RequestMapping(value = "/updatetutor", method = RequestMethod.POST)
	public ModelAndView updateTutor() {
		if (session.getAttribute("userName") != null) {
			ModelAndView mav = new ModelAndView("admin/updateTutor");
			return mav;
		} else {
			ModelAndView mav = new ModelAndView("admin/login");
			return mav;
		}
	}

	@RequestMapping(value = "/addnewcource", method = RequestMethod.POST)
	public ModelAndView addNewCource() {
		if (session.getAttribute("userName") != null) {
			ModelAndView mav = new ModelAndView("admin/addNewCource");
			return mav;
		} else {
			ModelAndView mav = new ModelAndView("admin/login");
			return mav;
		}
	}

	@RequestMapping(value = "/updatenewcource", method = RequestMethod.POST)
	public ModelAndView updateNewCource() {
		if (session.getAttribute("userName") != null) {
			ModelAndView mav = new ModelAndView("admin/updateNewCource");
			return mav;
		} else {
			ModelAndView mav = new ModelAndView("admin/login");
			return mav;
		}
	}

	@RequestMapping(value = "/addclass", method = RequestMethod.POST)
	public ModelAndView addClass() {
		if (session.getAttribute("userName") != null) {
			ModelAndView mav = new ModelAndView("admin/addClass");
			return mav;
		} else {
			ModelAndView mav = new ModelAndView("admin/login");
			return mav;
		}
	}

	@RequestMapping(value = "/updateclass", method = RequestMethod.POST)
	public ModelAndView updateClass() {
		if (session.getAttribute("userName") != null) {
			ModelAndView mav = new ModelAndView("admin/updateClass");
			return mav;
		} else {
			ModelAndView mav = new ModelAndView("admin/login");
			return mav;
		}
	}

	@RequestMapping(value = "/addsubject", method = RequestMethod.POST)
	public ModelAndView addSubject() {
		if (session.getAttribute("userName") != null) {
			ModelAndView mav = new ModelAndView("admin/addSubject");
			return mav;
		} else {
			ModelAndView mav = new ModelAndView("admin/login");
			return mav;
		}
	}

	@RequestMapping(value = "/updatesubject", method = RequestMethod.POST)
	public ModelAndView updateSubject() {
		if (session.getAttribute("userName") != null) {
			ModelAndView mav = new ModelAndView("admin/updateSubject");
			return mav;
		} else {
			ModelAndView mav = new ModelAndView("admin/login");
			return mav;
		}
	}

	@RequestMapping(value = "/addcategory", method = RequestMethod.POST)
	public ModelAndView addCategory() {
		if (session.getAttribute("userName") != null) {
			ModelAndView mav = new ModelAndView("admin/addCategory");
			return mav;
		} else {
			ModelAndView mav = new ModelAndView("admin/login");
			return mav;
		}
	}

	@RequestMapping(value = "/updatecategory", method = RequestMethod.POST)
	public ModelAndView updateCategory() {
		if (session.getAttribute("userName") != null) {
			ModelAndView mav = new ModelAndView("admin/updateCategory");
			return mav;
		} else {
			ModelAndView mav = new ModelAndView("admin/login");
			return mav;
		}
	}

	@RequestMapping(value = "/addcategoryclass", method = RequestMethod.POST)
	public ModelAndView addCategoryClass() {
		if (session.getAttribute("userName") != null) {
			ModelAndView mav = new ModelAndView("admin/addCategoryClass");
			return mav;
		} else {
			ModelAndView mav = new ModelAndView("admin/login");
			return mav;
		}
	}

	@RequestMapping(value = "/updatecategoryclass", method = RequestMethod.POST)
	public ModelAndView updateCategoryClass() {
		if (session.getAttribute("userName") != null) {
			ModelAndView mav = new ModelAndView("admin/updateCategoryClass");
			return mav;
		} else {
			ModelAndView mav = new ModelAndView("admin/login");
			return mav;
		}
	}

	@RequestMapping(value = "/addsalary", method = RequestMethod.POST)
	public ModelAndView addSalary() {
		if (session.getAttribute("userName") != null) {
			ModelAndView mav = new ModelAndView("admin/addSalary");
			return mav;
		} else {
			ModelAndView mav = new ModelAndView("admin/login");
			return mav;
		}
	}

	@RequestMapping(value = "/updatesalary", method = RequestMethod.POST)
	public ModelAndView updateSalary() {
		if (session.getAttribute("userName") != null) {
			ModelAndView mav = new ModelAndView("admin/updateSalary");
			return mav;
		} else {
			ModelAndView mav = new ModelAndView("admin/login");
			return mav;
		}
	}
}