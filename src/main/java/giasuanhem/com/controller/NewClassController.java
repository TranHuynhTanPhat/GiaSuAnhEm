package giasuanhem.com.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

@Controller
public class NewClassController{
	@RequestMapping(value = "/lop-moi", method = RequestMethod.GET)
	public ModelAndView newClassPage() {
		ModelAndView mav = new ModelAndView("newclass/newclass");
		return mav;
	}
}
