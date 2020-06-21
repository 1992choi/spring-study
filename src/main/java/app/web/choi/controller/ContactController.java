package app.web.choi.controller;

import java.util.Properties;

import javax.mail.Address;
import javax.mail.Message;
import javax.mail.MessagingException;
import javax.mail.PasswordAuthentication;
import javax.mail.Session;
import javax.mail.Transport;
import javax.mail.internet.InternetAddress;
import javax.mail.internet.MimeMessage;

import org.springframework.beans.factory.annotation.Value;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

@Controller
public class ContactController {
	
	@Value("${mail.id}") 
	private String mailId;
	
	@Value("${mail.password}") 
	private String mailPassword;

	@RequestMapping(value = "/contact.do", method = RequestMethod.GET)
	public String contact() {
		return "contact";
	}
	
	@RequestMapping(value = "/contact/sendMail.json")
    public ModelAndView sendMail(
    		@RequestParam("sender") String sender, 
    		@RequestParam("senderEmail") String senderEmail, 
    		@RequestParam("subject") String subject,
    		@RequestParam("message") String message) {
        
		ModelAndView mav = new ModelAndView("jsonView");
		 
        String recipient = "younggeunn@naver.com";
        String body = message + "\n\n\n\n\n FROM : " + sender + "(" + senderEmail + ")";
        
        Properties props = System.getProperties();
        props.put("mail.smtp.host", "smtp.naver.com");
        props.put("mail.smtp.port", 465);
        props.put("mail.smtp.auth", "true");
        props.put("mail.smtp.ssl.enable", "true");
        props.put("mail.smtp.ssl.trust", "smtp.naver.com");
        
        Session session = Session.getDefaultInstance(props, new javax.mail.Authenticator() {
            protected PasswordAuthentication getPasswordAuthentication() {
                return new PasswordAuthentication(mailId, mailPassword);
            }
        });

        MimeMessage mimeMessage = new MimeMessage(session);
       
        try {
            mimeMessage.setFrom((Address)new InternetAddress(recipient)); // 발신자의 이메일을 사용하면 인증오류 이슈로 인하여 수신자 이메일로 셋팅
            mimeMessage.setRecipient(Message.RecipientType.TO, (Address)new InternetAddress(recipient));
            mimeMessage.setSubject(subject);
            mimeMessage.setText(body);
            Transport.send(mimeMessage);
            mav.addObject("result", (Object)"success");        
        } catch (MessagingException e) {
            mav.addObject("result", (Object)"fail");
        }
        return mav;
    }
	
}
