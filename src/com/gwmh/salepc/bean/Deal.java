package com.gwmh.salepc.bean;

public class Deal {

	private Integer deid;
	private String dename;
	private Integer decommid;
	private Dealinfo dealinfo;
	
	public Deal() {}

	public Deal(Integer deid, String dename, Integer decommid, Dealinfo dealinfo) {
		super();
		this.deid = deid;
		this.dename = dename;
		this.decommid = decommid;
		this.dealinfo = dealinfo;
	}

	public Integer getDeid() {
		return deid;
	}

	public void setDeid(Integer deid) {
		this.deid = deid;
	}

	public String getDename() {
		return dename;
	}

	public void setDename(String dename) {
		this.dename = dename;
	}

	public Integer getDecommid() {
		return decommid;
	}

	public void setDecommid(Integer decommid) {
		this.decommid = decommid;
	}

	public Dealinfo getDealinfo() {
		return dealinfo;
	}

	public void setDealinfo(Dealinfo dealinfo) {
		this.dealinfo = dealinfo;
	}
	
	
}
