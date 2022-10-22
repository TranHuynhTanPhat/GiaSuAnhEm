package giasuanhem.com.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

@Controller
public class HomeController {
  
   @RequestMapping(value = "/trang-chu", method = RequestMethod.GET)
   public ModelAndView homePage() {
      ModelAndView mav = new ModelAndView("home/home");
      return mav;
   }
  
   @RequestMapping(value = "/springmvc", method = RequestMethod.GET)
   public ModelAndView springMVCPage() {
      ModelAndView mav = new ModelAndView("springmvc");
      return mav;
   }
   @RequestMapping(value="/gioi-thieu", method=RequestMethod.GET)
   public ModelAndView instructionPage() {
	   ModelAndView mav = new ModelAndView("home/introduce");
	      return mav;
   }
   @RequestMapping(value="/tuyen-dung", method=RequestMethod.GET)
   public ModelAndView recruitPage() {
	   ModelAndView mav = new ModelAndView("home/recruit");
	      return mav;
   }
   @RequestMapping(value="muc-phi-gia-su", method=RequestMethod.GET)
   public ModelAndView feeTutorPage() {
	   ModelAndView mav = new ModelAndView("home/feeTutor");
	      return mav;
   }
   @RequestMapping(value="/lien-he", method=RequestMethod.GET)
   public ModelAndView contactPage() {
	   ModelAndView mav = new ModelAndView("home/contact");
	      return mav;
   }
}