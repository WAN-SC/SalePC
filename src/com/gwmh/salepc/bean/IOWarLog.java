package com.gwmh.salepc.bean;
/**
 * @author 郭玉超
 * 这是查询进出库记录时的实体类   主要是起到传递数据的作用
 */
public class IOWarLog {
	
	private Integer number ;//序号
	private Integer id;//进出库记录id
	private String commmodel ;//商品型号
	private String commname ;//商品名称
	private String commtype ;//商品型号
	private String yuanware;//原仓库
	private String mubiaoware ;//目标仓库
	private int num ;//运输数量
	private double price ;//进价
	private String emp ;//负责人
	private String date ;//运输时间
	private String yuanyou ;//原由
	private String text ;//备注
	public IOWarLog() {
	}
	public IOWarLog(Integer number, Integer id, String commmodel, String commname, String commtype, String yuanware,
			String mubiaoware, int num, double price, String emp, String date, String yuanyou, String text) {
		super();
		this.number = number;
		this.id = id;
		this.commmodel = commmodel;
		this.commname = commname;
		this.commtype = commtype;
		this.yuanware = yuanware;
		this.mubiaoware = mubiaoware;
		this.num = num;
		this.price = price;
		this.emp = emp;
		this.date = date;
		this.yuanyou = yuanyou;
		this.text = text;
	}
	@Override
	public String toString() {
		return "IOWarLog [number=" + number + ", id=" + id + ", commmodel=" + commmodel + ", commname=" + commname
				+ ", commtype=" + commtype + ", yuanware=" + yuanware + ", mubiaoware=" + mubiaoware + ", num=" + num
				+ ", price=" + price + ", emp=" + emp + ", date=" + date + ", yuanyou=" + yuanyou + ", text=" + text
				+ "]";
	}
	public Integer getNumber() {
		return number;
	}
	public void setNumber(Integer number) {
		this.number = number;
	}
	public Integer getId() {
		return id;
	}
	public void setId(Integer id) {
		this.id = id;
	}
	public String getCommmodel() {
		return commmodel;
	}
	public void setCommmodel(String commmodel) {
		this.commmodel = commmodel;
	}
	public String getCommname() {
		return commname;
	}
	public void setCommname(String commname) {
		this.commname = commname;
	}
	public String getCommtype() {
		return commtype;
	}
	public void setCommtype(String commtype) {
		this.commtype = commtype;
	}
	public String getYuanware() {
		return yuanware;
	}
	public void setYuanware(String yuanware) {
		this.yuanware = yuanware;
	}
	public String getMubiaoware() {
		return mubiaoware;
	}
	public void setMubiaoware(String mubiaoware) {
		this.mubiaoware = mubiaoware;
	}
	public int getNum() {
		return num;
	}
	public void setNum(int num) {
		this.num = num;
	}
	public double getPrice() {
		return price;
	}
	public void setPrice(double price) {
		this.price = price;
	}
	public String getEmp() {
		return emp;
	}
	public void setEmp(String emp) {
		this.emp = emp;
	}
	public String getDate() {
		return date;
	}
	public void setDate(String date) {
		this.date = date;
	}
	public String getYuanyou() {
		return yuanyou;
	}
	public void setYuanyou(String yuanyou) {
		this.yuanyou = yuanyou;
	}
	public String getText() {
		return text;
	}
	public void setText(String text) {
		this.text = text;
	}
	
	
	
}
