package com.gwmh.salepc.bean;
/**
 * @author 郭玉超
 *	这是退单信息的实体类   主要是为了传递退单信息
 */
public class BackOrderForm {
	
	private Integer bid ;//退单id
	private Integer bdealinfo ;//交易id
	private String bbackcause ;//退单原因
	private Integer bempid ;//负责人id
	private String bclientname ;//退单客户姓名
	private String bmassage ;//退单备注
	
	public BackOrderForm() {
	}

	public BackOrderForm(Integer bid, Integer bdealinfo, String bbackcause, Integer bempid, String bclientname,
			String bmassage) {
		super();
		this.bid = bid;
		this.bdealinfo = bdealinfo;
		this.bbackcause = bbackcause;
		this.bempid = bempid;
		this.bclientname = bclientname;
		this.bmassage = bmassage;
	}

	@Override
	public String toString() {
		return "BackOrderForm [bid=" + bid + ", bdealinfo=" + bdealinfo + ", bbackcause=" + bbackcause + ", bempid="
				+ bempid + ", bclientname=" + bclientname + ", bmassage=" + bmassage + "]";
	}

	public Integer getBid() {
		return bid;
	}

	public void setBid(Integer bid) {
		this.bid = bid;
	}

	public Integer getBdealinfo() {
		return bdealinfo;
	}

	public void setBdealinfo(Integer bdealinfo) {
		this.bdealinfo = bdealinfo;
	}

	public String getBbackcause() {
		return bbackcause;
	}

	public void setBbackcause(String bbackcause) {
		this.bbackcause = bbackcause;
	}

	public Integer getBempid() {
		return bempid;
	}

	public void setBempid(Integer bempid) {
		this.bempid = bempid;
	}

	public String getBclientname() {
		return bclientname;
	}

	public void setBclientname(String bclientname) {
		this.bclientname = bclientname;
	}

	public String getBmassage() {
		return bmassage;
	}

	public void setBmassage(String bmassage) {
		this.bmassage = bmassage;
	}
	
	
}
