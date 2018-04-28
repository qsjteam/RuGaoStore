package test;

import org.junit.Test;
import org.springframework.context.ApplicationContext;
import org.springframework.context.support.ClassPathXmlApplicationContext;

import com.qsj.bean.Address;
import com.qsj.mapper.AddressMapper;
import com.qsj.service.IAddressService;

public class TestAddress {
	@Test
	public void testDelete() {
		ApplicationContext ac = new ClassPathXmlApplicationContext("spring-dao.xml", "spring-service.xml");
		IAddressService as = ac.getBean("addressService", IAddressService.class);
		as.deleteAddress(8);
		/*
		 * AddressMapper am = ac.getBean("addressMapper", AddressMapper.class);
		 * am.deleteById(7);
		 */
	}

	@Test
	public void testUpdateById() {
		ApplicationContext ac = new ClassPathXmlApplicationContext("spring-dao.xml", "spring-service.xml");
		/*
		 * AddressMapper am = ac.getBean("addressMapper", AddressMapper.class);
		 */
		IAddressService as = ac.getBean("addressService", IAddressService.class);
		Address address = new Address();
		address.setId(6);
		address.setRecvName("小林");
		address.setRecvProvince("110000");
		address.setRecvCity("110100");
		address.setRecvArea("110101");
		address.setRecvAddress("中鼎大厦8层");
		address.setRecvPhone("13900139000");
		address.setRecvTel("");
		address.setRecvZip("");
		address.setRecvTag("家");
		as.updateAddressById(address);
	}

	@Test
	public void testSelectById() {
		ApplicationContext ac = new ClassPathXmlApplicationContext("spring-dao.xml", "spring-service.xml");
		IAddressService as = ac.getBean("addressService", IAddressService.class);
		System.out.println(as.getAddressById(6));

		/*
		 * AddressMapper am = ac.getBean("addressMapper", AddressMapper.class);
		 * System.out.println( am.selectAddressById(6));
		 */
	}

	@Test
	public void testSetDefault() {
		ApplicationContext ac = new ClassPathXmlApplicationContext("spring-dao.xml", "spring-service.xml");
		IAddressService as = ac.getBean("addressService", IAddressService.class);
		as.setDefault(2, 5);
	}

	@Test
	public void testIsDefault() {
		ApplicationContext ac = new ClassPathXmlApplicationContext("spring-dao.xml", "spring-service.xml");
		AddressMapper am = ac.getBean("addressMapper", AddressMapper.class);
		// System.out.println(am.setCancel(2));
		System.out.println(am.setDefault(2));
	}

	@Test
	public void testGetAddressByUid() {
		ApplicationContext ac = new ClassPathXmlApplicationContext("spring-dao.xml", "spring-service.xml");
		IAddressService as = ac.getBean("addressService", IAddressService.class);
		System.out.println(as.getAddressByUid(2).size());
	}

	@Test
	public void testAddAddress() {
		ApplicationContext ac = new ClassPathXmlApplicationContext("spring-dao.xml", "spring-service.xml");
		IAddressService as = ac.getBean("addressService", IAddressService.class);
		Address address = new Address();
		address.setUid(2);
		address.setRecvName("admin");
		address.setRecvProvince("130000");
		address.setRecvCity("130100");
		address.setRecvArea("130102");
		address.setRecvAddress("中鼎大厦");
		address.setRecvPhone("13800138000");
		as.addAddress(address);
	}

	@Test
	public void testSelectByUid() {
		ApplicationContext ac = new ClassPathXmlApplicationContext("spring-dao.xml", "spring-service.xml");
		AddressMapper am = ac.getBean("addressMapper", AddressMapper.class);
		System.out.println(am.selectByUid(1).size());
	}

	@Test
	public void testInsert() {
		ApplicationContext ac = new ClassPathXmlApplicationContext("spring-dao.xml", "spring-service.xml");
		AddressMapper am = ac.getBean("addressMapper", AddressMapper.class);
		Address address = new Address();
		address.setUid(2);
		address.setRecvName("小王");
		address.setRecvProvince("130000");
		address.setRecvCity("130100");
		address.setRecvArea("130102");
		address.setRecvDistrict("河北省石家庄市长安区");
		address.setRecvAddress("中鼎大厦8层");
		address.setRecvPhone("13800138000");
		am.insert(address);
	}
}
