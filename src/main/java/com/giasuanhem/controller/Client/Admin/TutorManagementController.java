package com.giasuanhem.controller.Client.Admin;

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

import com.giasuanhem.model.Models.TutorModel;
import com.giasuanhem.service.ExcelExporter.TutorExcelExporter;
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
	public ModelAndView tutorManagement(HttpServletRequest request, HttpServletResponse response) throws IOException {
		try {
			if (session.getAttribute("admin") != null) {

				List<TutorModel> listTutor = commonService.getListTutor();

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

				ModelAndView mav = new ModelAndView("admin/TutorManagement/tutorManagement");

				mav.addObject("listTutor", listTutor);
				return mav;
			} else {
				ModelAndView mav = new ModelAndView("admin/login");
				return mav;
			}
		} catch (Exception e) {
			ModelAndView mav = new ModelAndView("404page");
			return mav;
		}
	}

	@RequestMapping(value = "/deleteTutor", method = RequestMethod.GET)
	public String deleteTutor(@RequestParam("id") String id) {
		try {
			Map<String, Object> params = new HashMap<>();
			params.put("_id", id);
			commonService.removeTutor(params);

			return "redirect:/quanlygiasu";
		} catch (Exception e) {
			e.printStackTrace();
			return "redirect:/error";
		}
	}

	@RequestMapping(value = "/createTutor", method = RequestMethod.GET)
	public ModelAndView addTutor() {
		if (session.getAttribute("admin") != null) {
			ModelAndView mav = new ModelAndView("admin/TutorManagement/addTutor");
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

			return "redirect:/quanlygiasu";
		} catch (Exception e) {
			e.printStackTrace();

			return "redirect:/error";
		}
	}

	@RequestMapping(value = "/updateTutor", method = RequestMethod.GET)
	public ModelAndView updateTutor(@RequestParam("id") String id) {
		try {
			if (session.getAttribute("admin") != null) {
				Map<String, Object> param = new HashMap<String, Object>();
				param.put("_id", id);
				TutorModel model = commonService.getTutor(param);
				ModelAndView mav = new ModelAndView("admin/TutorManagement/updateTutor");
				mav.addObject("model", model);
				return mav;
			} else {
				ModelAndView mav = new ModelAndView("admin/login");
				return mav;
			}
		} catch (Exception e) {
			ModelAndView mav = new ModelAndView("404page");
			return mav;
		}
	}

	@RequestMapping(value = "/updateTutor", method = RequestMethod.POST)
	public String updateTutor(@RequestParam("id") String id, @RequestParam("hoten") String hoten,
			@RequestParam("gioitinh") String gioitinh, @RequestParam("ngaysinh") String ngaysinh,
			@RequestParam("diachi") String diachi, @RequestParam("email") String email,
			@RequestParam("dienthoai") String sdt, @RequestParam("truong") String truong,
			@RequestParam("chuyennganh") String chuyennghanh, @RequestParam("namtotnghiep") String namtotnghiem,
			@RequestParam("nghenghiep") String nghenghiep, @RequestParam("uudiem") String uudiem,
			@RequestParam("monhoc") String[] monhocs, @RequestParam("lophoc") String[] lophocs,
			@RequestParam("khuvuc") String[] khuvucs, @RequestParam("sobuoiday") String sobuoiday,
			@RequestParam("phuongtien") String phuongtien) {
		try {
			if (session.getAttribute("admin") != null) {
				try {
					List<Object> classes = new ArrayList<>();
					List<Object> subjects = new ArrayList<>();
					List<Object> teachAreas = new ArrayList<>();
					for (String item : monhocs) {
						classes.add(item);
					}
					for (String item : lophocs) {
						subjects.add(item);

					}
					for (String item : khuvucs) {
						teachAreas.add(item);

					}
					Map<String, Object> param = new HashMap<String, Object>();
					param.put("_id", id);

					TutorModel model = commonModel.mapTutor(hoten, diachi, email, sdt, truong, chuyennghanh, classes,
							subjects, teachAreas, phuongtien, Float.parseFloat(sobuoiday), gioitinh, ngaysinh,
							namtotnghiem, nghenghiep, uudiem);

					commonService.updateTutor(model, param);
					return "redirect:/quanlygiasu";
				} catch (Exception e) {
					e.printStackTrace();
					return "redirect:/quanlygiasu";
				}
			} else {
				return "redirect:/login";
			}
		} catch (Exception e) {
			return "redirect:/error";
		}
	}

}
