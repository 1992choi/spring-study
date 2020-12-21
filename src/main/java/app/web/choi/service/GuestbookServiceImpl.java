package app.web.choi.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import app.web.choi.domain.Guestbook;
import app.web.choi.repository.GuestbookRepository;

@Service
@Transactional
public class GuestbookServiceImpl implements GuestbookService {

	@Autowired
    private GuestbookRepository guestbookRepository;
    
	@Override
	public List<Guestbook> getMessageList() throws Exception {
		return guestbookRepository.findAll();
	}

	@Override
	public void add(Guestbook guestbook) throws Exception {
		guestbookRepository.add(guestbook);		
	}
	
	@Override
	public void modify(Guestbook guestbook) throws Exception {
		guestbookRepository.modify(guestbook);		
	}
	
	@Override
	public void del(Guestbook guestbook) throws Exception {
		guestbookRepository.del(guestbook);		
	}

}
