package com.giasuanhem.controller.Client.Admin;

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

import com.giasuanhem.model.Models.NewClassModel;
import com.giasuanhem.service.ExcelExporter.CourceExcelExporter;
import com.giasuanhem.service.Service.CommonService;
import com.giasuanhem.service.Service.MapperModel;

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
			if (session.getAttribute("userName") != null) {

				List<NewClassModel> listNewCource = commonService.getListNewClass();

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
			params.put("_id", id);
			commonService.removeCource(params);

			return "redirect:/quanlykhoahoc";
		} catch (Exception e) {
			e.printStackTrace();
			return "redirect:/error";
		}
	}

	@RequestMapping(value = "/createNewCource", method = RequestMethod.GET)
	public ModelAndView createNewCource() {
		try {
			if (session.getAttribute("userName") != null) {
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
			@RequestParam("sobuoi") float sobuoi, @RequestParam("time") String time,
			@RequestParam("trangthai") float trangthai, @RequestParam("luong") float luong,
			@RequestParam("category") String[] categories, @RequestParam("monhoc") String[] monhocs,
			@RequestParam("lophoc") String[] lophocs, @RequestParam("yeucaukhac") String yeucaukhac,
			@RequestParam("lienhe") String lienhe) {
		try {
			List<Object> classes = new ArrayList<>();
			List<Object> subjects = new ArrayList<>();
			List<Object> categoriesL = new ArrayList<>();
			for (String item : lophocs) {
				classes.add(item);
			}
			for (String item : monhocs) {
				subjects.add(item);

			}
			for (String item : categories) {
				categoriesL.add(item);

			}

			NewClassModel model = commonModel.mapNewCource(diachi, quan, sobuoi, time, luong, yeucaukhac, trangthai,
					categoriesL, classes, subjects, lienhe);
			commonService.createNewCource(model);
			return "redirect:/quanlykhoahoc";
		} catch (Exception e) {
			e.printStackTrace();

			return "redirect:/error";
		}
	}

	@RequestMapping(value = "/updateNewCource", method = RequestMethod.GET)
	public ModelAndView updateNewCource(@RequestParam("id") String id) {
		try {
			if (session.getAttribute("userName") != null) {
				Map<String, Object> param = new HashMap<String, Object>();
				param.put("_id", id);
				NewClassModel model = commonService.getNewClass(param);

				ModelAndView mav = new ModelAndView("admin/CourceManagement/updateNewCource");
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

	@RequestMapping(value = "/updateNewCource", method = RequestMethod.POST)
	public String updateNewCource(@RequestParam("id") String id, @RequestParam("diachi") String diachi,
			@RequestParam("quan") String quan, @RequestParam("sobuoi") float sobuoi, @RequestParam("time") String time,
			@RequestParam("trangthai") float trangthai, @RequestParam("luong") float luong,
			@RequestParam("category") String[] categories, @RequestParam("monhoc") String[] monhocs,
			@RequestParam("lophoc") String[] lophocs, @RequestParam("yeucaukhac") String yeucaukhac,
			@RequestParam("lienhe") String lienhe) {
		try {
			if (session.getAttribute("userName") != null) {
				Map<String, Object> param = new HashMap<String, Object>();
				param.put("_id", id);
				try {
					List<Object> classes = new ArrayList<>();
					List<Object> subjects = new ArrayList<>();
					List<Object> categoriesL = new ArrayList<>();
					for (String item : lophocs) {
						classes.add(item);
					}
					for (String item : monhocs) {
						subjects.add(item);

					}
					for (String item : categories) {
						categoriesL.add(item);

					}

					NewClassModel model = commonModel.mapNewCource(diachi, quan, sobuoi, time, luong, yeucaukhac,
							trangthai, categoriesL, classes, subjects, lienhe);
					commonService.updateNewClass(model, param);
					return "redirect:/quanlykhoahoc";
				} catch (Exception e) {
					e.printStackTrace();

					return "redirect:/quanlykhoahoc";
				}
			} else {
				return "redirect:/login";
			}
		} catch (Exception e) {
			return "redirect:/error";
		}
	}

}
