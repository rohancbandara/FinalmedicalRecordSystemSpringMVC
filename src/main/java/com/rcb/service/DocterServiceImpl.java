package com.rcb.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.rcb.dao.DocterDAO;
import com.rcb.model.Docter;

@Service
@Transactional
public class DocterServiceImpl implements DocterService {

	@Autowired
	private DocterDAO docterDAO;

	@Override
	@Transactional
	public void addDocter(Docter docter) {
		docterDAO.addDocter(docter);

	}

	@Override
	@Transactional
	public List<Docter> getAllDocters() {

		return docterDAO.getAllDocters();
	}

	@Override
	@Transactional
	public void deleteDocter(Integer docterId) {
		docterDAO.deleteDocter(docterId);

	}

	public Docter getDocter(int docterId) {

		return docterDAO.getDocter(docterId);
	}

	public Docter updateDocter(Docter docter) {

		return docterDAO.updateDocter(docter);
	}

	public void setDocterDAO(DocterDAO docterDAO) {
		this.docterDAO = docterDAO;
	}
}
