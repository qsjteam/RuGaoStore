package test;

import org.junit.Test;
import org.springframework.context.ApplicationContext;
import org.springframework.context.support.ClassPathXmlApplicationContext;

import com.qsj.mapper.GoodsMapper;
import com.qsj.service.IGoodsService;

public class TestGoods {
	@Test
	public void testUpdate() {
		ApplicationContext ac = new ClassPathXmlApplicationContext("spring-dao.xml", "spring-service.xml");
		GoodsMapper gm = ac.getBean("goodsMapper", GoodsMapper.class);
		gm.updateNumById("10000001", 99997);
	}

	@Test
	public void testSelectGoodsById() {
		ApplicationContext ac = new ClassPathXmlApplicationContext("spring-dao.xml", "spring-service.xml");

		IGoodsService gs = ac.getBean("goodsService", IGoodsService.class);
		System.out.println(gs.getGoodsById(10000001));
		/*
		 * GoodsMapper gm = ac.getBean("goodsMapper", GoodsMapper.class);
		 * System.out.println( gm.selectGoodsById(10000001));
		 */
	}

	@Test
	public void testCount() {
		ApplicationContext ac = new ClassPathXmlApplicationContext("spring-dao.xml", "spring-service.xml");
		IGoodsService gs = ac.getBean("goodsService", IGoodsService.class);
		System.out.println(gs.getCount(163));

		/*
		 * GoodsMapper gm = ac.getBean("goodsMapper", GoodsMapper.class);
		 * System.out.println( gm.selectCount(163) );
		 */
	}

	@Test
	public void testSelect() {
		ApplicationContext ac = new ClassPathXmlApplicationContext("spring-dao.xml", "spring-service.xml");
		IGoodsService gs = ac.getBean("goodsService", IGoodsService.class);

		System.out.println(gs.getGoodsByCategoryId(163, 0, 3));

		/*
		 * GoodsMapper gm = ac.getBean("goodsMapper", GoodsMapper.class);
		 * System.out.println( gm.select(163, 0, 3));
		 */

	}

}
