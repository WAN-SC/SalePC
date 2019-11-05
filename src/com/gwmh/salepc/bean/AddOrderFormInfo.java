package com.gwmh.salepc.bean;
/**
 * @author 郭玉超
 *	这是向数据库添加订单信息的实体类
 */
public class AddOrderFormInfo {
	
	private Integer did ;//交易id
	private int dnumber ;//交易数量
	private Integer dempid ;//负责人id
	private String ddate ;//交易时间
	private Double dmoney ;//售价
	private String dmode ;//支付方式
	private String dmessage ;//备注
	private String dclientname ;//客户姓名
	private String dcommfrom ;//商品来源
	
	public AddOrderFormInfo() {
	}

	public AddOrderFormInfo(Integer did, int dnumber, Integer dempid, String ddate, Double dmoney, String dmode,
			String dmessage, String dclientname, String dcommfrom) {
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
	}

	@Override
	public String toString() {
		return "AddOrderFormInfo [did=" + did + ", dnumber=" + dnumber + ", dempid=" + dempid + ", ddate=" + ddate
				+ ", dmoney=" + dmoney + ", dmode=" + dmode + ", dmessage=" + dmessage + ", dclientname=" + dclientname
				+ ", dcommfrom=" + dcommfrom + "]";
	}

	public Integer getDid() {
		return did;
	}

	public void setDid(Integer did) {
		this.did = did;
	}

	public int getDnumber() {
		return dnumber;
	}

	public void setDnumber(int dnumber) {
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

	public Double getDmoney() {
		return dmoney;
	}

	public void setDmoney(Double dmoney) {
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
	
	
	
	
	
}
