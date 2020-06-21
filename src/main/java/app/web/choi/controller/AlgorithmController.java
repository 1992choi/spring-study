package app.web.choi.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

@Controller
public class AlgorithmController {
	
	@RequestMapping(value = "/algorithm.do", method = RequestMethod.GET)
	public ModelAndView algorithm(@RequestParam("page") String page) {
		ModelAndView mav = new ModelAndView("algorithm/" + page);
		return mav;
	}
	
}
