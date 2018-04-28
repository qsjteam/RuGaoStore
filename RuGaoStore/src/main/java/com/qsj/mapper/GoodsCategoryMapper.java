package com.qsj.mapper;

import java.util.List;

import org.apache.ibatis.annotations.Param;

import com.qsj.bean.GoodsCategory;

public interface GoodsCategoryMapper {
	/**
	 * 查询分类信息
	 * 
	 * @param parentId
	 * @param offset
	 * @param count
	 * @return
	 */
	List<GoodsCategory> selectCategoryByParentId(@Param("parentId") Integer parentId, @Param("offset") Integer offset,
			@Param("count") Integer count);

}
