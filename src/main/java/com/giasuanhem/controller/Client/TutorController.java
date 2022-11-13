package com.giasuanhem.controller.Client;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

import com.giasuanhem.model.Models.PostModel;
import com.giasuanhem.service.Service.CommonService;

@Controller
public class TutorController{
	@Autowired
	CommonService commonService;
	@RequestMapping(value = "/gia-su", method = RequestMethod.GET)
	public ModelAndView tutorPage() {
		List<PostModel> list = commonService.getListPost();
		ModelAndView mav = new ModelAndView("tutor/tutor");
		mav.addObject("listPost", list);
		return mav;
	}
	@RequestMapping(value = "/them-gia-su", method = RequestMethod.GET)
	public ModelAndView addTutorPage() {
		ModelAndView mav = new ModelAndView("tutor/addTutor");
		return mav;
	}
	@RequestMapping(value = "/quy-trinh-nhan-lop", method = RequestMethod.GET)
	public ModelAndView proccessClass() {
		ModelAndView mav = new ModelAndView("tutor/quyTrinhNhanLop");
		return mav;
	}
}
