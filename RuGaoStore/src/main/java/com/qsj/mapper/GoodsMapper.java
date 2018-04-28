package com.qsj.mapper;

import java.util.List;

import org.apache.ibatis.annotations.Param;

import com.qsj.bean.Goods;

public interface GoodsMapper {
	/**
	 * 根据id修改数量
	 * 
	 * @param id
	 * @param num
	 */
	void updateNumById(@Param("id") String id, @Param("num") Integer num);

	/**
	 * 通过id查询商品信息
	 * 
	 * @param id
	 * @return
	 */
	Goods selectGoodsById(Integer id);

	/**
	 * 查询记录数
	 * 
	 * @param categoryId
	 * @return
	 */
	Integer selectCount(Integer categoryId);

	/**
	 * 查询热门商品信息
	 * 
	 * @param categoryId
	 * @param offset
	 * @param count
	 * @return
	 */
	List<Goods> select(@Param("categoryId") Integer categoryId, @Param("offset") Integer offset,
			@Param("count") Integer count);

}
