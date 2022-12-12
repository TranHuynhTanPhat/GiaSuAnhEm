package com.giasuanhem.controller.Client;

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
import com.giasuanhem.model.Models.PostModel;
import com.giasuanhem.model.Models.SubjectModel;
import com.giasuanhem.model.Models.TutorModel;
import com.giasuanhem.service.Service.CommonService;
import com.giasuanhem.service.Service.MapperModel;

@Controller
public class TutorController {
	@Autowired
	CommonService commonService;
	@Autowired
	MapperModel commonModel;
	@Autowired
	HttpSession session;

	@RequestMapping(value = "/gia-su", method = RequestMethod.GET)
	public ModelAndView tutorPage() {
		try {
			ModelAndView mav = new ModelAndView("tutor/tutor");
			return mav;
		} catch (Exception e) {
			ModelAndView mav = new ModelAndView("404page");
			return mav;
		}
	}
	
	@RequestMapping(value = "/them-gia-su", method = RequestMethod.GET)
	public ModelAndView registerNewClassPage() {
		try {
			Map<String, Object> paramsClass = new HashMap<>();
			paramsClass.put("style", 0);
			List<CategoryModel> listCategoryClass = commonService.getListCategory(paramsClass);

			Map<String, Object> paramsDistrict = new HashMap<>();
			paramsDistrict.put("style", 1);
			List<CategoryModel> listCategoryDistrict = commonService.getListCategory(paramsDistrict);
			
			session.setAttribute("listCategoryClass", listCategoryClass);
			session.setAttribute("listCategoryDistrict", listCategoryDistrict);
			
			List<ClassModel> listClass = commonService.getListClass();
			List<SubjectModel> listSubject = commonService.getListSubject();
			
			session.setAttribute("listClass", listClass);
			session.setAttribute("listSubject", listSubject);
			
			ModelAndView mav = new ModelAndView("tutor/addTutor");
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
		} catch (Exception e) {
			e.printStackTrace();

			return "redirect:/error";
		}
	}

	@RequestMapping(value = "/quy-trinh-nhan-lop", method = RequestMethod.GET)
	public ModelAndView proccessClass() {
		try {
			ModelAndView mav = new ModelAndView("tutor/quyTrinhNhanLop");
			return mav;
		} catch (Exception e) {
			ModelAndView mav = new ModelAndView("404page");
			return mav;
		}
	}
}
