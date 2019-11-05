package com.gwmh.salepc.bean;
/**
 * @author 郭玉超
 *	这是
 */
public class WarehouseIdNameType {
	
	private Integer wid ;
	private String wname ;
	private String wtype ;
	
	public WarehouseIdNameType() {
	}

	public WarehouseIdNameType(Integer wid, String wname, String wtype) {
		super();
		this.wid = wid;
		this.wname = wname;
		this.wtype = wtype;
	}

	@Override
	public String toString() {
		return "WarehouseIdNameType [wid=" + wid + ", wname=" + wname + ", wtype=" + wtype + "]";
	}

	public Integer getWid() {
		return wid;
	}

	public void setWid(Integer wid) {
		this.wid = wid;
	}

	public String getWname() {
		return wname;
	}

	public void setWname(String wname) {
		this.wname = wname;
	}

	public String getWtype() {
		return wtype;
	}

	public void setWtype(String wtype) {
		this.wtype = wtype;
	}
	
	
}
