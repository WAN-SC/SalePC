package com.gwmh.salepc.bean;
/**
 * @author 郭玉超
 *	这是商品c1  c2  c3  c4 的编号   因为在查询商品名称和类别的时候要使用
 */	
public class CommNumber {
	private Integer c1 ;
	private Integer c2 ;
	private Integer c3 ;
	private Integer c4 ;
	
	public CommNumber() {
	}

	public CommNumber(Integer c1, Integer c2, Integer c3, Integer c4) {
		super();
		this.c1 = c1;
		this.c2 = c2;
		this.c3 = c3;
		this.c4 = c4;
	}

	@Override
	public String toString() {
		return "CommNumber [c1=" + c1 + ", c2=" + c2 + ", c3=" + c3 + ", c4=" + c4 + "]";
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
	
	
}
