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

}
