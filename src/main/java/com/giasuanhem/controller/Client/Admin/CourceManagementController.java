package com.giasuanhem.controller.Client.Admin;

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
import com.giasuanhem.model.Models.NewClassModel;
import com.giasuanhem.service.ExcelExporter.CourceExcelExporter;
import com.giasuanhem.service.Mapper.MapperModel;
import com.giasuanhem.service.Service.CommonService;
import com.giasuanhem.service.Service.CourceService;

@Controller
public class CourceManagementController {

	@Autowired
	CommonService commonService;
	@Autowired
	MapperModel commonModel;
	@Autowired
	HttpSession session;

	@RequestMapping(value = "/quanlykhoahoc", method = RequestMethod.GET)
	public ModelAndView courceManagement(HttpServletRequest request, HttpServletResponse response) {
		try {
			if (session.getAttribute("admin") != null) {

				List<NewClassModel> listNewCource = CourceService.getListNewClass(session);

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

				mav.addObject("listNewCource", listNewCource);
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

	@RequestMapping(value = "/deleteNewCource", method = RequestMethod.GET)
	public String removeNewCource(@RequestParam("id") String id) {
		try {
			Map<String, Object> params = new HashMap<>();
			params.put("id", id);
			CourceService.removeCource(params, session);

			return "redirect:/quanlykhoahoc";
		} catch (Exception e) {
			e.printStackTrace();
			return "redirect:/error";
		}
	}

	@RequestMapping(value = "/createNewCource", method = RequestMethod.GET)
	public ModelAndView createNewCource() {
		try {
			if (session.getAttribute("admin") != null) {
				ModelAndView mav = new ModelAndView("admin/CourceManagement/addNewCource");
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

	@RequestMapping(value = "/createNewCource", method = RequestMethod.POST)
	public String createNewCource(@RequestParam("diachi") String diachi, @RequestParam("quan") String quan,
			@RequestParam("sobuoi") int sobuoi, @RequestParam("time") String time,
			@RequestParam("trangthai") int trangthai, @RequestParam("luong") int luong,
			@RequestParam("category") int[] categories, @RequestParam("monhoc") int[] monhocs,
			@RequestParam("lophoc") int[] lophocs, @RequestParam("yeucaukhac") String yeucaukhac,
			@RequestParam("lienhe") String lienhe) throws IOException {

		NewClassModel model = commonModel.mapNewCource(diachi, quan, sobuoi, time, luong, yeucaukhac, trangthai,
				categories, lophocs, monhocs, lienhe);
		CourceService.createNewCource(model, session);
		return "redirect:/quanlykhoahoc";

	}

	@RequestMapping(value = "/updateNewCource", method = RequestMethod.GET)
	public ModelAndView updateNewCource(@RequestParam("id") String id)
			throws JsonParseException, JsonMappingException, IOException {
		if (session.getAttribute("admin") != null) {
			Map<String, Object> param = new HashMap<String, Object>();
			param.put("id", id);
			NewClassModel model = CourceService.getNewClass(param, session);

			ModelAndView mav = new ModelAndView("admin/CourceManagement/updateNewCource");
			mav.addObject("model", model);
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
