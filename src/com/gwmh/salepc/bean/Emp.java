package com.gwmh.salepc.bean;

import java.util.Date;

import org.springframework.format.annotation.DateTimeFormat;

public class Emp {
	private Integer eid;
	private String ename;
	private String epwd;
	private String esex;
	private Integer eage;
	@DateTimeFormat(pattern="yyyy-MM-dd")
	private Date ejobDate;
	private Integer eroleId;
	private String email;
	private String estate;
	
	//入职时间范围
	private String dateMin;
	private String dateMax;
	
	public String getDateMin() {
		return dateMin;
	}



	public void setDateMin(String dateMin) {
		this.dateMin = dateMin;
	}



	public String getDateMax() {
		return dateMax;
	}



	public void setDateMax(String dateMax) {
		this.dateMax = dateMax;
	}

	
	public Emp() {
	}

	
	
	public Emp(Integer eid, String ename, String epwd, Date ejobDate, Integer eroleId, String estate) {
		super();
		this.eid = eid;
		this.ename = ename;
		this.epwd = epwd;
		this.ejobDate = ejobDate;
		this.eroleId = eroleId;
		this.estate = estate;
	}



	public Emp(Integer eid, String ename, String epwd, String esex, Integer eage, Date ejobDate, Integer eroleId,
			String email, String estate) {
		super();
		this.eid = eid;
		this.ename = ename;
		this.epwd = epwd;
		this.esex = esex;
		this.eage = eage;
		this.ejobDate = ejobDate;
		this.eroleId = eroleId;
		this.email = email;
		this.estate = estate;
	}



	@Override
	public String toString() {
		return "Emp [eid=" + eid + ", ename=" + ename + ", epwd=" + epwd + ", esex=" + esex + ", eage=" + eage
				+ ", ejobDate=" + ejobDate + ", eroleId=" + eroleId + ", email=" + email + ", estate=" + estate + "]";
	}



	public Integer getEid() {
		return eid;
	}



	public void setEid(Integer eid) {
		this.eid = eid;
	}



	public String getEname() {
		return ename;
	}



	public void setEname(String ename) {
		this.ename = ename;
	}



	public String getEpwd() {
		return epwd;
	}



	public void setEpwd(String epwd) {
		this.epwd = epwd;
	}



	public String getEsex() {
		return esex;
	}



	public void setEsex(String esex) {
		this.esex = esex;
	}



	public Integer getEage() {
		return eage;
	}



	public void setEage(Integer eage) {
		this.eage = eage;
	}



	public Date getEjobDate() {
		return ejobDate;
	}



	public void setEjobDate(Date ejobDate) {
		this.ejobDate = ejobDate;
	}



	public Integer getEroleId() {
		return eroleId;
	}



	public void setEroleId(Integer eroleId) {
		this.eroleId = eroleId;
	}



	public String getEmail() {
		return email;
	}



	public void setEmail(String email) {
		this.email = email;
	}



	public String getEstate() {
		return estate;
	}



	public void setEstate(String estate) {
		this.estate = estate;
	}
	
	
	
	
}
