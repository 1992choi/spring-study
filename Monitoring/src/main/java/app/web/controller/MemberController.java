package app.web.controller;

import app.web.domain.Member;
import app.web.domain.ResponseData;
import app.web.service.MemberService;
import lombok.RequiredArgsConstructor;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.*;

@RestController
@RequiredArgsConstructor
public class MemberController {

    private final MemberService memberService;

    /**
     * 회원 목록 조회
     */
    @GetMapping("/members")
    public ResponseEntity findMembers() {
        ResponseData responseData = ResponseData.builder()
                .resultCode("0000")
                .resultMessage("SUCCESS")
                .resultData(memberService.findAllMember())
                .build();

        return ResponseEntity
                .ok()
                .body(responseData);
    }

    /**
     * 회원 조회
     */
    @GetMapping("/members/{memberId}")
    public ResponseEntity findMember(@PathVariable Long memberId) {
        ResponseData responseData = ResponseData.builder()
                .resultCode("0000")
                .resultMessage("SUCCESS")
                .resultData(memberService.findMember(memberId))
                .build();

        return ResponseEntity
                .ok()
                .body(responseData);
    }

    /**
     * 회원 등록
     */
    @PostMapping("/members")
    public ResponseEntity saveMember(@RequestBody Member member) {
        // Long saveId = memberService.saveMember(member);

        ResponseData responseData = ResponseData.builder()
                .resultCode("0000")
                .resultMessage("SUCCESS")
                .resultData(memberService.saveMember(member))
                .build();

        return ResponseEntity
                .ok()
                .body(responseData);
    }

}
