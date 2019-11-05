package com.gwmh.salepc.service;

import java.util.ArrayList;
import java.util.List;

import javax.annotation.Resource;
import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Service;
import com.gwmh.salepc.basedao.BossDao;
import com.gwmh.salepc.bean.Comm;
import com.gwmh.salepc.bean.CommNumber;
import com.gwmh.salepc.bean.DBCommInfo;
import com.gwmh.salepc.bean.Deal;
import com.gwmh.salepc.bean.Emp;
import com.gwmh.salepc.bean.Information;
import com.gwmh.salepc.bean.ModeNameTypeId;
/**
 * @author 
 *	这是员工的service层  
 */
@Service
public class BossService {
	
	/**
	 * @return
	 * 这是从数据库中获取商品的数据   然后重新编辑组成 型号  名称  类别 和id的类
	 */
	public List<ModeNameTypeId> findModelTypeId()
	{	
		List<ModeNameTypeId> mnti = new ArrayList<>() ;
		List<DBCommInfo> comminfo = bossDao.findCommInfo();
		//使用for循环   把想要的数据从数据库中提取出来
		for(DBCommInfo di : comminfo  )
		{
			ModeNameTypeId mn = new ModeNameTypeId() ;
			mn.setMode( di.getValue() );
			String name =bossDao.findCommName( new CommNumber( di.getC1() ,di.getC2() , di.getC3() , 10000 ) );
			mn.setName(name);
			mn.setType( bossDao.findCommName( new CommNumber( di.getC1() ,di.getC2() , 10000 , 10000 ) ) );
			mn.setId( di.getId() );
			mnti.add( mn );
		}
		return mnti ;
	}
	
	@Resource
	private BossDao bossDao;
	//获取店长的对象
	public Emp findBossInfo(){
		return bossDao.findBossInfo( 10001 );
	}
	//查询所有商品分类信息
	public List<Comm> getComm(){
		return bossDao.getComm();
	}
	//查询商品分类总条数
	public int getCommNumber(){
		return bossDao.getCommNumber();
	}
	//查询要添加的商品分类数量
	public int getTheCommService(Comm comm){
		return bossDao.getTheCommNumber(comm);
	}
	//添加商品类别信息
	public boolean addComm(Comm comm){
		return bossDao.addComm(comm);
	}
	//获取所有商品信息(成品机)
	public List<Information> getFinisher(){
		return bossDao.getFinisher();
	}
	//查询商品信息数量
//	public int getInformationNumber(){
//		return bossDao.getInformationNumber();
//	}
	//增加商品信息(成品机)
	public boolean addFinisher(Information information){
		return bossDao.addFinisher(information);
	}
	//上架商品信息
	public boolean sjInformation(Integer id){
			return bossDao.sjInformation(id) > 0;
	}
	//下架商品信息
	public boolean xjInformation(Integer id){
		return bossDao.xjInformation(id) > 0;
	}
	//获取商品信息(配件)
	public List<Information> getAccessories(){
		return bossDao.getAccessories();
	}
	//增加商品信息(配件)
	public boolean addAccessories(Information information){
		return bossDao.addAccessories(information);
	}
	//获取要修改的商品信息(成品机)
	public Information getF(Integer id){
	return bossDao.getF(id);
	}
	//修改商品信息(成品机)
	public boolean updateFinisher(Information information){
		return bossDao.updateFinisher(information) > 0;
	}
	//获取要修改的商品信息(配件)
	public Information getA(Integer id){
		return bossDao.getA(id);
	}
	//修改商品信息(配件)
	public boolean updateAccessories(Information information){
		return bossDao.updateAccessories(information) > 0;
	}
	//查询商品销量
	public List<Deal> getSales(){
		return bossDao.getSales();
	}
	//查询商品上下架信息
	public List<Information> getSxj(){
		return bossDao.getSxj();
	}
	//多条件查询商品分类信息
	public List<Comm> queryComm(Comm comm){
		return bossDao.queryComm(comm);
	}
	//多条件查询商品信息(成品机)
	public List<Information> queryFinisher(Information information){
		return bossDao.queryFinisher(information);
	}
	//多条件查询商品信息(配件)
	public List<Information> queryAccessories(Information information){
		return bossDao.queryAccessories(information);
	}
	//多条件查询商品上下架
	public List<Information> querySxj(Information information){
		return bossDao.querySxj(information);
	}
	
	public List<Emp> queryAllEmp(Emp emp){
		return bossDao.queryAllEmp( emp);
	}
	

	public boolean AddEmp(Emp emp){
		return bossDao.add(emp);
	}
	
	public boolean updateEmp(Emp emp){
		return bossDao.updateEmp(emp);
	}
	
	public Emp getEmpById(Integer id){
		return bossDao.get(id);
	}
	public boolean delEmp(Integer id){
		return bossDao.del(id);
	}
}
