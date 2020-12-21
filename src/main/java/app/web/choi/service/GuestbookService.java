package app.web.choi.service;

import java.util.List;

import app.web.choi.domain.Guestbook;

public interface GuestbookService {
	
	List<Guestbook> getMessageList() throws Exception;
	
	void add(Guestbook guestbook) throws Exception;
	
	void modify(Guestbook guestbook) throws Exception;
	
	void del(Guestbook guestbook) throws Exception;
	
}
