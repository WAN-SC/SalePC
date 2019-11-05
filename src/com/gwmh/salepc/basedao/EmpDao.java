package com.gwmh.salepc.basedao;

import java.util.List;

import com.gwmh.salepc.bean.AddIoWarehouseLog;

import com.gwmh.salepc.bean.AddIoWarehouseLog;

import com.gwmh.salepc.bean.AddOrderFormInfo;
import com.gwmh.salepc.bean.BackOrderForm;
import com.gwmh.salepc.bean.CommIdAndCount;
import com.gwmh.salepc.bean.CommNumber;
import com.gwmh.salepc.bean.DBCommInfo;
import com.gwmh.salepc.bean.WarehouseIdNameType;
/**
 * @author 郭玉超
 *	这是项目中电源的接口  主要是对数据库中数据的正删改查
 */
public interface EmpDao {

	
	/**
	 * 查询数据库中所有商品的型号   名称   类别  和id
	 * @return
	 */
	List<DBCommInfo> findCommInfo() ;
	
	
	
	/**
	 * 通过查询复合主键的键值来查询出名称和类别
	 * @param CommNumber
	 * @return
	 */
	String findCommName( CommNumber CommNumber ) ;
	
	
	
	//获取数据库中交易数量
	int getDealCount();
	//向数据库中添加交易信息
	int addOrderForm( AddOrderFormInfo AddOrderFormInfo ) ;
	//从数据库中获取指定商品的店面库存
	int getCommDianMianCount( Integer i ) ;
	//修改数据库中店面指定商品的数量  参数： 商品的id   修改后的数量
	int chanageCommDianMianCount( CommIdAndCount cc ) ;
	//从数据库中获取指定商品的外租库存
	int getCommWaiZuCount( Integer i ) ;
	//修改数据库中外租指定商品的数量   参数： 商品id   修改后的数量
	int chanageCommWaiZuCount( CommIdAndCount ci ) ;
	//从数据库中获取所有交易的编号
	List<Integer> findAllDealNumber();
	//获取退单表中数据个数  作为新添加数据的退单标号  
	int getBackOrderFormCount() ;
	//从数据库中获取仓库和供应商的id  name   type 
	List<WarehouseIdNameType> getWarIdNameType();
	//向数据库中添加退单信息  接受参数是退单实体类  返回一个int  大于0 就是真   否则是假
	int addBackOrderForm( BackOrderForm  back );
	//获取进出库记录表中的数据量   以便生成新的id编号
	int getIoWarehouseCount() ;
	//获取指定商品的商品单价    参数： 商品的id   返回值是商品的单价  double
	double getCommPrice( Integer commid );
	//向数据库中添加进出库记录的数据
	int addInOutWarehouseLog( AddIoWarehouseLog iolog );
	//从数据库中获取商品的进出库记录
	List<AddIoWarehouseLog> findIoWarehouseLog() ;
	//从数据库中通过id值 获取仓库名称
	String getWareNameById(Integer icommid);
	//获取数据库中指定商品的型号
	String getCommModel(Integer icommid);
	//获取指定商品的分类信息  返回的是一个实体类
	DBCommInfo getCommInfo(Integer icommid);
	//通过仓库的id获取仓库的名称   传递一个Integer类型的仓库id
	String getWarehouseName(Integer warid);
	//通过员工的id  获取员工的姓名
	String getEmpName(Integer iempid);
	

}
