package com.gwmh.salepc.bean;
/**
 * @author 郭玉超
 *	这是从数据库中获取 商品的 型号  名称  类别和id  
 */
public class ModeNameTypeId {
	
	private String mode ;//商品的型号
	private String name ;//商品名称
	private String type ;//商品类别
	private Integer id ;//商品id
	
	public ModeNameTypeId() {
	}

	public ModeNameTypeId(String mode, String name, String type, Integer id) {
		super();
		this.mode = mode;
		this.name = name;
		this.type = type;
		this.id = id;
	}

	@Override
	public String toString() {
		return "ModeNameTypeId [mode=" + mode + ", name=" + name + ", type=" + type + ", id=" + id + "]";
	}

	public String getMode() {
		return mode;
	}

	public void setMode(String mode) {
		this.mode = mode;
	}

	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}

	public String getType() {
		return type;
	}

	public void setType(String type) {
		this.type = type;
	}

	public Integer getId() {
		return id;
	}

	public void setId(Integer id) {
		this.id = id;
	}
	
	
}
