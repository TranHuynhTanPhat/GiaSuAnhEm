package com.giasuanhem.controller.Client;

import java.util.ArrayList;
import java.util.List;
import javax.servlet.http.HttpSession;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

<<<<<<< HEAD
import com.giasuanhem.model.Models.TutorModel;
import com.giasuanhem.service.Service.CommonService;
import com.giasuanhem.service.Service.MapperModel;
=======
import com.giasuanhem.model.Models.CategoryModel;
import com.giasuanhem.model.Models.ClassModel;
import com.giasuanhem.model.Models.PostModel;
import com.giasuanhem.model.Models.SubjectModel;
import com.giasuanhem.model.Models.TutorModel;
import com.giasuanhem.service.Mapper.MapperModel;
import com.giasuanhem.service.Service.CategoryService;
import com.giasuanhem.service.Service.ClassService;
import com.giasuanhem.service.Service.CommonService;
import com.giasuanhem.service.Service.SubjectService;
import com.giasuanhem.service.Service.TutorService;
>>>>>>> 996539b41dbb0f5bc127034b6aa3d9b7eee03a5f

@Controller
public class TutorController {
	@Autowired
	CommonService commonService;
	@Autowired
<<<<<<< HEAD
	MapperModel commonModel;
	@Autowired
	HttpSession session;
=======
	HttpSession session;
	@Autowired
	MapperModel commonModel;
>>>>>>> 996539b41dbb0f5bc127034b6aa3d9b7eee03a5f

	@RequestMapping(value = "/gia-su", method = RequestMethod.GET)
	public ModelAndView tutorPage() {
		try {

			Map<String, Object> paramsClass = new HashMap<>();
			paramsClass.put("type", 0);
			List<CategoryModel> listCategoryClass = CategoryService.getListCategory(paramsClass, session);

			Map<String, Object> paramsDistrict = new HashMap<>();
			paramsDistrict.put("type", 1);
			List<CategoryModel> listCategoryDistrict = CategoryService.getListCategory(paramsDistrict, session);

			session.setAttribute("listCategoryClass", listCategoryClass);
			session.setAttribute("listCategoryDistrict", listCategoryDistrict);

			ModelAndView mav = new ModelAndView("users/tutor/tutor");
			return mav;
		} catch (Exception e) {
			ModelAndView mav = new ModelAndView("404page");
			return mav;
		}
	}
	

	@RequestMapping(value = "/them-gia-su", method = RequestMethod.POST)
	public String addTutor(@RequestParam("hoten") String hoten, @RequestParam("gioitinh") String gioitinh,
			@RequestParam("ngaysinh") String ngaysinh, @RequestParam("diachi") String diachi,
			@RequestParam("email") String email, @RequestParam("dienthoai") String sdt,
			@RequestParam("truong") String truong, @RequestParam("chuyennganh") String chuyennghanh,
			@RequestParam("namtotnghiep") String namtotnghiem, @RequestParam("nghenghiep") String nghenghiep,
			@RequestParam("uudiem") String uudiem, @RequestParam("monhoc") String[] monhocs,
			@RequestParam("lophoc") String[] lophocs, @RequestParam("khuvuc") String[] khuvucs,
			@RequestParam("sobuoiday") String sobuoiday, @RequestParam("phuongtien") String phuongtien) {
		try {
<<<<<<< HEAD
			List<Object> classes = new ArrayList<>();
			List<Object> subjects = new ArrayList<>();
			List<Object> teachAreas = new ArrayList<>();
			for (String item : lophocs) {
				classes.add(item);
			}
			for (String item : monhocs) {
				subjects.add(item);

			}
			for (String item : khuvucs) {
				teachAreas.add(item);

			}

			TutorModel itemAdd = commonModel.mapTutor(hoten, diachi, email, sdt, truong, chuyennghanh, subjects,
					classes, teachAreas, phuongtien, Float.parseFloat(sobuoiday), gioitinh, ngaysinh, namtotnghiem,
					nghenghiep, uudiem);
			commonService.createTutor(itemAdd);

			return "redirect:/trang-chu";
=======
			String role = String.valueOf(session.getAttribute("role"));
			if (role.equals("tutor")) {
				Map<String, Object> paramsClass = new HashMap<>();
				paramsClass.put("type", 0);
				List<CategoryModel> listCategoryClass = CategoryService.getListCategory(paramsClass, session);

				Map<String, Object> paramsDistrict = new HashMap<>();
				paramsDistrict.put("type", 1);
				List<CategoryModel> listCategoryDistrict = CategoryService.getListCategory(paramsDistrict, session);

				List<ClassModel> listClass = ClassService.getListClass(session);
				List<SubjectModel> listSubject = SubjectService.getListSubject(session);

				ModelAndView mav = new ModelAndView("users/tutor/addTutor");
				mav.addObject("listCategoryClass", listCategoryClass);
				mav.addObject("listCategoryDistrict", listCategoryDistrict);
				mav.addObject("listClass", listClass);
				mav.addObject("listSubject", listSubject);
				return mav;
			} else {
				return new ModelAndView("users/home/loginUser");
			}
>>>>>>> 996539b41dbb0f5bc127034b6aa3d9b7eee03a5f
		} catch (Exception e) {
			e.printStackTrace();

			return "redirect:/error";
		}
	}

	@RequestMapping(value = "/them-gia-su", method = RequestMethod.POST)
	public String addTutor(@RequestParam("hoten") String hoten, @RequestParam("gioitinh") String gioitinh,
			@RequestParam("ngaysinh") String ngaysinh, @RequestParam("diachi") String diachi,
			@RequestParam("email") String email, @RequestParam("dienthoai") String sdt,
			@RequestParam("truong") String truong, @RequestParam("chuyennganh") String chuyennghanh,
			@RequestParam("namtotnghiep") String namtotnghiem, @RequestParam("nghenghiep") String nghenghiep,
			@RequestParam("uudiem") String uudiem, @RequestParam("monhoc") int[] monhocs,
			@RequestParam("lophoc") int[] lophocs, @RequestParam("khuvuc") int[] khuvucs,
			@RequestParam("sobuoiday") int sobuoiday) {
		try {

			TutorModel itemAdd = commonModel.mapTutor(hoten, diachi, email, sdt, truong, chuyennghanh, monhocs, lophocs,
					khuvucs, sobuoiday, gioitinh, ngaysinh, namtotnghiem, nghenghiep, uudiem,
					session.getAttribute("id"));
			TutorService.createTutor(itemAdd, session);

			return "redirect:/gia-su";
		} catch (Exception e) {
			e.printStackTrace();

			return "redirect:/error";
		}
	}

	@RequestMapping(value = "/quy-trinh-nhan-lop", method = RequestMethod.GET)
	public ModelAndView proccessClass() {
		try {
			if (session.getAttribute("role") != null) {
				ModelAndView mav = new ModelAndView("users/tutor/quyTrinhNhanLop");
				return mav;
			} else {
				return new ModelAndView("\"404page\"");
			}
		} catch (Exception e) {
			ModelAndView mav = new ModelAndView("404page");
			return mav;
		}
	}
}
