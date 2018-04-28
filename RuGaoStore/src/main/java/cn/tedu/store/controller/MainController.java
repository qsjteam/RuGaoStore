package cn.tedu.store.controller;

import java.util.ArrayList;
import java.util.List;

import javax.annotation.Resource;

import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import cn.tedu.store.bean.Goods;
import cn.tedu.store.bean.GoodsCategory;
import cn.tedu.store.bean.ResponseResult;
import cn.tedu.store.service.IGoodsCategoryService;
import cn.tedu.store.service.IGoodsService;

@Controller
@RequestMapping("/main")
public class MainController {
	
	@Resource
	private IGoodsCategoryService goodsCategoryService;
	@Resource
	private IGoodsService goodsService;

	/**
	 * 显示index.jsp页面
	 * 
	 * @return
	 */
	@RequestMapping("/showIndex.do")
	public String showIndex(ModelMap map) {
		// 定义集合computerList,
		List<GoodsCategory> computerList = new ArrayList<GoodsCategory>();
		// 1.调用getCategoryByParentId(161,0,3),返回二级分类,赋值给computerList；
		computerList = goodsCategoryService.getCategoryByParentId(161, 0, 3);
		// 2.定义集合category161List;
		// 遍历二级分类集合，
		// 得到二级分类的对象，从对象中得到id，
		// 调用getCategoryByParentId(id,null,null),返回三级分类集合,把三级分类的集合添加到category161List。
		List<List<GoodsCategory>> category161List = new ArrayList<List<GoodsCategory>>();

		for (GoodsCategory gc : computerList) {
			category161List.add(goodsCategoryService.getCategoryByParentId(gc.getId(), null, null));
		}
		// 3.把两个集合分别设置到map
		map.addAttribute("computerList", computerList);
		map.addAttribute("category161List", category161List);

		// 设置热门商品到map中
		List<Goods> goodsList = goodsService.getGoodsByCategoryId(163, 0, 3);
		map.addAttribute("goodsList", goodsList);

		return "index";
	}
	
	@RequestMapping("product_details.do")
	public String showProduct_details(){
		return "product_details";
	}
	
	@RequestMapping("selectItem.do")
	@ResponseBody
	public ResponseResult<Goods> selectItem(Integer id){
		ResponseResult<Goods> rr=new ResponseResult<>();
		Goods goods=goodsService.getGoodsById(id);
		rr.setData(goods);
		System.out.println(goods);
		return rr;
		
	}

}
