package app.web.choi.service;

import java.util.List;

import app.web.choi.vo.MemberVO;

public interface MemberService {
	
	List<MemberVO> getMemberList() throws Exception;
	
	void addMember(MemberVO member) throws Exception;
	
	void modMember(MemberVO member) throws Exception;
	
	void deleteMember(String memberId) throws Exception;
	
}
