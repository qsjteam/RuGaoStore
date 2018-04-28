package com.qsj.service;

import java.util.List;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;

import com.qsj.bean.Cart;
import com.qsj.mapper.CartMapper;
import com.qsj.vo.CartVo;
@Service
public class CartService implements ICartService{

	@Resource
	private CartMapper cartMapper;
	public void addCart(Cart cart) {
		//调用持久层方法
		cartMapper.insertCart(cart);
	}
	public List<CartVo> getCartByUid(Integer uid) {
		//返回持久层的集合
		return cartMapper.selectCart(uid);
	}
	public void deleteCartById(Integer id) {
		cartMapper.deleteById(id);
		
	}
	public void deleteBatchById(Integer[] ids) {
		cartMapper.deleteBatchById(ids);
		
	}
	public void updateById(Integer id, Integer count) {
		cartMapper.updateCountById(id, count);
		
	}

}




