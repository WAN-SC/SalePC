package com.gwmh.salepc.controller;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Date;
import java.util.List;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.gwmh.salepc.bean.AddIoWarehouseLog;
import com.gwmh.salepc.bean.AddOrderFormInfo;
import com.gwmh.salepc.bean.BackOrderForm;
import com.gwmh.salepc.bean.CommIdAndCount;
import com.gwmh.salepc.bean.Emp;
import com.gwmh.salepc.bean.IOWarLog;
import com.gwmh.salepc.bean.ModeNameTypeId;
import com.gwmh.salepc.bean.WarehouseIdNameType;
import com.gwmh.salepc.service.EmpService;

@Controller
@RequestMapping("/emp")
public class EmpController {
	@Resource(name = "empService")
	private EmpService empService;
	
	
	
	

	/**
	 * @param session
	 * @return
	 * 这是查询数据库中的型号  类别  和id 的方法   要显示到页面   让用户选择
	 * 这是在添加订单的时候要用到的方法
	 */
	@RequestMapping(value="/findModelTypeId", method=RequestMethod.GET)
	public String findModelTypeId(HttpServletRequest re){
		List<ModeNameTypeId> findModelTypeId = empService.findModelTypeId();
		re.getSession().setAttribute("mti", findModelTypeId);
		return "emp/EmpAddOrderForm";
	}
	
	/**
	 * @param re
	 * @return
	 * 这是向数据中添加退单信息的方法
	 */
	@RequestMapping(value="/findAllDealNumber", method=RequestMethod.GET)
	public String findAllDealNumber(HttpServletRequest re){
		
		List<Integer> dealnumber = empService.findAllDealNumber();
		re.getSession().setAttribute("denu", dealnumber);
		return "emp/EmpBackOrder";
	}
	
	/**
	 * @param re
	 * @return
	 * 这是向数据中添加退单信息的方法
	 */
	@RequestMapping(value="/addBackOrderForm", method=RequestMethod.POST)
	public String backOrderFormInfo(HttpServletRequest re){
		
		String number = re.getParameter("select");//退单单号
		String yuanyin = re.getParameter("yuanyin");//退单原因
		String clientname = re.getParameter("clientname");//退单客户姓名
		String text = re.getParameter("txtarea1");//退单备注
		Integer user = 10002;//(Integer) re.getSession().getAttribute("user");
		//获取退单表格中的数据量  返回后生成新的id做为退单号码
		int backcount =  empService.getBackOrderFormCount();
		BackOrderForm back  = new BackOrderForm( new Integer(80001+backcount)  ,Integer.parseInt(number) ,yuanyin , user , clientname , text );
		boolean isadd = empService.addBackOrderForm( back );
		if( isadd )
		{
			re.getSession().setAttribute("tishi", "yes");
		}else 
		{
			re.getSession().setAttribute("tishi", "no");
		}
		
		return "emp/EmpBackOrder";
	}
	
	/**
	 * @param session
	 * @return
	 * 这是查询数据库中的型号  类别  和id 的方法   要显示到页面   让用户选择
	 * 这是执行添加进出库记录时要执行的方法
	 */
	@RequestMapping(value="/findModelTypeAndId", method=RequestMethod.GET)
	public String findModelTypeAndId(HttpServletRequest re){
		System.out.println("控制层中      findModelTypeAndId开始执行");
		//获取商品的名称 类型  和id
		List<ModeNameTypeId> findModelTypeId = empService.findModelTypeId();
		List<WarehouseIdNameType> waridnametype = empService.getWarIdNameType() ;
		System.out.println("控制层中      findModelTypeAndId执行完成");
		re.getSession().setAttribute("mti", findModelTypeId);
		re.getSession().setAttribute("war", waridnametype);
		return "emp/EmpAddInOutWarehouseLog";
	}
	
}
