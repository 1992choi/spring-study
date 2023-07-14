package app.spring.restdocs;

import org.junit.jupiter.api.Test;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.boot.test.autoconfigure.restdocs.AutoConfigureRestDocs;
import org.springframework.boot.test.autoconfigure.web.servlet.AutoConfigureMockMvc;
import org.springframework.boot.test.context.SpringBootTest;
import org.springframework.context.annotation.Description;
import org.springframework.http.MediaType;
import org.springframework.restdocs.payload.JsonFieldType;
import org.springframework.test.web.servlet.MockMvc;

import static org.springframework.restdocs.mockmvc.MockMvcRestDocumentation.document;
import static org.springframework.restdocs.payload.PayloadDocumentation.fieldWithPath;
import static org.springframework.restdocs.payload.PayloadDocumentation.responseFields;
import static org.springframework.test.web.servlet.request.MockMvcRequestBuilders.get;
import static org.springframework.test.web.servlet.result.MockMvcResultMatchers.status;

@SpringBootTest
@AutoConfigureMockMvc
@AutoConfigureRestDocs
class MemberRestDocs {

    @Autowired
    private MockMvc mockMvc;

    @Test
    @Description("회원 목록 조회")
    public void findAll() throws Exception {
        this.mockMvc.perform(get("/members").accept(MediaType.APPLICATION_JSON))
                .andExpect(status().isOk())
                .andDo(document("find-members",
                        responseFields(
                                fieldWithPath("resultCode").type(JsonFieldType.STRING).description("응답 코드"),
                                fieldWithPath("resultMessage").type(JsonFieldType.STRING).description("응답 메시지"),
                                fieldWithPath("resultData").type(JsonFieldType.ARRAY).description("응답 데이터"),
                                fieldWithPath("resultData.[].memberId").type(JsonFieldType.NUMBER).description("사용자 ID"),
                                fieldWithPath("resultData.[].name").type(JsonFieldType.STRING).description("사용자 이름"),
                                fieldWithPath("resultData.[].age").type(JsonFieldType.NUMBER).description("사용자 나이")
                        )
                ));
    }

    @Test
    @Description("회원 조회")
    public void findByMemberId() throws Exception {
        this.mockMvc.perform(get("/members/40").accept(MediaType.APPLICATION_JSON))
                .andExpect(status().isOk())
                .andDo(document("find-member",
                        responseFields(
                                fieldWithPath("resultCode").type(JsonFieldType.STRING).description("응답 코드"),
                                fieldWithPath("resultMessage").type(JsonFieldType.STRING).description("응답 메시지"),
                                fieldWithPath("resultData").type(JsonFieldType.OBJECT).description("응답 데이터"),
                                fieldWithPath("resultData.memberId").type(JsonFieldType.NUMBER).description("사용자 ID"),
                                fieldWithPath("resultData.name").type(JsonFieldType.STRING).description("사용자 이름"),
                                fieldWithPath("resultData.age").type(JsonFieldType.NUMBER).description("사용자 나이")
                        )
                ));
    }

}