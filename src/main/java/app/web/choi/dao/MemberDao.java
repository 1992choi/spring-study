package app.web.choi.dao;

import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;
import org.springframework.transaction.annotation.Transactional;

import app.web.choi.vo.MemberVO;

@Repository
public class MemberDao {
	
	private final String NAMESPACE = "mappers.memberMapper.";

	@Autowired 
	SqlSession sqlSession;	
	
	public List<MemberVO> selectMemberList() throws Exception {
		return sqlSession.selectList(NAMESPACE + "memberList");
	}
	
	@Transactional
	public void insertMember(MemberVO member) throws Exception {
		sqlSession.insert(NAMESPACE + "insertMember", member);
	}
	
	@Transactional
	public void deleteMember(String memberId) throws Exception {
		sqlSession.delete(NAMESPACE + "deleteMember", memberId);
	}
	
}
