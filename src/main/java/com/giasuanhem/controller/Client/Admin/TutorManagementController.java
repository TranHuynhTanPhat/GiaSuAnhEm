package com.giasuanhem.controller.Client.Admin;

import java.util.ArrayList;
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
import com.giasuanhem.model.Models.SubjectModel;
import com.giasuanhem.model.Models.TutorModel;
import com.giasuanhem.service.Service.CommonService;
import com.giasuanhem.service.Service.MapperModel;

@Controller
public class TutorManagementController {
	@Autowired
	CommonService commonService;
	@Autowired
	MapperModel commonModel;
	@Autowired
	HttpSession session;

	@RequestMapping(value = "/quanlygiasu", method = RequestMethod.GET)
	public ModelAndView tutorManagement() {
		if (session.getAttribute("userName") != null) {
			List<TutorModel> listTutor = commonService.getListTutor();
			session.setAttribute("listTutor", listTutor);
			List<ClassModel> listClass = commonService.getListClass();
			session.setAttribute("listClass", listClass);
			ModelAndView mav = new ModelAndView("admin/tutorManagement");
			return mav;
		} else {
			ModelAndView mav = new ModelAndView("admin/login");
			return mav;
		}
	}

	@RequestMapping(value = "/deleteTutor", method = RequestMethod.GET)
	public String deleteTutor(@RequestParam("id") String id) {
		try {
			Map<String, Object> params = new HashMap<>();
			params.put("_id", id);
			commonService.removeTutor(params);
			List<TutorModel> list = commonService.getListTutor();

			session.setAttribute("listTutor", list);
			return "redirect:/quanlygiasu";
		} catch (Exception e) {
			e.printStackTrace();

			return "redirect:/quanlygiasu";
		}
	}

	@RequestMapping(value = "/createTutor", method = RequestMethod.GET)
	public ModelAndView addTutor() {
		if (session.getAttribute("userName") != null) {
			List<SubjectModel> listSubjects = commonService.getListSubject();
			List<ClassModel> listClass = commonService.getListClass();

			Map<String, Object> paramsP = new HashMap<>();
			paramsP.put("style", 1);
			Map<String, Object> paramsC = new HashMap<>();
			paramsC.put("style", 0);
			List<CategoryModel> listCategoryDistrict = commonService.getListCategory(paramsP);
			List<CategoryModel> listCategoryClass = commonService.getListCategory(paramsC);
			ModelAndView mav = new ModelAndView("admin/addTutor");
			session.setAttribute("listSubjects", listSubjects);
			session.setAttribute("listCategoryDistrict", listCategoryDistrict);
			session.setAttribute("listCategoryClass", listCategoryClass);
			session.setAttribute("listClass", listClass);

			return mav;
		} else {
			ModelAndView mav = new ModelAndView("admin/login");
			return mav;
		}
	}

	@RequestMapping(value = "/createTutor", method = RequestMethod.POST)
	public String addTutor(@RequestParam("hoten") String hoten, @RequestParam("gioitinh") String gioitinh,
			@RequestParam("namsinh") String namsinh, @RequestParam("diachi") String diachi,
			@RequestParam("email") String email, @RequestParam("dienthoai") String sdt,
			@RequestParam("truong") String truong, @RequestParam("chuyennganh") String chuyennghanh,
			@RequestParam("namtotnghiep") String namtotnghiem, @RequestParam("nghenghiep") String nghenghiep,
			@RequestParam("uudiem") String uudiem, @RequestParam("monhoc") String[] monhocs,
			@RequestParam("lophoc") String[] lophocs, @RequestParam("khuvuc") String[] khuvucs,
			@RequestParam("sobuoiday") String sobuoiday, @RequestParam("phuongtien") String phuongtien) {
		try {
			List<Object> classes = new ArrayList<>();
			List<Object> subjects = new ArrayList<>();
			List<Object> teachAreas = new ArrayList<>();
			for (String item : monhocs) {
				classes.add(item);
				System.out.println(item);
			}
			for (String item : lophocs) {
				subjects.add(item);
				System.out.println(item);

			}
			for (String item : khuvucs) {
				teachAreas.add(item);
				System.out.println(item);

			}

			TutorModel itemAdd = commonModel.mapTutor(hoten, diachi, email, sdt, truong, chuyennghanh, classes,
					subjects, teachAreas, phuongtien, Float.parseFloat(sobuoiday), gioitinh, namsinh, namtotnghiem,
					nghenghiep, uudiem);
			commonService.createTutor(itemAdd);

			List<TutorModel> list = commonService.getListTutor();
			Map<String, Object> paramsP = new HashMap<>();
			paramsP.put("style", 1);
			Map<String, Object> paramsC = new HashMap<>();
			paramsC.put("style", 0);
			List<CategoryModel> listCategoryDistrict = commonService.getListCategory(paramsP);
			List<CategoryModel> listCategoryClass = commonService.getListCategory(paramsC);
			List<ClassModel> listClass = commonService.getListClass();
			List<SubjectModel> listSubject = commonService.getListSubject();
			session.setAttribute("listCategoryDistrict", listCategoryDistrict);
			session.setAttribute("listCategoryClass", listCategoryClass);
			session.setAttribute("listSubject", listSubject);
			session.setAttribute("listLop", listClass);

			return "redirect:/quanlygiasu";
		} catch (Exception e) {
			e.printStackTrace();

			return "redirect:/quanlygiasu";
		}
	}

