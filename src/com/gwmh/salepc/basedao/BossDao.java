package com.gwmh.salepc.basedao;

import java.util.List;

import com.gwmh.salepc.bean.Comm;
import com.gwmh.salepc.bean.CommNumber;
import com.gwmh.salepc.bean.DBCommInfo;
import com.gwmh.salepc.bean.Deal;
import java.util.List;

import com.gwmh.salepc.bean.Emp;
import com.gwmh.salepc.bean.Information;

/**
 *	这是店长的接口  主要对数据库中数据的增删改查
 */
public interface BossDao {
	
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
	
	//店长更新信息
	boolean update( Emp e  );
	//获取店长的对象
	Emp findBossInfo( Integer eid );
	//获取所有商品分类信息
	List<Comm> getComm();
	//查询商品分类总条数
	int getCommNumber();
	//查询要添加的商品分类数量
	int getTheCommNumber(Comm comm);
	//添加商品类别信息
	boolean addComm(Comm comm);
	//获取所有商品信息(成品机)
	List<Information> getFinisher();
//	查询商品信息数量
//	int getInformationNumber();
	//增加商品信息(成品机)
	boolean addFinisher(Information information);
	//上架商品信息
	int sjInformation(Integer id);
	//下架商品信息
	int xjInformation(Integer id);
	//获取商品信息(配件)
	List<Information> getAccessories();
	//增加商品信息(配件)
	boolean addAccessories(Information information);
	//获取要修改的商品信息(成品机)
	Information getF(Integer id);
	//修改商品信息(成品机)
	int updateFinisher(Information information);
	//获取要修改的商品信息(配件)
	Information getA(Integer id);
	//修改商品信息(配件)
	int updateAccessories(Information information);
	//获取所有商品销量
	List<Deal> getSales();
	//获取商品上下架信息
	List<Information> getSxj();
	//多条件查询商品分类信息
	List<Comm> queryComm(Comm comm);
	//多条件查询商品信息(成品机)
	List<Information> queryFinisher(Information information);
	//多条件查询商品信息(配件)
	List<Information> queryAccessories(Information information);
	//多条件查询商品上下架
	List<Information> querySxj(Information information);
	
	//增加员工信息
	boolean add( Emp e) ;
	//删除员工信息    具体的删除只是修改数据 并不是删除员工数据
	boolean del(Integer eid) ;
	//更新员工信息
	boolean updateEmp( Emp e ) ;
	//根据员工id  查询单个员工的信息
	Emp get( Integer eid );
	//查询所有员工信息  返回的是一个以Emp为泛型的list集合
	List<Emp> findAllEmp();
	//查询所有或单个员工
	List<Emp> queryAllEmp(Emp emp );
	
	
}
