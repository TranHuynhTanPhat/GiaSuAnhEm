package com.giasuanhem.controller.Client;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

@Controller
public class TutorController{
	@RequestMapping(value = "/gia-su", method = RequestMethod.GET)
	public ModelAndView tutorPage() {
		ModelAndView mav = new ModelAndView("tutor/tutor");
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
