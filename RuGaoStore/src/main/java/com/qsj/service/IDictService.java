package com.qsj.service;

import java.util.List;

import com.qsj.bean.Area;
import com.qsj.bean.City;
import com.qsj.bean.Province;

public interface IDictService {
	/**
	 * 返回AreaList集合
	 * @param cityCode
	 * @return
	 */
	List<Area> getArea(String cityCode);
	/**
	 * 返回CityList集合
	 * @param provinceCode
	 * @return
	 */
	List<City> getCity(String provinceCode);
	/**
	 *返回ProvinceList集合
	 * @return
	 */
	List<Province> getProvince();

}
