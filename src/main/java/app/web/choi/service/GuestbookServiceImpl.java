package app.web.choi.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import app.web.choi.domain.Guestbook;
import app.web.choi.repository.GuestbookRepository;

@Service
public class GuestbookServiceImpl implements GuestbookService {

	@Autowired
    private GuestbookRepository guestbookRepository;
    
	@Override
	public List<Guestbook> getMessageList() throws Exception {
		return guestbookRepository.findAll();
	}

}
