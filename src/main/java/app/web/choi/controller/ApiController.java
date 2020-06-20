package app.web.choi.controller;

import org.springframework.beans.factory.annotation.Value;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

@Controller
public class ApiController {
	
	@Value("${kakao.js.key}") 
	private String kakaoJsKey;
	
	@RequestMapping(value = "/api.do", method = RequestMethod.GET)
	public ModelAndView kakao() {
		ModelAndView mav = new ModelAndView("api");
		mav.addObject("kakaoJsKey", kakaoJsKey);
		return mav;
	}
	
}
