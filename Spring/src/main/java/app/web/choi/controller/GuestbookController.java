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
			mav.addObject("list", guestbookList);
		} catch (Exception e) {
			logger.error("[GuestbookController] getList Exception : " + e.toString());
		}
		
		return mav;
	}
    
    @RequestMapping(value = "/guestbook/add.do", method = RequestMethod.POST)
	public ModelAndView add(Guestbook guestbook) {
		
    	ModelAndView mav = new ModelAndView("redirect:/guestbook/list.do");
		try {
			guestbookService.add(guestbook);
		} catch (Exception e) {
			logger.error("[GuestbookController] add Exception : " + e.toString());
		}
		
		return mav;
	}
    
    @RequestMapping(value = "/guestbook/modify.do", method = RequestMethod.GET)
	public ModelAndView modify(Guestbook guestbook) {
		
    	ModelAndView mav = new ModelAndView("redirect:/guestbook/list.do");
    	try {
			guestbookService.modify(guestbook);
		} catch (Exception e) {
			logger.error("[GuestbookController] modify Exception : " + e.toString());
		}
		
		return mav;
	}
    
    @RequestMapping(value = "/guestbook/delete.do", method = RequestMethod.GET)
	public ModelAndView delete(Guestbook guestbook) {
		
    	ModelAndView mav = new ModelAndView("redirect:/guestbook/list.do");
		try {
			guestbookService.del(guestbook);
		} catch (Exception e) {
			logger.error("[GuestbookController] delete Exception : " + e.toString());
		}
		
		return mav;
	}
}
