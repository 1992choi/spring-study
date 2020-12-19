package app.web.choi.service;

import java.util.List;

import app.web.choi.domain.Guestbook;

public interface GuestbookService {
	
	List<Guestbook> getMessageList() throws Exception;
	
}
