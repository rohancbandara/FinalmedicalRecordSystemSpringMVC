package com.rcb.dao;

import java.util.List;

import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.rcb.model.Docter;

@Repository
public class DocterDAOimpl implements DocterDAO {

	@Autowired
	private SessionFactory sessionFactory;

	public void addDocter(Docter docter) {
		sessionFactory.getCurrentSession().saveOrUpdate(docter);
	}

	@SuppressWarnings("unchecked")
	public List<Docter> getAllDocters() {

		return sessionFactory.getCurrentSession().createQuery("from Docter").list();
	}

	public Docter getDocter(int docterId) {

		return (Docter) sessionFactory.getCurrentSession().get(Docter.class, docterId);
	}

	@Override
	public Docter updateDocter(Docter docter) {
		sessionFactory.getCurrentSession().update(docter);
		return docter;
	}

	@Override
	public void deleteDocter(Integer docterId) {
		Docter docter = (Docter) sessionFactory.getCurrentSession().load(Docter.class, docterId);
		if (null != docter) {
			this.sessionFactory.getCurrentSession().delete(docter);
		}
	}

}
