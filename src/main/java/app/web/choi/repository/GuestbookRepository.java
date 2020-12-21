package app.web.choi.repository;

import java.util.List;
import javax.persistence.EntityManager;
import javax.persistence.PersistenceContext;
import javax.persistence.TypedQuery;

import org.springframework.stereotype.Repository;

import app.web.choi.domain.Guestbook;

@Repository
public class GuestbookRepository {

	@PersistenceContext
	private EntityManager em;

	public List<Guestbook> findAll() {
		String sql = "SELECT gb FROM Guestbook gb";
		TypedQuery<Guestbook> query = em.createQuery(sql, Guestbook.class);
		return query.getResultList();
	}
	
	public void add(Guestbook guestbook) {
		em.persist(guestbook);
	}
	
	public void modify(Guestbook guestbook) {
		String sql = "SELECT gb from Guestbook gb WHERE gb.id = :id";
	    TypedQuery<Guestbook> query = em.createQuery(sql, Guestbook.class);
	    query.setParameter("id", guestbook.getId());
	    
	    List<Guestbook> guestbookList = query.getResultList();
	    if (guestbookList != null && guestbookList.size() > 0) {
	    	Guestbook updateGB = guestbookList.get(0);
	    	updateGB.setMessage("This is a modified message.");
	    	em.persist(updateGB);
	    }
	}
	
	public void del(Guestbook guestbook) {
		String sql = "SELECT gb from Guestbook gb WHERE gb.id = :id";
	    TypedQuery<Guestbook> query = em.createQuery(sql, Guestbook.class);
	    query.setParameter("id", guestbook.getId());
	    
	    List<Guestbook> guestbookList = query.getResultList();
	    if (guestbookList != null && guestbookList.size() > 0) {
	    	em.remove(guestbookList.get(0));
	    }
	}

}
