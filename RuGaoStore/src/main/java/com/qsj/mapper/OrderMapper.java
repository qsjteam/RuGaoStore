package com.qsj.mapper;

import com.qsj.bean.Order;
import com.qsj.bean.OrderItem;

public interface OrderMapper {
	/**
	 * 根据orderid修改付款状态 paymentstatus
	 * 
	 * @param oid
	 */
	void updatePaymentStatusByOrderId(Integer oid);

	/**
	 * 插入订单信息
	 * 
	 * @param order
	 */
	void insertOrder(Order order);

	/**
	 * 插入订单详情
	 * 
	 * @param orderItem
	 */
	void insertOrderItem(OrderItem orderItem);

}
