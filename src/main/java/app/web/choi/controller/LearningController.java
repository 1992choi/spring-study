package app.web.choi.controller;

import java.util.ArrayList;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import app.web.choi.service.MemberService;
import app.web.choi.vo.MemberVO;

@Controller
public class LearningController {
	
	private static final Logger logger = LoggerFactory.getLogger(LearningController.class);
	
	@Autowired 
	MemberService memberService;
	
	@RequestMapping(value = "/learning/algorithm.do", method = RequestMethod.GET)
	public ModelAndView algorithm() {
		ModelAndView mav = new ModelAndView("learning/algorithm");
		return mav;
	}
	
	@RequestMapping(value = "/learning/mybatis.do", method = RequestMethod.GET)
	public ModelAndView getMemberList() {
		ModelAndView mav = new ModelAndView("learning/mybatis");
		try {
			ArrayList<MemberVO> memberList = (ArrayList<MemberVO>)memberService.getMemberList();
			mav.addObject("memberList", memberList);
		} catch (Exception e) {
			logger.error("[LearningController] mybatis Exception : " + e.toString());
		}		
		
		return mav;
	}
	
	@RequestMapping(value = "/learning/addMember.do", method = RequestMethod.POST)
	public ModelAndView addMember(MemberVO member) {
		ModelAndView mav = new ModelAndView("redirect:/learning/mybatis.do");
		try {
			memberService.addMember(member);
		} catch (Exception e) {
			logger.error("[LearningController] addMember Exception : " + e.toString());
		}
		
		return mav;
	}
	
	@RequestMapping(value = "/learning/deleteMember.do", method = RequestMethod.GET)
	public ModelAndView deleteMember(@RequestParam("memberId") String memberId) {
		
		ModelAndView mav = new ModelAndView("redirect:/learning/mybatis.do");
		try {
			memberService.deleteMember(memberId);
		} catch (Exception e) {
			logger.error("[LearningController] deleteMember Exception : " + e.toString());
		}
		
		return mav;
	}		
	
}
