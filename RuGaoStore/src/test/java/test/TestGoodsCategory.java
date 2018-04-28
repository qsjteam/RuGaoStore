package test;

import org.junit.Test;
import org.springframework.context.ApplicationContext;
import org.springframework.context.support.ClassPathXmlApplicationContext;

import com.qsj.mapper.GoodsCategoryMapper;
import com.qsj.service.IGoodsCategoryService;

public class TestGoodsCategory {
	@Test
	public void testSelectByParentId() {
		ApplicationContext ac = new ClassPathXmlApplicationContext("spring-dao.xml", "spring-service.xml");

		IGoodsCategoryService cs = ac.getBean("goodsCategoryService", IGoodsCategoryService.class);
		System.out.println(cs.getCategoryByParentId(162, null, null).size());
		/*
		 * GoodsCategoryMapper cm = ac.getBean("goodsCategoryMapper",
		 * GoodsCategoryMapper.class); //电脑办公 id= 161 //二级菜单id分别为 162,171,186
		 * System.out.println( cm.selectCategoryByParentId(162,null,null).size());
		 */
	}

}
