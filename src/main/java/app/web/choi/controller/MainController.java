package app.web.choi.controller;

import org.springframework.beans.factory.annotation.Value;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

@Controller
public class MainController {
	
	@Value("${kakao.js.key}") 
	private String kakaoJsKey;
	
	@RequestMapping(value = "/main.do", method = RequestMethod.GET)
	public ModelAndView main() {
		ModelAndView mav = new ModelAndView("main");
		mav.addObject("kakaoJsKey", kakaoJsKey);
		return mav;
	}
	
	@RequestMapping(value = "/main/getPjtDetail.do")
    public ModelAndView getPjtDetail(@RequestParam("pjtName") String pjtName) {
        
		StringBuffer sb = new StringBuffer(300);
		
		if ("hf".equals(pjtName)) {
			sb.append("[한국주택금융공사]\n\n");
			sb.append("투입 전입니다.");
		} else if ("korail".equals(pjtName)) {
			sb.append("[철도공사]\n\n");
			sb.append("- 포털 사용자 화면 및 관리자 화면 개발\n");
			sb.append("- 로그인, 메인화면, 게시판 퍼블리싱 적용\n");
			sb.append("- 노후화된 서버로 인한 속도 개선 작업\n");
			sb.append("- 60여개의 업무 시스템 연동\n");
			sb.append("- SSO 연동\n");
		} else if ("nps".equals(pjtName)) {
			sb.append("[국민연금공단]\n\n");
			sb.append("- bsh배치를 통한 인사시스템 연동\n");
			sb.append("- bsh배치를 통한 사용자 권한 부여 및 회수 기능 개발\n");
			sb.append("- 퀵메뉴 및 즐겨찾기 기능 구현\n");
			sb.append("- 회의실예약 기능 개선\n");
			sb.append("- 결재 기능 개선\n");
		} else if ("nec".equals(pjtName)) {
			sb.append("[중앙선거관리위원회]\n\n");
			sb.append("- 통합검색 기능 구현을 위한 검색 엔진 서버와의 연동\n");
			sb.append("- 게시판 기능 개선\n");
			sb.append("- 알림 기능 개선\n");
		} else if ("ssis".equals(pjtName)) {
			sb.append("[사회보장정보원]");
			sb.append("- 게시판 기능 개선\n");
			sb.append("- 업무시스템 기능 개선\n");
			sb.append("- 회의실예약 기능 개선\n");
			sb.append("- 주-월간보고 웹 에디터 변경\n");
		} else if ("handy".equals(pjtName)) {
			sb.append("[핸디소프트]\n\n");
			sb.append("- 자사 ADD-ON 제품 개발(문서변환 솔루션)\n");
			sb.append("- 클라우드 그룹웨어 퍼블리싱 적용\n");
			sb.append("- 버그패치 및 분기별 버그 수정 모듈 Release\n");
			sb.append("- 고객 요구 사항에 따른 기능개선\n");
		}
		
		ModelAndView mav = new ModelAndView("jsonView");
		mav.addObject("pjtDetail", sb.toString());
        return mav;
    }
}
