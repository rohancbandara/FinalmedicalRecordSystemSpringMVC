package com.rcb.service;

import java.util.List;

import com.rcb.model.Docter;

public interface DocterService {

	public void addDocter(Docter docter);

	public List<Docter> getAllDocters();

	public void deleteDocter(Integer docterId);

	public Docter getDocter(int docterId);

	public Docter updateDocter(Docter docter);
}
