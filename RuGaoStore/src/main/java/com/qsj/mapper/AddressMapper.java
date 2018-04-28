package com.qsj.mapper;

import java.util.List;

import com.qsj.bean.Address;

public interface AddressMapper {
	/**
	 * 删除收货地址
	 * 
	 * @param id
	 */
	void deleteById(Integer id);

	/**
	 * 根据id修改其他信息
	 * 
	 * @param address
	 */
	void updateById(Address address);

	/**
	 * 通过id查询收货地址信息
	 * 
	 * @param id
	 * @return
	 */
	Address selectAddressById(Integer id);

	/**
	 * 修改id的is_default的值为1
	 * 
	 * @param id
	 * @return
	 */
	Integer setDefault(Integer id);

	/**
	 * 修改指定uid的is_default的值为0
	 * 
	 * @param uid
	 * @return
	 */
	Integer setCancel(Integer uid);

	/**
	 * 查询登录人的收货地址，并放回集合
	 * 
	 * @param uid
	 * @return 如果存在收货地址，list集合size()>0 如果收货地址不存在，list集合size()==0
	 */
	List<Address> selectByUid(Integer uid);

	/**
	 * 插入地址信息
	 * 
	 * @param address
	 */
	void insert(Address address);

}
