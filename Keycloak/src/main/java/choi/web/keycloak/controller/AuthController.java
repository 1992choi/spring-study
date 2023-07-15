package choi.web.keycloak.controller;

import lombok.RequiredArgsConstructor;
import lombok.extern.slf4j.Slf4j;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RestController;

@RestController
@RequiredArgsConstructor
@Slf4j
public class AuthController {

    @GetMapping("/all/access")
    public ResponseEntity<String> all() {
        log.info("### access ALL");
        return ResponseEntity.ok("모두 접근");
    }

    @GetMapping("/user/access")
    public ResponseEntity<String> user() {
        log.info("### access USER");
        return ResponseEntity.ok("user만 가능");
    }

    @GetMapping("/admin/access")
    public ResponseEntity<String> admin() {
        log.info("### access ADMIN");
        return ResponseEntity.ok("admin만 가능");
    }

}
