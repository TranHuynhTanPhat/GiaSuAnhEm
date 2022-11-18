package com.giasuanhem.controller.Client;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

import com.giasuanhem.model.Models.CategoryModel;
import com.giasuanhem.model.Models.ClassModel;
import com.giasuanhem.model.Models.NewClassModel;
import com.giasuanhem.model.Models.PostModel;
import com.giasuanhem.model.Models.SalaryModel;
import com.giasuanhem.model.Models.SubjectModel;
import com.giasuanhem.service.Service.CommonService;

@Controller
public class HomeController {
	@Autowired
	private CommonService commonService;
	

	@RequestMapping(value = {"/trang-chu"}, method = RequestMethod.GET)
	public ModelAndView homePage(HttpSession session) {

		Map<String, Object> paramsClass = new HashMap<>();
		paramsClass.put("style", 0);
		List<CategoryModel> listCategoryClass = commonService.getListCategory(paramsClass);

		Map<String, Object> paramsDistrict = new HashMap<>();
		paramsDistrict.put("style", 1);
		List<CategoryModel> listCategoryDistrict = commonService.getListCategory(paramsDistrict);

		Map<String, Object> paramsIntroduction = new HashMap<>();
		paramsIntroduction.put("style", 0);
		List<PostModel> listPost = commonService.getListPostWithParams(paramsIntroduction);

		List<NewClassModel> listNewClass = commonService.getListNewClass();
		
		Map<String, Object> paramST=new HashMap<>();
		paramST.put("style", 0);
		List<SalaryModel> listSST=commonService.getListSalary(paramST);
		
		Map<String, Object> paramTE=new HashMap<>();
		paramST.put("style", 1);
		List<SalaryModel> listSTE=commonService.getListSalary(paramTE);
		
		List<ClassModel> listClass = commonService.getListClass();
		List<SubjectModel> listSubject = commonService.getListSubject();

		session.removeAttribute("listCategoryClass");
		session.removeAttribute("listCategoryDistrict");
		session.removeAttribute("listIntroductionPost");
		session.removeAttribute("listNewClass");
		session.removeAttribute("listSST");
		session.removeAttribute("listSTE");
		session.removeAttribute("listClass");
		session.removeAttribute("listSubject");
		
		session.setAttribute("listCategoryClass", listCategoryClass);
		session.setAttribute("listCategoryDistrict", listCategoryDistrict);
		session.setAttribute("listIntroductionPost", listPost);
		session.setAttribute("listNewClass", listNewClass);
		session.setAttribute("listSST", listSST);
		session.setAttribute("listSTE", listSTE);
		session.setAttribute("listClass", listClass);
		session.setAttribute("listSubject", listSubject);

		ModelAndView mav = new ModelAndView("home/home");
		return mav;
	}

	@RequestMapping(value = "/springmvc", method = RequestMethod.GET)
	public ModelAndView springMVCPage() {
		ModelAndView mav = new ModelAndView("springmvc");
		return mav;
	}

	@RequestMapping(value = "/gioi-thieu", method = RequestMethod.GET)
	public ModelAndView instructionPage(HttpSession session) {

		ModelAndView mav = new ModelAndView("home/introduce");
		return mav;
	}

	@RequestMapping(value = "/tuyen-dung", method = RequestMethod.GET)
	public ModelAndView recruitPage() {

		ModelAndView mav = new ModelAndView("home/recruit");
		return mav;
	}

	@RequestMapping(value = "muc-phi-gia-su", method = RequestMethod.GET)
	public ModelAndView feeTutorPage() {

		ModelAndView mav = new ModelAndView("home/feeTutor");
		return mav;
	}

	@RequestMapping(value = "/lien-he", method = RequestMethod.GET)
	public ModelAndView contactPage() {

		ModelAndView mav = new ModelAndView("home/contact");
		return mav;
	}
}