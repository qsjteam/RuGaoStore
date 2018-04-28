package cn.tedu.store.service;

import java.util.List;

import cn.tedu.store.bean.GoodsCategory;

public interface IGoodsCategoryService {
	/**
	 * 获取商品的分类信息
	 * @param parentId 上一级分类的id
	 * @param offset 偏移量
	 * @param count 记录数
	 * @return 返回list
	 */
	List<GoodsCategory> getCategoryByParentId(
			Integer parentId,Integer offset,Integer count);

}
