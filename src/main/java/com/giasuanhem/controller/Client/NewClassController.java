package com.giasuanhem.controller.Client;

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

import com.giasuanhem.model.Models.CategoryModel;
import com.giasuanhem.model.Models.ClassModel;
import com.giasuanhem.model.Models.NewClassModel;
import com.giasuanhem.model.Models.SubjectModel;
<<<<<<< HEAD
import com.giasuanhem.service.Service.CommonService;
import com.giasuanhem.service.Service.MapperModel;
=======
import com.giasuanhem.service.Service.CategoryService;
import com.giasuanhem.service.Service.ClassService;
import com.giasuanhem.service.Service.CourceService;
import com.giasuanhem.service.Service.SubjectService;
>>>>>>> 996539b41dbb0f5bc127034b6aa3d9b7eee03a5f

@Controller
public class NewClassController {
	@Autowired
	HttpSession session;
<<<<<<< HEAD
	@Autowired
	MapperModel commonModel;
	
=======

>>>>>>> 996539b41dbb0f5bc127034b6aa3d9b7eee03a5f
	@RequestMapping(value = "/lop-moi", method = RequestMethod.GET)
	public ModelAndView newClassPage() {
		try {
			Map<String, Object> paramsClass = new HashMap<>();
			paramsClass.put("type", 0);
			List<CategoryModel> listCategoryClass = CategoryService.getListCategory(paramsClass, session);

			Map<String, Object> paramsDistrict = new HashMap<>();
			paramsDistrict.put("type", 1);
			List<CategoryModel> listCategoryDistrict = CategoryService.getListCategory(paramsDistrict, session);

			session.setAttribute("listCategoryClass", listCategoryClass);
			session.setAttribute("listCategoryDistrict", listCategoryDistrict);

			List<NewClassModel> listNewClass = CourceService.getListNewClass(session);

			ModelAndView mav = new ModelAndView("users/newclass/newclass");
			mav.addObject("listNewClass", listNewClass);
			return mav;
		} catch (Exception e) {
			ModelAndView mav = new ModelAndView("404page");
			return mav;
		}
	}
<<<<<<< HEAD
	
=======

>>>>>>> 996539b41dbb0f5bc127034b6aa3d9b7eee03a5f
	@RequestMapping(value = "/dang-ky-mo-lop", method = RequestMethod.GET)
	public ModelAndView registerNewClassPage() {
		try {
			String role = String.valueOf(session.getAttribute("role"));
			if (role.equals("parent")) {
				Map<String, Object> paramsClass = new HashMap<>();
				paramsClass.put("type", 0);
				List<CategoryModel> listCategoryClass = CategoryService.getListCategory(paramsClass, session);

				Map<String, Object> paramsDistrict = new HashMap<>();
				paramsDistrict.put("type", 1);
				List<CategoryModel> listCategoryDistrict = CategoryService.getListCategory(paramsDistrict, session);

				List<ClassModel> listClass = ClassService.getListClass(session);
				List<SubjectModel> listSubject = SubjectService.getListSubject(session);

				ModelAndView mav = new ModelAndView("users/newclass/addnewclass");
				mav.addObject("listCategoryClass", listCategoryClass);
				mav.addObject("listCategoryDistrict", listCategoryDistrict);
				mav.addObject("listClass", listClass);
				mav.addObject("listSubject", listSubject);
				return mav;
			} else {
				return new ModelAndView("404page");
			}
		} catch (Exception e) {
			e.printStackTrace();
			ModelAndView mav = new ModelAndView("404page");
			return mav;
		}
	}
	@RequestMapping(value = "/dang-ky-mo-lop", method = RequestMethod.POST)
	public String createNewCource(@RequestParam("diachi") String diachi, @RequestParam("quan") String quan,
			@RequestParam("sobuoi") float sobuoi, @RequestParam("time") String time,
			@RequestParam("trangthai") float trangthai, @RequestParam("luong") float luong,
			@RequestParam("category") String[] categories, @RequestParam("monhoc") String[] monhocs,
			@RequestParam("lophoc") String[] lophocs, @RequestParam("yeucaukhac") String yeucaukhac,
			@RequestParam("lienhe") String lienhe) {
		try {
			List<Object> classes = new ArrayList<>();
			List<Object> subjects = new ArrayList<>();
			List<Object> categoriesL = new ArrayList<>();
			for (String item : lophocs) {
				classes.add(item);
			}
			for (String item : monhocs) {
				subjects.add(item);

			}
			for (String item : categories) {
				categoriesL.add(item);

			}

			NewClassModel model = commonModel.mapNewCource(diachi, quan, sobuoi, time, luong, yeucaukhac, trangthai,
					categoriesL, classes, subjects, lienhe);
			commonService.createNewCource(model);
			return "redirect:/lop-moi";
		} catch (Exception e) {
			e.printStackTrace();

			return "redirect:/error";
		}
	}

}
