package com.gwmh.salepc.bean;
/**
 * @author 郭玉超
 *	这是数据库中数据的信息   主要就是从数据库中获取数据的实体类
 */
public class DBCommInfo {
	
	private Integer c1 ;//复合主键的第一个键
	private Integer c2;//复合主键的第二个键
	private Integer c3 ;//复合主键的第三个键
	private Integer c4 ;//复合主键的第四个键
	private String value ;//商品的型号
	private Integer id ;//商品的id
	
	public DBCommInfo() {
	}

	public DBCommInfo(Integer c1, Integer c2, Integer c3, Integer c4, String value, Integer id) {
		super();
		this.c1 = c1;
		this.c2 = c2;
		this.c3 = c3;
		this.c4 = c4;
		this.value = value;
		this.id = id;
	}

	@Override
	public String toString() {
		return "DBCommInfo [c1=" + c1 + ", c2=" + c2 + ", c3=" + c3 + ", c4=" + c4 + ", value=" + value + ", id=" + id
				+ "]";
	}

	public Integer getC1() {
		return c1;
	}

	public void setC1(Integer c1) {
		this.c1 = c1;
	}

	public Integer getC2() {
		return c2;
	}

	public void setC2(Integer c2) {
		this.c2 = c2;
	}

	public Integer getC3() {
		return c3;
	}

	public void setC3(Integer c3) {
		this.c3 = c3;
	}

	public Integer getC4() {
		return c4;
	}

	public void setC4(Integer c4) {
		this.c4 = c4;
	}

	public String getValue() {
		return value;
	}

	public void setValue(String value) {
		this.value = value;
	}

	public Integer getId() {
		return id;
	}

	public void setId(Integer id) {
		this.id = id;
	}
	
	
	 
}
