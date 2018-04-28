package com.qsj.service;

import java.util.List;

import com.qsj.bean.Cart;
import com.qsj.vo.CartVo;

public interface ICartService {
	/**
	 * 根据id修改count
	 * @param id
	 * @param count
	 */
	void updateById(Integer id,Integer count);
	/**
	 * 批量删除
	 * @param ids
	 */
	void deleteBatchById(Integer[] ids);
	/**
	 * 根据id删除数据
	 * @param id
	 */
	void deleteCartById(Integer id);
	/**
	 * 获取cart数据
	 * @param uid
	 * @return
	 */
	List<CartVo> getCartByUid(Integer uid);
	/**
	 * 添加购物车
	 * @param cart
	 */
	void addCart(Cart cart);

}
