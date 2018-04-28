package cn.tedu.store.mapper;

import java.util.List;

import org.apache.ibatis.annotations.Param;

import cn.tedu.store.bean.Cart;
import cn.tedu.store.vo.CartVo;

public interface CartMapper {
	/**
	 * 根据id修改购物车中的数量
	 * @param id
	 * @param count
	 */
	void updateCountById(@Param("id") Integer id,
			@Param("count") Integer count);
	/**
	 * 批量删除
	 * @param ids
	 */
	void deleteBatchById(Integer[] ids);
	/**
	 * 根据id删除数据
	 * @param id
	 */
	void deleteById(Integer id);
	/**
	 * 查询登录用户的购物车
	 * @param uid
	 * @return
	 */
	List<CartVo> selectCart(Integer uid);
	
	/**
	 * 插入数据到t_cart表
	 * @param car
	 */
	void insertCart(Cart car);

}
