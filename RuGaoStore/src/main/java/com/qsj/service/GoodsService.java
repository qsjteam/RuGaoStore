package com.qsj.service;

import java.util.List;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;

import com.qsj.bean.Goods;
import com.qsj.mapper.GoodsMapper;

@Service
public class GoodsService implements IGoodsService{
	@Resource
	private GoodsMapper goodsMapper;
	
	public List<Goods> getGoodsByCategoryId(Integer categoryId, Integer offset, Integer count) {
		
		return goodsMapper.select(categoryId, offset, count);
	}
	public Integer getCount(Integer categoryId) {
		
		return goodsMapper.selectCount(categoryId);
	}
	public Goods getGoodsById(Integer id) {
		
		return goodsMapper.selectGoodsById(id);
	}

}
