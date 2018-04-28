package com.qsj.service;

import java.util.List;

import com.qsj.bean.Order;
import com.qsj.vo.CartVo;

public interface IOrderService {
	/**
	 * 根据oid修改付款状态
	 * @param oid
	 */
	void updateItem(Integer oid);
	/**
	 * 添加订单数据，添加订单详情，修改商品的库存
	 * @param order
	 * @param listVo
	 */
	void addOrder(Order order,
			List<CartVo> listVo);
	/**
	 * 获取订单数据
	 * @param uid
	 * @param ids
	 * @return
	 */
	List<CartVo> getOrderByIds(
			Integer uid,Integer[] ids);

}






