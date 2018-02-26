package com.rcb.dao;

import java.util.List;

import com.rcb.model.Docter;

public interface DocterDAO {

	public void addDocter(Docter docter);

	public List<Docter> getAllDocters();

	public void deleteDocter(Integer docterId);

	public Docter updateDocter(Docter docter);

	public Docter getDocter(int docterId);
}
