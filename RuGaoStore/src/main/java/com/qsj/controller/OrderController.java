package com.qsj.controller;

import java.util.List;

import javax.annotation.Resource;
import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;

import com.qsj.bean.Address;
import com.qsj.bean.Order;
import com.qsj.service.IAddressService;
import com.qsj.service.IOrderService;
import com.qsj.vo.CartVo;

@RequestMapping("/order")
@Controller
public class OrderController extends BaseController {
	@Resource
	private IOrderService orderService;
	@Resource
	private IAddressService addressService;

	@RequestMapping("/showOrder.do")
	public String showOrder(HttpSession session) {
		return "orders";
	}
	
	@RequestMapping("/showOrderConfirm.do")
	public String showOrderConfirm(HttpSession session, Integer[] ids, ModelMap map) {
		// 获取集合
		List<CartVo> listVo = orderService.getOrderByIds(this.getId(session), ids);
		// 设置集合属性
		map.addAttribute("listVo", listVo);
		// 供下一个需求使用
		session.setAttribute("listVo", listVo);
		// 获取地址的集合
		List<Address> listAddress = addressService.getAddressByUid(this.getId(session));
		// 设置listAddress到map中
		map.addAttribute("listAddress", listAddress);

		System.out.println(listAddress);

		// 转发页面
		return "orderConfirm";
	}

	@RequestMapping("/payment.do")
	public String payment(HttpSession session) {
		Integer oid = (Integer) session.getAttribute("oid");
		orderService.updateItem(oid);
		// 从session中移除oid
		session.removeAttribute("oid");
		session.removeAttribute("listVo");
		
		return "pay_success";
	}

	@RequestMapping("/addOrder.do")
	public String addOrder(HttpSession session) {
		Order order = new Order();
		order.setUid(this.getId(session));
		System.out.println(order.getId());
		List<CartVo> listVo = (List<CartVo>) session.getAttribute("listVo");

		orderService.addOrder(order, listVo);
		// 设置orderId为session的属性，
		// 给付款功能提供参数
		session.setAttribute("oid", order.getId());
		return "payment";
	}

}
