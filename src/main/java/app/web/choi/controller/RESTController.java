package app.web.choi.controller;

import java.util.ArrayList;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

import app.web.choi.service.MemberService;
import app.web.choi.vo.MemberVO;

@Controller
public class RESTController {
	
	private static final Logger logger = LoggerFactory.getLogger(RESTController.class);
	
	@Autowired 
	MemberService memberService;
	
	@RequestMapping(value = "/members", method = RequestMethod.GET)
	public ModelAndView getMembers() {
		ModelAndView mav = new ModelAndView("jsonView");
		try {
			ArrayList<MemberVO> memberList = (ArrayList<MemberVO>)memberService.getMemberList();
			mav.addObject("memberList", memberList);
		} catch (Exception e) {
			logger.error("[RESTController] getMembers Exception : " + e.toString());
		}
		return mav;
	}
	
	@RequestMapping(value = "/member/{id}", method = RequestMethod.GET)
	public ModelAndView getMember(@PathVariable ("id") String memberId) {
		ModelAndView mav = new ModelAndView("jsonView");
		// SELECT ACTION
		mav.addObject("result", "SELECT SUCCESS");
		return mav;
	}
	
	@RequestMapping(value = "/member", method = RequestMethod.POST)
	public ModelAndView addMember(@RequestBody MemberVO member) {
		ModelAndView mav = new ModelAndView("jsonView");
		// ADD ACTION
		mav.addObject("result", "ADD SUCCESS");
		return mav;
	}
	
	@RequestMapping(value = "/member/{id}", method = RequestMethod.PUT)
	public ModelAndView modMember(@PathVariable ("id") String memberId, @RequestBody MemberVO member) {
		ModelAndView mav = new ModelAndView("jsonView");
		// MODIFY ACTION
		mav.addObject("result", "MODIFY SUCCESS");
		return mav;
	}
	
	@RequestMapping(value = "/member/{id}", method = RequestMethod.DELETE)
	public ModelAndView deleteMember(@PathVariable ("id") String memberId) {
		ModelAndView mav = new ModelAndView("jsonView");
		// DELETE ACTION
		mav.addObject("result", "DELETE SUCCESS");
		return mav;
	}
	
}
