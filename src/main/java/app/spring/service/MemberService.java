package app.spring.service;

import app.spring.domain.Member;
import app.spring.repository.MemberRepository;
import lombok.RequiredArgsConstructor;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import java.util.List;

@Service
@Transactional(readOnly = true)
@RequiredArgsConstructor
public class MemberService {

    private final MemberRepository memberRepository;

    /**
     * 회원 등록
     */
    public Long saveMember(Member member) {
        return memberRepository.save(member).getMemberId();
    }

    /**
     * 회원 전체 조회
     */
    public List<Member> findAllMember() {
        return memberRepository.findAll();
    }

    /**
     * 회원 조회
     */
    public Member findMember(Long memberId) {
        return memberRepository.findByMemberId(memberId);
    }

}
