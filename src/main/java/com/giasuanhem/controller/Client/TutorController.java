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
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

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

@Controller
public class TutorController {
	@Autowired
	CommonService commonService;
	@Autowired
	HttpSession session;
	@Autowired
	MapperModel commonModel;

	@RequestMapping(value = "/gia-su", method = RequestMethod.GET)
	public ModelAndView tutorPage(HttpServletRequest request) {
		try {

			ModelAndView mav = new ModelAndView("users/tutor/tutor");
			List<TutorModel> model = TutorService.getListTutor(session);

			String category = request.getParameter("category");
			if (category != null) {
				Map<String, Object> params = new HashMap<>();
				params.put("cateID", Integer.parseInt(category));
				model = TutorService.search(params, session);
				mav.addObject("listTutor", model);

			} else {
				mav.addObject("listTutor", model);
			}
			Map<String, Object> paramsClass = new HashMap<>();
			paramsClass.put("type", 1);
			List<CategoryModel> listCategoryClass = CategoryService.getListCategory(paramsClass, session);

			Map<String, Object> paramsDistrict = new HashMap<>();
			paramsDistrict.put("type", 0);
			List<CategoryModel> listCategoryDistrict = CategoryService.getListCategory(paramsDistrict, session);
			mav.addObject("listCategoryClass", listCategoryClass);
			mav.addObject("listCategoryDistrict", listCategoryDistrict);

			return mav;
		} catch (Exception e) {
			ModelAndView mav = new ModelAndView("404page");
			return mav;
		}
	}

	@RequestMapping(value = "/them-gia-su", method = RequestMethod.GET)
	public ModelAndView addTutorPage() {
		try {
			String role = String.valueOf(session.getAttribute("role"));
			if (role.equals("tutor")) {
				Map<String, Object> paramsClass = new HashMap<>();
				paramsClass.put("type", 1);
				List<CategoryModel> listCategoryClass = CategoryService.getListCategory(paramsClass, session);

				Map<String, Object> paramsDistrict = new HashMap<>();
				paramsDistrict.put("type", 0);
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
				return new ModelAndView("users/authorization/loginUser");
			}
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

				Map<String, Object> paramsClass = new HashMap<>();
				paramsClass.put("type", 1);
				List<CategoryModel> listCategoryClass = CategoryService.getListCategory(paramsClass, session);

				Map<String, Object> paramsDistrict = new HashMap<>();
				paramsDistrict.put("type", 0);
				List<CategoryModel> listCategoryDistrict = CategoryService.getListCategory(paramsDistrict, session);
				mav.addObject("listCategoryClass", listCategoryClass);
				mav.addObject("listCategoryDistrict", listCategoryDistrict);

				return mav;
			} else {
				return new ModelAndView("404page");
			}
		} catch (Exception e) {
			ModelAndView mav = new ModelAndView("404page");
			return mav;
		}
	}
}
