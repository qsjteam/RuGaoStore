package cn.tedu.store.mapper;

import cn.tedu.store.bean.Order;
import cn.tedu.store.bean.OrderItem;

public interface OrderMapper {
	/**
	 * 根据orderid修改付款状态 paymentstatus
	 * @param oid
	 */
	void updatePaymentStatusByOrderId(
			Integer oid);
	/**
	 * 插入订单信息
	 * @param order
	 */
	void insertOrder(Order order);
	/**
	 * 插入订单详情
	 * @param orderItem
	 */
	void insertOrderItem(OrderItem orderItem);

}
