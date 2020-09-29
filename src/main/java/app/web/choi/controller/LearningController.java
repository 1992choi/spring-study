package app.web.choi.controller;

import java.util.ArrayList;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

import app.web.choi.dao.MemberDao;
import app.web.choi.vo.MemberVO;

@Controller
public class LearningController {
	
	private static final Logger logger = LoggerFactory.getLogger(LearningController.class);
	
	@Autowired 
	MemberDao memberDao;
	
	@RequestMapping(value = "/learning/algorithm.do", method = RequestMethod.GET)
	public ModelAndView algorithm() {
		ModelAndView mav = new ModelAndView("learning/algorithm");
		return mav;
	}
	
	@RequestMapping(value = "/learning/restful.do", method = RequestMethod.GET)
	public ModelAndView restful() {
		
		ModelAndView mav = new ModelAndView("learning/restful");
		
		try {
			ArrayList<MemberVO> memberList = (ArrayList<MemberVO>)memberDao.selectMemberList();
			mav.addObject("memberList", memberList);
		} catch (Exception e) {
			logger.error("[restful] Exception : " + e.toString());
		}		
		
		return mav;
	}
	
}
