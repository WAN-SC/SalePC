package com.gwmh.salepc.controller;

import java.util.List;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;
import javax.websocket.Session;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.gwmh.salepc.bean.Comm;
import com.gwmh.salepc.bean.Deal;
import com.gwmh.salepc.bean.Emp;
import com.gwmh.salepc.bean.Information;
import com.gwmh.salepc.bean.ModeNameTypeId;
import com.gwmh.salepc.service.BossService;
import com.gwmh.salepc.service.EmpService;
/**
 * @author
 *	这是店长的控制层
 */
@Controller
@RequestMapping("/boss")
public class BossController {
	@Resource(name = "bossService")
	private BossService bossService;
	
	@RequestMapping(value="/findBossInfo", method=RequestMethod.GET)
	public String findAllEmp(HttpSession session){
		Emp emp = bossService.findBossInfo();
		System.out.println("老板的信息："+ emp.toString());
		return "";
	}
	
	/**
	 * @param session
	 * @return
	 * 这是查询数据库中的型号  类别  和id 的方法   要显示到页面   让用户选择
	 * 这是在添加订单的时候要用到的方法
	 */
	@RequestMapping(value="/findModelTypeId", method=RequestMethod.GET)
	public String findModelTypeId(HttpServletRequest re){
		List<ModeNameTypeId> findModelTypeId = bossService.findModelTypeId();
		re.getSession().setAttribute("comm", findModelTypeId);
		return "boss/ManagerComm";
	}
	
	
	
//	//获取商品分类信息
//	@RequestMapping(value="/getComm", method = RequestMethod.GET)
//	public String getComm(HttpSession session){
////		List<Comm> comm = bossService.getComm();
////		session.setAttribute("comm", comm);
//		List<ModeNameTypeId> m = bossService.findModelTypeId();
//		session.setAttribute("m", m);
//		return "boss/ManagerComm";
//	}
	
	//添加商品分类信息
	@RequestMapping(value="/addComm", method = RequestMethod.GET)
	public String addComm(HttpServletRequest req){
		String fl = req.getParameter("fl");
		String lx = req.getParameter("lx");
		String pp = req.getParameter("pp");
		String value = req.getParameter("xh");
		int c1 = Integer.valueOf(fl);
		int c2 = Integer.valueOf(lx);
		int c3 = Integer.valueOf(pp);
		
		int id = bossService.getCommNumber();
		id = 20000+id;
		id++;
		
		Comm co = new Comm(c1,c2,c3,null,null,null);
		int c4 = bossService.getTheCommService(co);
		c4 = 10000+c4;
		
		Comm comm = new Comm(c1,c2,c3,c4,value,id);
		Boolean flag = bossService.addComm(comm);
		if(flag = true){
			return "redirect:/boss/getComm";
		}else{
			return "boss/no";
		}
		
	}
	
	//获取所有成品机信息
	@RequestMapping(value="/getFinisher", method=RequestMethod.GET)
	public String getFinisher(HttpSession session){
		List<Information> i = bossService.getFinisher();
		session.setAttribute("information", i);
		return "boss/ManagerCommManage";
	}
	
	//添加成品机信息
	@RequestMapping(value="/addFinisher", method=RequestMethod.GET)
	public String addFinisher(Information information){
		
		if(bossService.addFinisher(information)){
			return "redirect:/boss/getFinisher";
		}else{
			return "boss/no";
		}
	}
	
	//上架商品信息
	@RequestMapping(value="/sjInformation",method=RequestMethod.GET)
	public String sjInformation(Information information){
		
		if(bossService.sjInformation(information.getId())){
			return "redirect:/boss/getSxj";
		}else{
			return "boss/no";
		}
	}
		
	//下架商品信息
	@RequestMapping(value="/xjInformation",method=RequestMethod.GET)
	public String xjInformation(Information information){
		
		if(bossService.xjInformation(information.getId())){
			return "redirect:/boss/getSxj";
		}else{
			return "boss/no";
		}
	}
	
	//获取所有配件信息
	@RequestMapping(value="/getAccessories", method=RequestMethod.GET)
	public String getAccessories(HttpSession session){
		List<Information> i = bossService.getAccessories();
		session.setAttribute("information", i);
		return "boss/ManagerAccessories";
	}
	
	//添加配件信息
	@RequestMapping(value="/addAccessories", method=RequestMethod.GET)
	public String addAccessories(Information information){
		
		if(bossService.addAccessories(information)){
			return "redirect:/boss/getAccessories";
		}else{
			return "boss/no";
		}
	}
	
	//获取要修改的商品信息(成品机)
	@RequestMapping(value="/getF", method=RequestMethod.GET)
	public String getF(Information information,HttpSession session){
		Information i = bossService.getF(information.getId());
		session.setAttribute("i", i);
		return "redirect:ManagerUpdateFinisher.jsp";
	}
	
