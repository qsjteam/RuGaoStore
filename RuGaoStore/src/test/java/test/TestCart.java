package test;

import org.junit.Test;
import org.springframework.context.ApplicationContext;
import org.springframework.context.support.ClassPathXmlApplicationContext;

import com.qsj.bean.Cart;
import com.qsj.mapper.CartMapper;
import com.qsj.service.ICartService;

public class TestCart {
	@Test
	public void testUpdate() {
		ApplicationContext ac = new ClassPathXmlApplicationContext("spring-dao.xml", "spring-service.xml");
		CartMapper cm = ac.getBean("cartMapper", CartMapper.class);
		cm.updateCountById(11, 10);
	}

	@Test
	public void testDeleteBatchById() {
		ApplicationContext ac = new ClassPathXmlApplicationContext("spring-dao.xml", "spring-service.xml");

		CartMapper cm = ac.getBean("cartMapper", CartMapper.class);
		cm.deleteBatchById(new Integer[] { 7, 8 });
	}

	@Test
	public void testDeleteById() {
		ApplicationContext ac = new ClassPathXmlApplicationContext("spring-dao.xml", "spring-service.xml");
		ICartService cs = ac.getBean("cartService", ICartService.class);
		cs.deleteCartById(2);
		/*
		 * CartMapper cm = ac.getBean("cartMapper", CartMapper.class); cm.deleteById(1);
		 */
	}

	@Test
	public void testSelectCart() {
		ApplicationContext ac = new ClassPathXmlApplicationContext("spring-dao.xml", "spring-service.xml");
		ICartService cs = ac.getBean("cartService", ICartService.class);
		System.out.println(cs.getCartByUid(2));
		/*
		 * CartMapper cm = ac.getBean("cartMapper", CartMapper.class);
		 * System.out.println( cm.selectCart(2));
		 */
	}

	@Test
	public void testInsert() {
		ApplicationContext ac = new ClassPathXmlApplicationContext("spring-dao.xml", "spring-service.xml");
		ICartService cs = ac.getBean("cartService", ICartService.class);

		/*
		 * CartMapper cm = ac.getBean("cartMapper", CartMapper.class);
		 */
		Cart cart = new Cart();
		cart.setUid(2);
		cart.setGoodsId("10000001");
		cart.setCount(2);
		cs.addCart(cart);
	}

}
