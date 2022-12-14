package com.giasuanhem.controller.Admin;

import java.io.IOException;
import java.text.DateFormat;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Date;
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
import com.giasuanhem.model.Models.TutorModel;
import com.giasuanhem.service.ExcelExporter.TutorExcelExporter;
import com.giasuanhem.service.Mapper.MapperModel;
import com.giasuanhem.service.Service.AccountService;
import com.giasuanhem.service.Service.CategoryService;
import com.giasuanhem.service.Service.ClassService;
import com.giasuanhem.service.Service.CourceService;
import com.giasuanhem.service.Service.SubjectService;
import com.giasuanhem.service.Service.TutorService;

@Controller
public class TutorManagementController {
	@Autowired
	MapperModel commonModel;
	@Autowired
	HttpSession session;

	@RequestMapping(value = "/quanlygiasu", method = RequestMethod.GET)
	public ModelAndView tutorManagement(HttpServletRequest request, HttpServletResponse response) throws IOException {
		if (session.getAttribute("admin") != null) {

			List<ClassModel> listClass = ClassService.getListClass(session);

			List<SubjectModel> listSubject = SubjectService.getListSubject(session);

			Map<String, Object> paramsDistrict = new HashMap<>();
			paramsDistrict.put("type", 0);
			List<CategoryModel> listCategoryDistrict = CategoryService.getListCategory(paramsDistrict, session);

			List<TutorModel> listTutor = TutorService.getListTutor(session);

			ModelAndView mav = new ModelAndView("admin/TutorManagement/tutorManagement");

			mav.addObject("listSubject", listSubject);
			mav.addObject("listClass", listClass);
			mav.addObject("listCategoryDistrict", listCategoryDistrict);

			// Excel
			String typeRequest = request.getParameter("type");
			if (typeRequest != null && typeRequest.equals("tutor")) {

				DateFormat dateFormatter = new SimpleDateFormat("yyyy-MM-dd_HH:mm:ss");
				String currentDateTime = dateFormatter.format(new Date());

				String headerKey = "Content-Disposition";
				String headerValue = "attachment; filename=Tutors_" + currentDateTime + ".xlsx";
				response.setHeader(headerKey, headerValue);

				TutorExcelExporter excelExporter = new TutorExcelExporter(listTutor);
				excelExporter.export(response);

				return null;
			}

			// Search
			String sub = request.getParameter("chonmon");
			String cla = request.getParameter("chonlop");
			String dis = request.getParameter("chonquan");
			String gen = request.getParameter("chongioitinh");
			String peo = request.getParameter("chonnguoiday");
			if (sub == null && cla == null && dis == null && gen == null && peo == null) {
				mav.addObject("listTutor", listTutor);

			} else {
				Map<String, Object> params = new HashMap<>();
				if (sub != "") {
					params.put("subID", Integer.parseInt(sub));
				}

				if (cla != "") {
					params.put("classID", Integer.parseInt(cla));
				}

				if (dis != "") {
					params.put("cateID", Integer.parseInt(dis));
				}

				if (gen != "") {
					params.put("gender", gen);
				}

				if (peo != "") {
					params.put("isnow", peo);
				}
				listTutor = TutorService.search(params, session);
				mav.addObject("listTutor", listTutor);
			}

			return mav;
		} else {
			ModelAndView mav = new ModelAndView("admin/login");
			return mav;
		}

	}

//	@RequestMapping(value = "/deleteTutor", method = RequestMethod.GET)
//	public String deleteTutor(@RequestParam("id") String id) {
//
//		Map<String, Object> params = new HashMap<>();
//		params.put("_id", id);
//		TutorService.removeTutor(params, session);
//
//		return "redirect:/quanlygiasu";
//
//	}

	@RequestMapping(value = "/createTutor", method = RequestMethod.GET)
	public ModelAndView addTutor() throws JsonParseException, JsonMappingException, IOException {
		if (session.getAttribute("admin") != null) {
			List<ClassModel> listClass = ClassService.getListClass(session);

			List<SubjectModel> listSubject = SubjectService.getListSubject(session);

			Map<String, Object> paramsDistrict = new HashMap<>();
			paramsDistrict.put("type", 0);
			List<CategoryModel> listCategoryDistrict = CategoryService.getListCategory(paramsDistrict, session);

			Map<String, Object> paramsAccount = new HashMap<>();
			paramsAccount.put("isTutor", 1);
			List<AccountModel> listAccount = AccountService.getListAccount(paramsAccount, session);

			ModelAndView mav = new ModelAndView("admin/TutorManagement/addTutor");
			mav.addObject("listSubject", listSubject);
			mav.addObject("listClass", listClass);
			mav.addObject("listCategoryDistrict", listCategoryDistrict);
			mav.addObject("listAccount", listAccount);
			return mav;
		} else {
			ModelAndView mav = new ModelAndView("admin/login");
			return mav;
		}
	}