	//修改商品信息(成品机)
	@RequestMapping(value="/updateFinisher", method=RequestMethod.GET)
	public String updateFinisher(Information information){
		if(bossService.updateFinisher(information)){
			return "redirect:/boss/getFinisher";
		}else{
			return "boss/no";
		}
	}
	
	//获取要修改的商品信息(配件)
	@RequestMapping(value="/getA", method=RequestMethod.GET)
	public String getA(Information information,HttpSession session){
		Information i = bossService.getA(information.getId());
		session.setAttribute("i", i);
		return "redirect:ManagerUpdateAccessories.jsp";
	}
	
	//修改商品信息(配件)
	@RequestMapping(value="/updateAccessories", method=RequestMethod.GET)
	public String updateAccessories(Information information){
		if(bossService.updateAccessories(information)){
			return "redirect:/boss/getAccessories";
		}else{
			return "boss/no";
		}
	}
	
	//获取所有销量
	@RequestMapping(value="/getSales", method=RequestMethod.GET)
	public String getSale(HttpSession session){
		List<Deal> d = bossService.getSales();
		session.setAttribute("d", d);
		return "boss/ManagerStatement";
	}
	/**
	 * （员工）全部查询和多条件查询
	 * @param m
	 * @param emp
	 * @return
	 * 这是在添加订单的时候要用到的方法
	 */

	@RequestMapping(value="/queryAllEmp", method={RequestMethod.GET,RequestMethod.POST})
	public String queryAllEmp(Model m , Emp emp){
		List<Emp> list= bossService.queryAllEmp(emp);
		m.addAttribute("list", list);
		return "boss/EmpQuery";
	}
	/**
	 * 增加员工信息
	 * @param emp
	 * @return
	 */
	@RequestMapping(value="/addEmp",method=RequestMethod.POST)
	public String addEmp(Emp emp){
		boolean flag = bossService.AddEmp(emp);
		if(flag){
			return "redirect:queryAllEmp";
		}else{
			return "error";
		}
	}


	/**
	 * 获取选中的员工ID
	 * @param emp
	 * @param m
	 * @return
	 */
	@RequestMapping(value="/getEmp",method=RequestMethod.GET)
	public String getEmp(Emp emp,Model m){
		Emp e= bossService.getEmpById(emp.getEid());
		m.addAttribute("list", e);
			return "boss/EmpUpdate";
		
	}
	/**
	 * 修改员工信息
	 * @param emp
	 * @return
	 */
	@RequestMapping(value="/updateEmp",method=RequestMethod.POST)
	public String updateEmp(Emp emp){
		boolean flag = bossService.updateEmp(emp);
		if(flag){
			return "redirect:queryAllEmp";
		}else{
			return "error";
		}
	}
	/**
	 * 删除员工
	 * @param emp
	 * @return
	 */
	
	@RequestMapping(value="/delEmp",method=RequestMethod.GET)
	public String delEmp(Emp emp){
		boolean flag = bossService.delEmp(emp.getEid());
		if(flag){
			return "redirect:queryAllEmp";
		}else{
			return "error";
		}
	}
	
	
	
	//获取商品上下架信息
	@RequestMapping(value="/getSxj", method=RequestMethod.GET)
	public String getSxj(HttpSession session){
		List<Information> i = bossService.getSxj();
		session.setAttribute("i", i);
		return "boss/ManagerCommOnline";
	}

	//多条件查询商品分类信息
	@RequestMapping(value="/queryComm", method=RequestMethod.GET)
	public String queryComm(Comm comm,HttpSession session){
		List<Comm> c = bossService.queryComm(comm);
		session.setAttribute("comm", c);
		return "redirect:ManagerComm.jsp";
	}
	
	//多条件查询商品信息(成品机)
	@RequestMapping(value="/queryFinisher", method=RequestMethod.GET)
	public String queryFinisher(Information information, HttpSession session){
		List<Information> i = bossService.queryFinisher(information);
		session.setAttribute("information", i);
		return "redirect:ManagerCommManage.jsp";
	}
	
	//多条件查询商品信息(配件)
	@RequestMapping(value="/queryAccessories", method=RequestMethod.GET)
	public String queryAccessories(Information information, HttpSession session){
		List<Information> i = bossService.queryAccessories(information);
		session.setAttribute("information", i);
		return "redirect:ManagerAccessories.jsp";
	}
	
	//多条件查询商品上下架
	@RequestMapping(value="/querySxj", method=RequestMethod.GET)
	public String querySxj(Information information, HttpSession session){
		System.out.println(information.getState());
		List<Information> i = bossService.querySxj(information);
		session.setAttribute("i", i);
		return "redirect:ManagerCommOnline.jsp";
	}
	
	
}
