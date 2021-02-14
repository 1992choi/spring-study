package app.web.choi.controller;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import app.web.choi.service.BoardService;
import app.web.choi.service.MemberService;
import app.web.choi.vo.BoardVO;
import app.web.choi.vo.MemberVO;

@Controller
public class LearningController {
	
	private static final Logger logger = LoggerFactory.getLogger(LearningController.class);
	
	@Autowired 
	MemberService memberService;
	
	@Autowired 
	BoardService boardService;
	
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
	
	@RequestMapping(value = "/learning/modMember.do", method = RequestMethod.POST)
	public ModelAndView modMember(MemberVO member) {
		ModelAndView mav = new ModelAndView("redirect:/learning/mybatis.do");
		try {
			memberService.modMember(member);
		} catch (Exception e) {
			logger.error("[LearningController] modMember Exception : " + e.toString());
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
	
	@RequestMapping(value = "/learning/pagination.do", method = RequestMethod.GET)
	public ModelAndView pagination(@RequestParam(value = "title", defaultValue = "") String title,
			@RequestParam(value = "cp", defaultValue = "1") int cp,
			@RequestParam(value = "pageUnit", defaultValue = "10") int pageUnit) {
		
		ModelAndView mav = new ModelAndView("learning/pagination");
		
		// pagination START
		int paginationCnt = 10; // 페이지네이션 버튼 갯수
		int totalCount = 301;
		int startNum = 1;
		int endNum = 10;
		int finalPage = (totalCount + (pageUnit - 1)) / pageUnit; // 마지막 페이지
		
		if (cp < 1) {
			cp = 1;
		}
		
		startNum = (cp - 1) * pageUnit + 1;
		endNum = cp * pageUnit;
		
		int startPage = ((cp - 1) / pageUnit) * paginationCnt + 1;
		int endPage = startPage + paginationCnt - 1;
		if (endPage >= finalPage) {
			endPage = finalPage;
		}
		mav.addObject("cp", cp);
		mav.addObject("startPage", startPage);
		mav.addObject("endPage", endPage);
		mav.addObject("finalPage", finalPage);
		mav.addObject("pageUnit", pageUnit);
		mav.addObject("isFirstPageBlock", cp / paginationCnt == 0 ? true : false);
		// pagination END
		
		Map<String, Object> param = new HashMap<String, Object>();
		param.put("title", title);
		param.put("startNum", startNum);
		param.put("endNum", endNum);
		
		try {
			List<BoardVO> boardList = (ArrayList<BoardVO>)boardService.getBoardList(param);
			mav.addObject("boardList", boardList);			
		} catch (Exception e) {
			logger.error("[LearningController] pagination Exception : " + e.toString());
		}
		
		return mav;
	}
}
