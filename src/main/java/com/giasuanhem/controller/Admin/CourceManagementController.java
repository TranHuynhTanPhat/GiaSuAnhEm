package com.giasuanhem.controller.Admin;

import java.io.IOException;
import java.text.DateFormat;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Arrays;
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
import com.giasuanhem.model.Models.CategoryModel;
import com.giasuanhem.model.Models.ClassModel;
import com.giasuanhem.model.Models.NewClassModel;
import com.giasuanhem.model.Models.SubjectModel;
import com.giasuanhem.service.ExcelExporter.CourceExcelExporter;
import com.giasuanhem.service.Mapper.MapperModel;
import com.giasuanhem.service.Service.CategoryService;
import com.giasuanhem.service.Service.ClassService;
import com.giasuanhem.service.Service.CommonService;
import com.giasuanhem.service.Service.CourceService;
import com.giasuanhem.service.Service.SubjectService;

@Controller
public class CourceManagementController {

	@Autowired
	CommonService commonService;
	@Autowired
	MapperModel commonModel;
	@Autowired
	HttpSession session;

	@RequestMapping(value = "/quanlykhoahoc", method = RequestMethod.GET)
	public ModelAndView courceManagement(HttpServletRequest request, HttpServletResponse response)
			throws JsonParseException, JsonMappingException, IOException {
		String pageStr = request.getParameter("page");
		int page = 0;
		int pagesize = 5;
		if (session.getAttribute("admin") != null) {
			if (pageStr == null) {
				page = 1;
			} else {
				page = Integer.parseInt(pageStr);
			}
			List<ClassModel> listClass = ClassService.getListClass(session);

			List<SubjectModel> listSubject = SubjectService.getListSubject(session);

			Map<String, Object> paramsDistrict = new HashMap<>();
			paramsDistrict.put("type", 0);
			List<CategoryModel> listCategoryDistrict = CategoryService.getListCategory(paramsDistrict, session);
			
			Map<String, Object> paramsNewClass = new HashMap<>();
			paramsNewClass.put("page", page);
			paramsNewClass.put("pagesize", pagesize);
			List<NewClassModel> listNewCource = CourceService.getListNewClass(paramsNewClass,session);
			System.out.print(listNewCource.size());

			// excel
			String typeRequest = request.getParameter("type");
			if (typeRequest != null && typeRequest.equals("cource")) {

				DateFormat dateFormatter = new SimpleDateFormat("yyyy-MM-dd_HH:mm:ss");
				String currentDateTime = dateFormatter.format(new Date());

				String headerKey = "Content-Disposition";
				String headerValue = "attachment; filename=Cources_" + currentDateTime + ".xlsx";
				response.setHeader(headerKey, headerValue);

				CourceExcelExporter excelExporter = new CourceExcelExporter(listNewCource);
				excelExporter.export(response);
				return null;
			}

			ModelAndView mav = new ModelAndView("admin/CourceManagement/courceManagement");
			mav.addObject("listSubject", listSubject);
			mav.addObject("listClass", listClass);
			mav.addObject("listCategoryDistrict", listCategoryDistrict);
			mav.addObject("page", page);
			mav.addObject("pagesize", pagesize);

			// search
			String sub = request.getParameter("chonmon");
			String cla = request.getParameter("chonlop");
			String dis = request.getParameter("chonquan");
			if (sub == null && cla == null && dis == null) {
				mav.addObject("listNewCource", listNewCource);
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
				listNewCource = CourceService.search(params, session);
				mav.addObject("listNewCource", listNewCource);
			}
			return mav;

		} else {
			ModelAndView mav = new ModelAndView("admin/login");
			return mav;
		}

	}

	@RequestMapping(value = "/deleteNewCource", method = RequestMethod.GET)
	public String removeNewCource(@RequestParam("id") String id)
			throws JsonParseException, JsonMappingException, IOException {

		Map<String, Object> params = new HashMap<>();
		params.put("id", id);
		CourceService.removeCource(params, session);

		return "redirect:/quanlykhoahoc";

	}