	@RequestMapping(value = "/createTutor", method = RequestMethod.POST)
	public String addTutor(@RequestParam("hoten") String hoten, @RequestParam("gioitinh") String gioitinh,
			@RequestParam("ngaysinh") String ngaysinh, @RequestParam("diachi") String diachi,
			@RequestParam("email") String email, @RequestParam("dienthoai") String sdt,
			@RequestParam("truong") String truong, @RequestParam("chuyennganh") String chuyennghanh,
			@RequestParam("namtotnghiep") String namtotnghiem, @RequestParam("nghenghiep") String nghenghiep,
			@RequestParam("uudiem") String uudiem, @RequestParam("monhoc") int[] monhocs,
			@RequestParam("lophoc") int[] lophocs, @RequestParam("khuvuc") int[] khuvucs,
			@RequestParam("sobuoiday") int sobuoiday, @RequestParam("accId") int accountId) throws IOException {

		TutorModel itemAdd = commonModel.mapTutor(hoten, diachi, email, sdt, truong, chuyennghanh, monhocs, lophocs,
				khuvucs, sobuoiday, gioitinh, ngaysinh, namtotnghiem, nghenghiep, uudiem, accountId);
		TutorService.createTutor(itemAdd, session);

		return "redirect:/quanlygiasu";

	}

	@RequestMapping(value = "/updateTutor", method = RequestMethod.GET)
	public ModelAndView updateTutor(@RequestParam("id") String id)
			throws JsonParseException, JsonMappingException, IOException {
		if (session.getAttribute("admin") != null) {

			List<ClassModel> listClass = ClassService.getListClass(session);

			List<SubjectModel> listSubject = SubjectService.getListSubject(session);

			Map<String, Object> paramsDistrict = new HashMap<>();
			paramsDistrict.put("type", 0);
			List<CategoryModel> listCategoryDistrict = CategoryService.getListCategory(paramsDistrict, session);

			Map<String, Object> param = new HashMap<String, Object>();
			param.put("id", id);
			TutorModel model = TutorService.getTutor(param, session);

			ModelAndView mav = new ModelAndView("admin/TutorManagement/updateTutor");
			mav.addObject("model", model);
			mav.addObject("listSubject", listSubject);
			mav.addObject("listClass", listClass);
			mav.addObject("listCategoryDistrict", listCategoryDistrict);
			return mav;
		} else {
			ModelAndView mav = new ModelAndView("admin/login");
			return mav;
		}
	}

	@RequestMapping(value = "/updateTutor", method = RequestMethod.POST)
	public String updateTutor(@RequestParam("id") int id, @RequestParam("hoten") String hoten,
			@RequestParam("gioitinh") String gioitinh, @RequestParam("ngaysinh") String ngaysinh,
			@RequestParam("diachi") String diachi, @RequestParam("email") String email,
			@RequestParam("dienthoai") String sdt, @RequestParam("truong") String truong,
			@RequestParam("chuyennganh") String chuyennghanh, @RequestParam("namtotnghiep") String namtotnghiem,
			@RequestParam("nghenghiep") String nghenghiep, @RequestParam("uudiem") String uudiem,
			@RequestParam("monhoc") int[] monhocs, @RequestParam("lophoc") int[] lophocs,
			@RequestParam("khuvuc") int[] khuvucs, @RequestParam("sobuoiday") int sobuoiday,
			@RequestParam("accId") int accountId, @RequestParam("created") String created)
			throws JsonParseException, JsonMappingException, IOException {
		if (session.getAttribute("admin") != null) {
			TutorModel model = commonModel.mapTutor(hoten, diachi, email, sdt, truong, chuyennghanh, monhocs, lophocs,
					khuvucs, sobuoiday, gioitinh, ngaysinh, namtotnghiem, nghenghiep, uudiem, accountId);
			model.setId(id);
			model.setCreated_at(created);

			TutorService.updateTutor(model, session);
			return "redirect:/quanlygiasu";
		} else {
			return "redirect:/login";
		}

	}

}
