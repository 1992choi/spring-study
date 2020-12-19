package app.web.choi.controller;

import java.util.List;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

import app.web.choi.domain.Guestbook;
import app.web.choi.service.GuestbookService;

@Controller
public class GuestbookController {
	
	private static final Logger logger = LoggerFactory.getLogger(GuestbookController.class);
	
    @Autowired
    private GuestbookService guestbookService;

    @RequestMapping(value = "/guestbook/list.do", method = RequestMethod.GET)
	public ModelAndView getList() {
		
		ModelAndView mav = new ModelAndView("learning/guestbook");
		try {
			List<Guestbook> guestbookList = guestbookService.getMessageList();
			System.out.println(guestbookList);
			mav.addObject("list", guestbookList);
		} catch (Exception e) {
			logger.error("[GuestbookController] getList Exception : " + e.toString());
		}
		
		return mav;
	}
}
