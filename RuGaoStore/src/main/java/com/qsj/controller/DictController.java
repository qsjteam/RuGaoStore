package com.qsj.controller;

import java.util.List;

import javax.annotation.Resource;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import com.qsj.bean.Area;
import com.qsj.bean.City;
import com.qsj.bean.Province;
import com.qsj.bean.ResponseResult;
import com.qsj.service.IDictService;

@Controller
@RequestMapping("/dict")
public class DictController extends BaseController {
	@Resource
	private IDictService dictService;

	@RequestMapping("/showArea.do")
	@ResponseBody
	public ResponseResult<List<Area>> showArea(String cityCode) {
		ResponseResult<List<Area>> rr = new ResponseResult<List<Area>>();
		List<Area> list = dictService.getArea(cityCode);
		rr.setData(list);
		return rr;

	}

	@RequestMapping("/showCity.do")
	@ResponseBody
	public ResponseResult<List<City>> showCity(String provinceCode) {
		// 1.创建rr对象
		ResponseResult<List<City>> rr = new ResponseResult<List<City>>();
		// 2.调用业务层方法，返回集合
		List<City> list = dictService.getCity(provinceCode);
		// 3.把集合设置到rr对象中
		rr.setData(list);
		return rr;
	}

	/**
	 * 获取province的信息
	 * 
	 * @return
	 */
	@RequestMapping("/showProvince.do")
	@ResponseBody
	public ResponseResult<List<Province>> showProvince() {
		// 1.创建rr对象
		ResponseResult<List<Province>> rr = new ResponseResult<List<Province>>();
		// 2.调用业务层方法，返回集合
		List<Province> list = dictService.getProvince();
		// 3.把集合设置到rr对象中
		rr.setData(list);
		return rr;
	}
}
