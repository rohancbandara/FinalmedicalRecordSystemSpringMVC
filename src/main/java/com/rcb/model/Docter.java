package com.rcb.model;

import java.io.Serializable;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Table;

@Entity
@Table(name = "tbl_docter")
public class Docter implements Serializable {
	private static final long serialVersionUID = -3465813074586302847L;

	@Id
	@GeneratedValue(strategy = GenerationType.AUTO)
	private int dId;
	@Column
	private String dFname;
	@Column
	private String dLname;
	@Column
	private String dDob;
	@Column
	private String dEmail;
	@Column
	private String dSpecile;
	@Column
	private String dCreat;
	@Column
	private int dIsDelete;

	public int getdId() {
		return dId;
	}

	public void setdId(int dId) {
		this.dId = dId;
	}

	public String getdFname() {
		return dFname;
	}

	public void setdFname(String dFname) {
		this.dFname = dFname;
	}

	public String getdLname() {
		return dLname;
	}

	public void setdLname(String dLname) {
		this.dLname = dLname;
	}

	public String getdDob() {
		return dDob;
	}

	public void setdDob(String dDob) {
		this.dDob = dDob;
	}

	public String getdEmail() {
		return dEmail;
	}

	public void setdEmail(String dEmail) {
		this.dEmail = dEmail;
	}

	public String getdSpecile() {
		return dSpecile;
	}

	public void setdSpecile(String dSpecile) {
		this.dSpecile = dSpecile;
	}

	public String getdCreat() {
		return dCreat;
	}

	public void setdCreat(String dCreat) {
		this.dCreat = dCreat;
	}

	public int getdIsDelete() {
		return dIsDelete;
	}

	public void setdIsDelete(int dIsDelete) {
		this.dIsDelete = dIsDelete;
	}

}
