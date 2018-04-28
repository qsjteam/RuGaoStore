package cn.tedu.store.service;

import java.util.List;

import cn.tedu.store.bean.Goods;

public interface IGoodsService {
	/**
	 * 获取商品对象
	 * @param id
	 * @return
	 */
	Goods getGoodsById(Integer id);
	/**
	 * 获取记录数
	 * @param categoryId
	 * @return
	 */
	Integer getCount(Integer categoryId);
	/**
	 * 获取商品的集合
	 * @param categoryId
	 * @param offset
	 * @param count
	 * @return
	 */
	List<Goods> getGoodsByCategoryId(
			Integer categoryId,
			Integer offset,
			Integer count);

}
