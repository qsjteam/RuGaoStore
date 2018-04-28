package com.qsj.service;

import java.util.List;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;

import com.qsj.bean.Area;
import com.qsj.bean.City;
import com.qsj.bean.Province;
import com.qsj.mapper.DictMapper;
@Service
public class DictService implements IDictService{
	@Resource
	private DictMapper dictMapper;
	public List<Province> getProvince() {
		
		return dictMapper.selectProvince();
	}
	public List<City> getCity(String provinceCode) {
		
		return dictMapper.selectCity(provinceCode);
	}
	public List<Area> getArea(String cityCode) {
		
		return dictMapper.selectArea(cityCode);
	}

}
