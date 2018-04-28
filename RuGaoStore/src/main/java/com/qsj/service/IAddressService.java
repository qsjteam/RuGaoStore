package com.qsj.service;

import java.util.List;

import org.springframework.transaction.annotation.Transactional;

import com.qsj.bean.Address;
//接口的所有实现类都可以继承事务处理
@Transactional
public interface IAddressService {
	/**
	 * 删除收货地址
	 * @param id
	 */
	void deleteAddress(Integer id);
	/**
	 * 修改收货地址
	 * @param address
	 */
	void updateAddressById(Address address);
	/**
	 * 获取address对象
	 * @param id
	 * @return
	 */
	Address getAddressById(Integer id);
	/**
	 * 设置默认收货地址
	 * @param uid
	 * @param id
	 */
	void setDefault(Integer uid,Integer id);
	/**
	 * 获取登录用户的收货地址
	 * @param uid
	 * @return
	 */
	List<Address> getAddressByUid(Integer uid);
	/**
	 * 添加收货地址
	 * @param address
	 */
	void addAddress(Address address);

}