	@RequestMapping(value = "/createNewCource", method = RequestMethod.GET)
	public ModelAndView createNewCource() throws JsonParseException, JsonMappingException, IOException {

		if (session.getAttribute("admin") != null) {
			List<ClassModel> listClass = ClassService.getListClass(session);

			List<SubjectModel> listSubject = SubjectService.getListSubject(session);

			Map<String, Object> paramsDistrict = new HashMap<>();
			paramsDistrict.put("type", 0);
			List<CategoryModel> listCategoryDistrict = CategoryService.getListCategory(paramsDistrict, session);

			Map<String, Object> paramsClass = new HashMap<>();
			paramsClass.put("type", 1);
			List<CategoryModel> listCategoryClass = CategoryService.getListCategory(paramsClass, session);

			ModelAndView mav = new ModelAndView("admin/CourceManagement/addNewCource");
			mav.addObject("listSubject", listSubject);
			mav.addObject("listClass", listClass);
			mav.addObject("listCategoryDistrict", listCategoryDistrict);
			mav.addObject("listCategoryClass", listCategoryClass);
			return mav;
		} else {
			ModelAndView mav = new ModelAndView("admin/login");
			return mav;
		}

	}

	@RequestMapping(value = "/createNewCource", method = RequestMethod.POST)
	public String createNewCource(@RequestParam("diachi") String diachi, @RequestParam("quan") String quan,
			@RequestParam("sobuoi") int sobuoi, @RequestParam("time") String time,
			@RequestParam("trangthai") int trangthai, @RequestParam("luong") int luong,
			@RequestParam("category") int[] categories, @RequestParam("monhoc") int[] monhocs,
			@RequestParam("lophoc") int[] lophocs, @RequestParam("yeucaukhac") String yeucaukhac,
			@RequestParam("lienhe") String lienhe) throws IOException {
		try {
			NewClassModel model = commonModel.mapNewCource(diachi, quan, sobuoi, time, luong, yeucaukhac, trangthai,
					categories, lophocs, monhocs, lienhe);
			CourceService.createNewCource(model, session);
			return "redirect:/quanlykhoahoc";
		} catch (Exception e) {
			return "redirect:/error";
			// TODO: handle exception
		}

	}

	@RequestMapping(value = "/updateNewCource", method = RequestMethod.GET)
	public ModelAndView updateNewCource(@RequestParam("id") String id)
			throws JsonParseException, JsonMappingException, IOException {
		if (session.getAttribute("admin") != null) {
			Map<String, Object> param = new HashMap<String, Object>();
			param.put("id", id);
			NewClassModel model = CourceService.getNewClass(param, session);

			List<ClassModel> listClass = ClassService.getListClass(session);

			List<SubjectModel> listSubject = SubjectService.getListSubject(session);

			Map<String, Object> paramsDistrict = new HashMap<>();
			paramsDistrict.put("type", 0);
			List<CategoryModel> listCategoryDistrict = CategoryService.getListCategory(paramsDistrict, session);

			Map<String, Object> paramsClass = new HashMap<>();
			paramsClass.put("type", 1);
			List<CategoryModel> listCategoryClass = CategoryService.getListCategory(paramsClass, session);

			ModelAndView mav = new ModelAndView("admin/CourceManagement/updateNewCource");
			mav.addObject("model", model);
			mav.addObject("listSubject", listSubject);
			mav.addObject("listClass", listClass);
			mav.addObject("listCategoryDistrict", listCategoryDistrict);
			mav.addObject("listCategoryClass", listCategoryClass);
			return mav;
		} else {
			ModelAndView mav = new ModelAndView("admin/login");
			return mav;
		}
	}

	@RequestMapping(value = "/updateNewCource", method = RequestMethod.POST)
	public String updateNewCource(@RequestParam("id") int id, @RequestParam("diachi") String diachi,
			@RequestParam("quan") String quan, @RequestParam("sobuoi") int sobuoi, @RequestParam("time") String time,
			@RequestParam("trangthai") int trangthai, @RequestParam("luong") int luong,
			@RequestParam("category") int[] categories, @RequestParam("monhoc") int[] monhocs,
			@RequestParam("lophoc") int[] lophocs, @RequestParam("yeucaukhac") String yeucaukhac,
			@RequestParam("lienhe") String lienhe, @RequestParam("created") String created)
			throws JsonParseException, JsonMappingException, IOException {
		if (session.getAttribute("admin") != null) {

			NewClassModel model = commonModel.mapNewCource(diachi, quan, sobuoi, time, luong, yeucaukhac, trangthai,
					categories, lophocs, monhocs, lienhe);
			model.setId(id);
			model.setCreated_at(created);

			CourceService.updateNewClass(model, session);

			return "redirect:/quanlykhoahoc";

		} else {
			return "redirect:/login";
		}

	}

}
