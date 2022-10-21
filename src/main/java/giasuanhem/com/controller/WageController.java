package giasuanhem.com.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

@Controller
public class WageController{
	@RequestMapping(value = "/bang-luong", method = RequestMethod.GET)
	public ModelAndView wagePage() {
		ModelAndView mav = new ModelAndView("wage/wage");
		return mav;
	}
}
