package app.web.choi.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import app.web.choi.dao.MemberDao;
import app.web.choi.vo.MemberVO;

@Service
public class MemberServiceImpl implements MemberService {

	@Autowired
	MemberDao memberDao;
	
	@Override
	public List<MemberVO> getMemberList() throws Exception {
		return memberDao.selectMemberList();
	}
	
	@Override
	public void addMember(MemberVO member) throws Exception {
		memberDao.insertMember(member);
	}
	
	@Override
	public void modMember(MemberVO member) throws Exception {
		memberDao.updateMember(member);
	}
	
	@Override
	public void deleteMember(String memberId) throws Exception {
		memberDao.deleteMember(memberId);
	}

}
