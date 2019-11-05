package com.gwmh.salepc.service;
import java.util.ArrayList;
import java.util.List;
import javax.annotation.Resource;
import org.springframework.stereotype.Service;
import com.gwmh.salepc.basedao.EmpDao;
import com.gwmh.salepc.bean.AddOrderFormInfo;
import com.gwmh.salepc.bean.BackOrderForm;
import com.gwmh.salepc.bean.CommIdAndCount;
import com.gwmh.salepc.bean.CommNumber;
import com.gwmh.salepc.bean.DBCommInfo;
import com.gwmh.salepc.bean.Emp;
import com.gwmh.salepc.bean.ModeNameTypeId;
import com.gwmh.salepc.bean.WarehouseIdNameType;
/**
 * @author 
 *	这是员工的service层  
 */
@Service
public class EmpService {
	
	@Resource
	private EmpDao empDao;
	
	/**
	 * @return
	 * 这是从数据库中获取商品的数据   然后重新编辑组成 型号  名称  类别 和id的类
	 */
	public List<ModeNameTypeId> findModelTypeId()
	{	
		List<ModeNameTypeId> mnti = new ArrayList<>() ;
		List<DBCommInfo> comminfo = empDao.findCommInfo();
		//使用for循环   把想要的数据从数据库中提取出来
		for(DBCommInfo di : comminfo  )
		{
			ModeNameTypeId mn = new ModeNameTypeId() ;
			mn.setMode( di.getValue() );
			String name =empDao.findCommName( new CommNumber( di.getC1() ,di.getC2() , di.getC3() , 10000 ) );
			mn.setName(name);
			mn.setType( empDao.findCommName( new CommNumber( di.getC1() ,di.getC2() , 10000 , 10000 ) ) );
			mn.setId( di.getId() );
			mnti.add( mn );
		}
		return mnti ;
	}
	
	
	

	/**
	 * @return 交易数量的个数
	 * 这是从数据库中获取交易数据量的个数   然后产生新的id值
	 */
	public int getDealCount()
	{
		return empDao.getDealCount();
	}
	
	/**
	 * @param aofi
	 * @return 返回一个Boolean值   true是添加成功   false 是添加失败
	 * 向数据库中添加订单信息
	 */
	public boolean addOrderForm( AddOrderFormInfo aofi )
	{
		return empDao.addOrderForm( aofi )> 0 ;
	}
	/**
	 * @param s
	 * @param i
	 * @param c
	 * @return 返回的是修改数据成不成功  
	 * 这个方法主要是修改数据库中的数据   就是先从数据库中找到商品对象的库存数据然后判断能不能键掉销售的数
	 * 如果大于0减去销售数量  小于0 就 返回false 
	 * 这个方法有三个参数   ：商品的来源   商品id  和 销售数量
	 */
	public boolean chanageWarehouseCount( String s ,Integer i , int c )
	{
		boolean isch = false ;
		//判断传递的参数    确定修改那个数据
		if( s.equals("店面仓库") )
		{
			//获取该产品店面仓库中的数据
			int count = empDao.getCommDianMianCount( i ) ;
			if( ( count - c ) >= 0 )
			{
				boolean ischanage = empDao.chanageCommDianMianCount(  new CommIdAndCount( i,  count - c ) )  > 0;
				if( ischanage )
				{
					isch =  true  ;
				}else 
				{
					isch =  false ;
				}
			}else 
			{
				isch =  false ;
			}
			
			
		}else if(s.equals("外租仓库"))
		{
			//获取外租仓库的指定商品的数量
			int count = empDao.getCommWaiZuCount( i ) ;
			if( ( count - c ) >= 0 )
			{
				boolean ischanage = empDao.chanageCommWaiZuCount(  new CommIdAndCount( i,  count - c ) )  > 0;
				if( ischanage )
				{
					isch =  true  ;
				}else 
				{
					isch =  false ;
				}
			}else 
			{
				isch =  false ;
			}
			
			
		}else if(s.equals("内购同行"))
		{
			
			//TODO
			
		}
		return isch ;
	}

	/**
	 * @return
	 * 获取所有交易的交易编号
	 */
	public List<Integer> findAllDealNumber()
	{
		return empDao.findAllDealNumber();
	}
	
	/**
	 * @return
	 * 获取退单表格中的数据量   是为了生成新的退单编号
	 */
	public int getBackOrderFormCount()
	{
		return empDao.getBackOrderFormCount() ;
	}
	
	/**
	 * @return
	 * 查询仓库和供应商的id name  和 type
	 */
	public List<WarehouseIdNameType> getWarIdNameType()
	{
		return empDao.getWarIdNameType() ;
	}
	
	/**
	 * @return
	 * 这是向数据库中添加退单信息的方法 接受参数是 退单的实体类
	 */
	public boolean addBackOrderForm( BackOrderForm back )
	{
		return empDao.addBackOrderForm( back ) > 0;
	}
}