	@RequestMapping(value = "/updateTutor", method = RequestMethod.GET)
	public ModelAndView updateTutor(@RequestParam("id") String id) {
		if (session.getAttribute("userName") != null) {
			System.out.println(id);
			Map<String, Object> param = new HashMap<String, Object>();
			param.put("_id", id);
			TutorModel model = commonService.getTutor(param);
			ModelAndView mav = new ModelAndView("admin/updateTutor");
			mav.addObject("model", model);
			return mav;
		} else {
			ModelAndView mav = new ModelAndView("admin/login");
			return mav;
		}
	}

	@RequestMapping(value = "/updateTutor", method = RequestMethod.POST)
	public String updateTutor(@RequestParam("id") String id, @RequestParam("hoten") String hoten,
			@RequestParam("gioitinh") String gioitinh, @RequestParam("namsinh") String namsinh,
			@RequestParam("diachi") String diachi, @RequestParam("email") String email,
			@RequestParam("dienthoai") String sdt, @RequestParam("truong") String truong,
			@RequestParam("chuyennganh") String chuyennghanh, @RequestParam("namtotnghiep") String namtotnghiem,
			@RequestParam("nghenghiep") String nghenghiep, @RequestParam("trinhdo") String trinhdo,
			@RequestParam("uudiem") String uudiem, @RequestParam("monhoc") String[] monhocs,
			@RequestParam("lophoc") String[] lophocs, @RequestParam("khuvuc") String[] khuvucs,
			@RequestParam("sobuoiday") String sobuoiday, @RequestParam("phuongtien") String phuongtien) {
		if (session.getAttribute("userName") != null) {
			System.out.println(id);
			try {
				List<Object> classes = new ArrayList<>();
				List<Object> subjects = new ArrayList<>();
				List<Object> teachAreas = new ArrayList<>();
				for (String item : monhocs) {
					classes.add(item);
					System.out.println(item);
				}
				for (String item : lophocs) {
					subjects.add(item);
					System.out.println(item);

				}
				for (String item : khuvucs) {
					teachAreas.add(item);
					System.out.println(item);

				}
				Map<String, Object> param = new HashMap<String, Object>();
				param.put("_id", id);

				TutorModel model = commonModel.mapTutor(hoten, diachi, email, sdt, truong, chuyennghanh, classes,
						subjects, teachAreas, phuongtien, Float.parseFloat(sobuoiday), gioitinh, namsinh, namtotnghiem,
						nghenghiep, trinhdo);

				commonService.updateTutor(model, param);
			} catch (Exception e) {
				e.printStackTrace();

				return "redirect:/quanlygiasu";
			}
//			model.setName(name);
//			
//			Map<String, Object> param = new HashMap<String, Object>();
//			param.put("_id", id);
//			commonService.updateCategory(model, param);
//
//			Map<String, Object> paramsClass = new HashMap<>();
//			paramsClass.put("style", 0);
//			List<CategoryModel> listCategoryClass = commonService.getListCategory(paramsClass);
//
//			Map<String, Object> paramsDistrict = new HashMap<>();
//			paramsDistrict.put("style", 1);
//			List<CategoryModel> listCategoryDistrict = commonService.getListCategory(paramsDistrict);
//			session.setAttribute("listCategoryClass", listCategoryClass);
//			session.setAttribute("listCategoryDistrict", listCategoryDistrict);

			return "redirect:/quanlydanhmuc";
		} else {
			return "redirect:/login";
		}
	}

}
