package com.gwmh.salepc.bean;

public class Dealinfo {

	private Integer did;
	private Integer dnumber;
	private Integer dempid;
	private String ddate;
	private Integer dmoney;
	private String dmode;
	private String dmessage;
	private String dclientname;
	private String dcommfrom;
	private Emp emp;
	
	public Dealinfo() {}

	public Dealinfo(Integer did, Integer dnumber, Integer dempid, String ddate, Integer dmoney, String dmode,
			String dmessage, String dclientname, String dcommfrom, Emp emp) {
		super();
		this.did = did;
		this.dnumber = dnumber;
		this.dempid = dempid;
		this.ddate = ddate;
		this.dmoney = dmoney;
		this.dmode = dmode;
		this.dmessage = dmessage;
		this.dclientname = dclientname;
		this.dcommfrom = dcommfrom;
		this.emp = emp;
	}

	public Integer getDid() {
		return did;
	}

	public void setDid(Integer did) {
		this.did = did;
	}

	public Integer getDnumber() {
		return dnumber;
	}

	public void setDnumber(Integer dnumber) {
		this.dnumber = dnumber;
	}

	public Integer getDempid() {
		return dempid;
	}

	public void setDempid(Integer dempid) {
		this.dempid = dempid;
	}

	public String getDdate() {
		return ddate;
	}

	public void setDdate(String ddate) {
		this.ddate = ddate;
	}

	public Integer getDmoney() {
		return dmoney;
	}

	public void setDmoney(Integer dmoney) {
		this.dmoney = dmoney;
	}

	public String getDmode() {
		return dmode;
	}

	public void setDmode(String dmode) {
		this.dmode = dmode;
	}

	public String getDmessage() {
		return dmessage;
	}

	public void setDmessage(String dmessage) {
		this.dmessage = dmessage;
	}

	public String getDclientname() {
		return dclientname;
	}

	public void setDclientname(String dclientname) {
		this.dclientname = dclientname;
	}

	public String getDcommfrom() {
		return dcommfrom;
	}

	public void setDcommfrom(String dcommfrom) {
		this.dcommfrom = dcommfrom;
	}

	public Emp getEmp() {
		return emp;
	}

	public void setEmp(Emp emp) {
		this.emp = emp;
	}
	
	
}
