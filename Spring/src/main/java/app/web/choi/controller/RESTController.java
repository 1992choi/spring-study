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
			mav.addObject("result", "SELECT SUCCESS");
		} catch (Exception e) {
			mav.addObject("result", "SELECT FAIL");
			logger.error("[RESTController] getMembers Exception : " + e.toString());
		}
		return mav;
	}
	
	@RequestMapping(value = "/member/{id}", method = RequestMethod.GET)
	public ModelAndView getMember(@PathVariable ("id") String memberId) {
		ModelAndView mav = new ModelAndView("jsonView");
		try {
			MemberVO member = memberService.getMember(memberId);
			mav.addObject("member", member);
			mav.addObject("result", "SELECT SUCCESS");
		} catch (Exception e) {
			mav.addObject("result", "SELECT FAIL");
			logger.error("[RESTController] getMember Exception : " + e.toString());
		}
		return mav;
	}
	
	@RequestMapping(value = "/member", method = RequestMethod.POST)
	public ModelAndView addMember(@RequestBody MemberVO member) {
		ModelAndView mav = new ModelAndView("jsonView");
		try {
			memberService.addMember(member);
			mav.addObject("result", "ADD SUCCESS");
		} catch (Exception e) {
			mav.addObject("result", "ADD FAIL");
			logger.error("[RESTController] addMember Exception : " + e.toString());
		}
		return mav;
	}
	
	@RequestMapping(value = "/member/{id}", method = RequestMethod.PUT)
	public ModelAndView modMember(@PathVariable ("id") String memberId, @RequestBody MemberVO member) {
		ModelAndView mav = new ModelAndView("jsonView");
		try {
			member.setMemberId(memberId);
			memberService.modMember(member);
			mav.addObject("result", "MODIFY SUCCESS");
		} catch (Exception e) {
			mav.addObject("result", "MODIFY FAIL");
			logger.error("[RESTController] modMember Exception : " + e.toString());
		}
		return mav;
	}
	
	@RequestMapping(value = "/member/{id}", method = RequestMethod.DELETE)
	public ModelAndView deleteMember(@PathVariable ("id") String memberId) {
		ModelAndView mav = new ModelAndView("jsonView");
		try {
			memberService.deleteMember(memberId);
			mav.addObject("result", "DELETE SUCCESS");
		} catch (Exception e) {
			mav.addObject("result", "DELETE FAIL");
			logger.error("[RESTController] deleteMember Exception : " + e.toString());
		}
		return mav;
	}
	
}
