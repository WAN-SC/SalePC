package com.gwmh.salepc.bean;
/**
 * @author 郭玉超
 *	这是添加进出库记录的实体类    主要作用是传递数据
 *	主要有：进出库id   运输产品id  进出库方式   原仓库id   目标仓库id   产品数量   产品单价   负责人id   进出库时间  原由  备注   
 */
public class AddIoWarehouseLog {
	
	private Integer iid ;//进出库id
	private Integer icommid ;//运输商品id
	private Integer ibewarehouseid ;//原仓库id
	private Integer iovwarehouseid ;//目标仓库id
	private int inumber ;//运输数量
	private double iprice ;//商品单价
	private Integer iempid ;//负责人id
	private String iiodate ;//进出库时间
	private String icause ;//进出库原由
	private String imessage ;//进出库备注
	
	public AddIoWarehouseLog() {
		super();
		// TODO Auto-generated constructor stub
	}
	public AddIoWarehouseLog(Integer iid, Integer icommid, Integer ibewarehouseid, Integer iovwarehouseid, int inumber,
			double iprice, Integer iempid, String iiodate, String icause, String imessage) {
		super();
		this.iid = iid;
		this.icommid = icommid;
		this.ibewarehouseid = ibewarehouseid;
		this.iovwarehouseid = iovwarehouseid;
		this.inumber = inumber;
		this.iprice = iprice;
		this.iempid = iempid;
		this.iiodate = iiodate;
		this.icause = icause;
		this.imessage = imessage;
	}
	@Override
	public String toString() {
		return "AddIoWarehouseLog [iid=" + iid + ", icommid=" + icommid + ", ibewarehouseid=" + ibewarehouseid
				+ ", iovwarehouseid=" + iovwarehouseid + ", inumber=" + inumber + ", iprice=" + iprice + ", iempid="
				+ iempid + ", iiodate=" + iiodate + ", icause=" + icause + ", imessage=" + imessage + "]";
	}
	public Integer getIid() {
		return iid;
	}
	public void setIid(Integer iid) {
		this.iid = iid;
	}
	public Integer getIcommid() {
		return icommid;
	}
	public void setIcommid(Integer icommid) {
		this.icommid = icommid;
	}
	public Integer getIbewarehouseid() {
		return ibewarehouseid;
	}
	public void setIbewarehouseid(Integer ibewarehouseid) {
		this.ibewarehouseid = ibewarehouseid;
	}
	public Integer getIovwarehouseid() {
		return iovwarehouseid;
	}
	public void setIovwarehouseid(Integer iovwarehouseid) {
		this.iovwarehouseid = iovwarehouseid;
	}
	public int getInumber() {
		return inumber;
	}
	public void setInumber(int inumber) {
		this.inumber = inumber;
	}
	public double getIprice() {
		return iprice;
	}
	public void setIprice(double iprice) {
		this.iprice = iprice;
	}
	public Integer getIempid() {
		return iempid;
	}
	public void setIempid(Integer iempid) {
		this.iempid = iempid;
	}
	public String getIiodate() {
		return iiodate;
	}
	public void setIiodate(String iiodate) {
		this.iiodate = iiodate;
	}
	public String getIcause() {
		return icause;
	}
	public void setIcause(String icause) {
		this.icause = icause;
	}
	public String getImessage() {
		return imessage;
	}
	public void setImessage(String imessage) {
		this.imessage = imessage;
	}
	
}
