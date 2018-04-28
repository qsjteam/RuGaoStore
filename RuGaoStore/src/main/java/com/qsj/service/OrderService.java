package com.qsj.service;

import java.util.ArrayList;
import java.util.List;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;

import com.qsj.bean.Goods;
import com.qsj.bean.Order;
import com.qsj.bean.OrderItem;
import com.qsj.mapper.CartMapper;
import com.qsj.mapper.GoodsMapper;
import com.qsj.mapper.OrderMapper;
import com.qsj.vo.CartVo;

@Service
public class OrderService implements IOrderService {
	@Resource
	private CartMapper cartMapper;
	@Resource
	private GoodsMapper goodsMapper;
	@Resource
	private OrderMapper orderMapper;

	public List<CartVo> getOrderByIds(Integer uid, Integer[] ids) {
		/*
		 * 0.定义数组，orderList 1.调用持久层方法selectCart()，得到集合 2.遍历集合，得到CartVo对象，获取id
		 * 3.id和数组的id值比较，如果相同,把对象添加到orderList中。 4.return orderList;
		 */
		List<CartVo> orderList = new ArrayList<CartVo>();
		List<CartVo> list = cartMapper.selectCart(uid);
		for (CartVo cv : list) {
			for (Integer id : ids) {
				if (id == cv.getId()) {
					orderList.add(cv);
					break;
				}
			}
		}
		return orderList;
	}

	public void addOrder(Order order, List<CartVo> listVo) {
		orderMapper.insertOrder(order);
		for (CartVo cart : listVo) {
			OrderItem orderItem = new OrderItem();
			orderItem.setUid(cart.getUid());
			orderItem.setGoodsid(cart.getGoodsId());
			orderItem.setImage(cart.getImage());
			orderItem.setPrice(cart.getPrice());
			orderItem.setCount(cart.getCount());
			orderItem.setPaymentstatus(0);
			orderItem.setOrderstatus(0);
			orderItem.setOrderid(order.getId());
			orderMapper.insertOrderItem(orderItem);
			// 根据id查询商品信息
			Goods goods = goodsMapper.selectGoodsById(Integer.parseInt(cart.getGoodsId()));
			// 修改库存
			goodsMapper.updateNumById(cart.getGoodsId(), goods.getNum() - cart.getCount());
		}

	}

	public void updateItem(Integer oid) {
		//orderMapper.updatePaymentStatusByOrderId(oid);
		System.out.println("模拟支付成功");
	}
}
