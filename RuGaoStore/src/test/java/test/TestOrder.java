package test;

import java.util.ArrayList;
import java.util.List;

import org.junit.Test;
import org.springframework.context.ApplicationContext;
import org.springframework.context.support.ClassPathXmlApplicationContext;

import cn.tedu.store.bean.Order;
import cn.tedu.store.bean.OrderItem;
import cn.tedu.store.mapper.OrderMapper;
import cn.tedu.store.service.IOrderService;
import cn.tedu.store.vo.CartVo;

public class TestOrder {
	@Test
	public void testUpdateItem(){
		ApplicationContext ac = new 
				ClassPathXmlApplicationContext(
						"spring-dao.xml",
						"spring-service.xml");
		OrderMapper om = ac.getBean("orderMapper",
				OrderMapper.class);
		om.updatePaymentStatusByOrderId(6);
	}
	@Test
	public void testAdd(){
		ApplicationContext ac = new 
				ClassPathXmlApplicationContext(
						"spring-dao.xml",
						"spring-service.xml");
		IOrderService os = ac.getBean("orderService",
				IOrderService.class);
		Order order = new Order();
		order.setUid(2);
		List<CartVo> listVo = new ArrayList<CartVo>();
		CartVo cart = new CartVo();
		cart.setUid(2);
		cart.setGoodsId("10000001");
		cart.setCount(1);
		cart.setPrice(100);
		cart.setImage("/image/xxxx");
		listVo.add(cart);
		
		os.addOrder(order, listVo);
	}
	
	@Test
	public void testInserOrder(){
		ApplicationContext ac = new 
				ClassPathXmlApplicationContext(
						"spring-dao.xml",
						"spring-service.xml");
		OrderMapper om = ac.getBean("orderMapper",
				OrderMapper.class);
		OrderItem orderItem = new OrderItem();
		orderItem.setUid(2);
		orderItem.setGoodsid("10000001");
		orderItem.setImage("/image/xxx");
		orderItem.setTitle("戴尔");
		orderItem.setPrice(5000);
		orderItem.setCount(1);
		orderItem.setPaymentstatus(0);
		orderItem.setOrderstatus(0);
		orderItem.setOrderid(1);

		om.insertOrderItem(orderItem);
		
		/*Order order = new  Order();
		order.setUid(2);
		om.insertOrder(order);
		System.out.println(order.getId());*/
		
		
	}
	@Test
	public void testGetOrder(){
		ApplicationContext ac = new 
				ClassPathXmlApplicationContext(
						"spring-dao.xml",
						"spring-service.xml");
		IOrderService os = ac.getBean("orderService",
				IOrderService.class);
		System.out.println(
				os.getOrderByIds(
						2, new Integer[]{14,15}));
	}

}





