package com.gwmh.salepc.bean;
/**
 * @author 郭玉超
 *	这是向数据库修改店面  外租库存数据时要使用到的实体类    这个类主要就是为了传递参数
 */
public class CommIdAndCount {
	private Integer id ;
	private int count ;
	
	public CommIdAndCount() {
	}

	public CommIdAndCount(Integer id, int count) {
		super();
		this.id = id;
		this.count = count;
	}

	@Override
	public String toString() {
		return "CommIdAndCount [id=" + id + ", count=" + count + "]";
	}

	public Integer getId() {
		return id;
	}

	public void setId(Integer id) {
		this.id = id;
	}

	public int getCount() {
		return count;
	}

	public void setCount(int count) {
		this.count = count;
	}

	
}
