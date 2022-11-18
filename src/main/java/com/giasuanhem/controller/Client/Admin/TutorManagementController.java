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

	@RequestMapping(value = "/quanlygiasu", method = RequestMethod.GET)
	public ModelAndView tutorManagement(HttpSession session) {
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

	@RequestMapping(value = "/quanlygiasu", params = "delete", method = RequestMethod.POST)
	public ModelAndView deleteTutor(HttpSession session, @RequestParam("remove_tutor") String[] ids) {
		try {
			Map<String, Object> params = new HashMap<>();
			for (String id : ids) {
				params.put("_id", id);
				commonService.removeTutor(params);
			}
			List<TutorModel> list = commonService.getListTutor();
			List<CategoryModel> listQuan = commonService.getListQuan();
			List<ClassModel> listClass = commonService.getListClass();
			List<SubjectModel> listSubject = commonService.getListSubject();
			ModelAndView mav = new ModelAndView("admin/tutorManagement");
			mav.addObject("listTutor", list);
			mav.addObject("listQuan", listQuan);
			mav.addObject("listClass", listClass);
			mav.addObject("listSubject", listSubject);
			return mav;
		} catch (Exception e) {
			e.printStackTrace();
			List<TutorModel> list = commonService.getListTutor();
			List<CategoryModel> listQuan = commonService.getListQuan();
			List<ClassModel> listClass = commonService.getListClass();
			List<SubjectModel> listSubject = commonService.getListSubject();
			ModelAndView mav = new ModelAndView("admin/tutorManagement");
			mav.addObject("listTutor", list);
			mav.addObject("listQuan", listQuan);
			mav.addObject("listClass", listClass);
			mav.addObject("listSubject", listSubject);
			return mav;
		}
	}

	@RequestMapping(value = "/createTutor", method = RequestMethod.GET)
	public ModelAndView addTutor(HttpSession session) {
		if (session.getAttribute("userName") != null) {
			List<SubjectModel> listSubjects = commonService.getListSubject();
			List<ClassModel> listClasses = commonService.getListClass();
			Map<String, Object> paramsP = new HashMap<>();
			paramsP.put("style", 1);
			Map<String, Object> paramsC = new HashMap<>();
			paramsC.put("style", 0);
			List<CategoryModel> listQuan = commonService.getListCategory(paramsP);
			List<CategoryModel> listLop = commonService.getListCategory(paramsC);
			ModelAndView mav = new ModelAndView("admin/addTutor");
			mav.addObject("listSubjects", listSubjects);
			mav.addObject("listQuan", listQuan);
			mav.addObject("listlop", listLop);
			mav.addObject("listClasses", listClasses);

			return mav;
		} else {
			ModelAndView mav = new ModelAndView("admin/login");
			return mav;
		}
	}

	@RequestMapping(value = "/createTutor", method = RequestMethod.POST)
	public ModelAndView addTutor(@RequestParam("hoten") String hoten, @RequestParam("gioitinh") String gioitinh,
			@RequestParam("namsinh") String namsinh, @RequestParam("diachi") String diachi,
			@RequestParam("email") String email, @RequestParam("dienthoai") String sdt,
			@RequestParam("truong") String truong, @RequestParam("chuyennganh") String chuyennghanh,
			@RequestParam("namtotnghiep") String namtotnghiem, @RequestParam("nghenghiep") String nghenghiep,
			@RequestParam("trinhdo") String trinhdo, @RequestParam("uudiem") String uudiem,
			@RequestParam("monhoc") String[] monhocs, @RequestParam("lophoc") String[] lophocs,
			@RequestParam("khuvuc") String[] khuvucs, @RequestParam("sobuoiday") String sobuoiday,
			@RequestParam("phuongtien") String phuongtien) {
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
					nghenghiep, trinhdo);
			commonService.createTutor(itemAdd);
			List<TutorModel> list = commonService.getListTutor();
			Map<String, Object> paramsP = new HashMap<>();
			paramsP.put("style", 1);
			Map<String, Object> paramsC = new HashMap<>();
			paramsC.put("style", 0);
			List<CategoryModel> listQuan = commonService.getListCategory(paramsP);
			List<CategoryModel> listLop = commonService.getListCategory(paramsC);
			List<ClassModel> listClass = commonService.getListClass();
			List<SubjectModel> listSubject = commonService.getListSubject();

			ModelAndView mav = new ModelAndView("admin/tutorManagement");
			mav.addObject("listTutor", list);
			mav.addObject("listQuan", listQuan);
			mav.addObject("listClass", listClass);
			mav.addObject("listSubject", listSubject);
			mav.addObject("listLop", listLop);

			return mav;
		} catch (Exception e) {
			e.printStackTrace();
			List<TutorModel> list = commonService.getListTutor();
			List<CategoryModel> listQuan = commonService.getListQuan();
			List<ClassModel> listClass = commonService.getListClass();
			List<SubjectModel> listSubject = commonService.getListSubject();
			ModelAndView mav = new ModelAndView("admin/tutorManagement");
			mav.addObject("listTutor", list);
			mav.addObject("listQuan", listQuan);
			mav.addObject("listClass", listClass);
			mav.addObject("listSubject", listSubject);
			return mav;
		}
	}

}
