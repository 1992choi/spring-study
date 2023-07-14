package app.spring.controller;

import app.spring.domain.Member;
import app.spring.service.MemberService;
import org.junit.jupiter.api.Assertions;
import org.junit.jupiter.api.Test;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.boot.test.context.SpringBootTest;
import org.springframework.transaction.annotation.Transactional;

@SpringBootTest
@Transactional
class MemberControllerTest {

    @Autowired
    MemberService memberService;

    @Test
    public void save() {
        Member member1 = Member.builder()
                .name("member")
                .age(10)
                .build();

        Long memberId = memberService.saveMember(member1);

        Assertions.assertEquals(member1.getMemberId(), memberId);
    }

    @Test
    public void findMember() {
        Member member1 = Member.builder()
                .name("member-1")
                .age(10)
                .build();

        memberService.saveMember(member1);

        Member member2 = Member.builder()
                .name("member-2")
                .age(20)
                .build();

        memberService.saveMember(member2);

        Member findMember = memberService.findMember(member2.getMemberId());

        Assertions.assertEquals("member-2", findMember.getName());
    }

}