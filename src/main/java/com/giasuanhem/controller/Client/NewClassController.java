package com.giasuanhem.controller.Client;

import java.io.IOException;
import java.util.HashMap;
import java.util.List;
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
import com.fasterxml.jackson.databind.JsonMappingException;
import com.giasuanhem.model.Models.AccountModel;
import com.giasuanhem.model.Models.CategoryModel;
import com.giasuanhem.model.Models.ClassModel;
import com.giasuanhem.model.Models.NewClassModel;
import com.giasuanhem.model.Models.SubjectModel;
import com.giasuanhem.service.Mapper.MapperModel;
import com.giasuanhem.service.Service.AccountService;
import com.giasuanhem.service.Service.CategoryService;
import com.giasuanhem.service.Service.ClassService;
import com.giasuanhem.service.Service.CourceService;
import com.giasuanhem.service.Service.SubjectService;

@Controller
public class NewClassController {
	@Autowired
	HttpSession session;
	@Autowired
	MapperModel commonModel;

	@RequestMapping(value = "/lop-moi", method = RequestMethod.GET)
	public ModelAndView newClassPage(HttpServletRequest request)
			throws JsonParseException, JsonMappingException, IOException {
		String pageStr = request.getParameter("page");
		int page = 0;
		int pagesize = 10;
		if (pageStr == null) {
			page = 1;
		} else {
			page = Integer.parseInt(pageStr);
		}
		ModelAndView mav = new ModelAndView("users/newclass/newclass");
		Map<String, Object> paramsNewClass = new HashMap<>();
		paramsNewClass.put("page", page);
		paramsNewClass.put("pagesize", pagesize);
		List<NewClassModel> listNewClass = CourceService.getListNewClass(paramsNewClass, session);

		String category = request.getParameter("category");

		if (category != null) {
			Map<String, Object> params = new HashMap<>();
			int id =0;
			try {
				id = Integer.parseInt(category);
			}
			catch(NumberFormatException e) {
				System.out.print(e);
			}
			params.put("cateID", id);
			listNewClass = CourceService.search(params, session);
			mav.addObject("listNewClass", listNewClass);
		} else {

			mav.addObject("listNewClass", listNewClass);
		}
		Map<String, Object> paramsClass = new HashMap<>();
		paramsClass.put("type", 1);
		List<CategoryModel> listCategoryClass = CategoryService.getListCategory(paramsClass, session);

		Map<String, Object> paramsDistrict = new HashMap<>();
		paramsDistrict.put("type", 0);
		List<CategoryModel> listCategoryDistrict = CategoryService.getListCategory(paramsDistrict, session);
		mav.addObject("listCategoryClass", listCategoryClass);
		mav.addObject("listCategoryDistrict", listCategoryDistrict);
		mav.addObject("page", page);
		mav.addObject("pagesize", pagesize);
		return mav;
	}

	@RequestMapping(value = "/dang-ky-mo-lop", method = RequestMethod.GET)
	public ModelAndView registerNewClassPage() throws JsonParseException, JsonMappingException, IOException {

		if (String.valueOf(session.getAttribute("role")).equals("parent")) {
			Map<String, Object> paramsClass = new HashMap<>();
			paramsClass.put("type", 1);
			List<CategoryModel> listCategoryClass = CategoryService.getListCategory(paramsClass, session);

			Map<String, Object> paramsDistrict = new HashMap<>();
			paramsDistrict.put("type", 0);
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

	}

	@RequestMapping(value = "/dang-ky-mo-lop", method = RequestMethod.POST)
	public String createNewCource(@RequestParam("diachi") String diachi, @RequestParam("quan") String quan,
			@RequestParam("sobuoi") int sobuoi, @RequestParam("time") String time,
			@RequestParam("trangthai") int trangthai, @RequestParam("luong") int luong,
			@RequestParam("category") int[] categories, @RequestParam("monhoc") int[] monhocs,
			@RequestParam("lophoc") int[] lophocs, @RequestParam("yeucaukhac") String yeucaukhac,
			@RequestParam("lienhe") String lienhe) throws IOException {
		try {
			NewClassModel model = commonModel.mapNewCource(diachi, quan, sobuoi, time, luong, yeucaukhac, trangthai,
					categories, lophocs, monhocs, lienhe);
			NewClassModel newClass = CourceService.createNewCource(model, session);

			session.setAttribute("id", newClass.getId());
			session.setAttribute("salary", 500000);

			return "redirect:/thanh-toan-mo-lop";
		} catch (Exception e) {
			return "redirect:/error";
			// TODO: handle exception
		}

	}

}
