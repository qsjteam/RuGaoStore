package cn.tedu.store.controller;

import java.util.List;

import javax.annotation.Resource;
import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import cn.tedu.store.bean.Cart;
import cn.tedu.store.bean.ResponseResult;
import cn.tedu.store.service.ICartService;
import cn.tedu.store.vo.CartVo;

@RequestMapping("/cart")
@Controller
public class CartController extends BaseController {
	@Resource
	private ICartService cartService;

	@RequestMapping("/showCart.do")
	public String showCart(HttpSession session, ModelMap map) {
		List<CartVo> listCartVo = cartService.getCartByUid(this.getId(session));
		map.addAttribute("listCartVo", listCartVo);
		return "cart";
	}

	@RequestMapping("/updateById.do")
	@ResponseBody
	public ResponseResult<Void> updateById(Integer id, Integer count) {
		ResponseResult<Void> rr = new ResponseResult<Void>();
		cartService.updateById(id, count);
		rr.setState(1);
		rr.setMessage("修改成功");
		return rr;
	}

	@RequestMapping("/deleteBatchById.do")
	@ResponseBody
	public ResponseResult<Void> deleteBatchById(Integer[] ids) {
		ResponseResult<Void> rr = new ResponseResult<Void>();
		try {
			cartService.deleteBatchById(ids);
		} catch (Exception e) {
			rr.setState(0);
			rr.setMessage("操作失败");
		}
		rr.setState(1);
		rr.setMessage("操作成功");
		return rr;
	}

	@RequestMapping("/deleteById.do")
	public String deleteById(Integer id) {
		cartService.deleteCartById(id);
		return "redirect:../cart/showCart.do";
	}

	@RequestMapping("/addCart.do")
	@ResponseBody
	public ResponseResult<Void> addCart(HttpSession session, String goodsId, Integer count) {
		// 创建rr对象
		ResponseResult<Void> rr = new ResponseResult<Void>();
		// 调用业务层方法
		Cart cart = new Cart();
		cart.setUid(this.getId(session));
		cart.setGoodsId(goodsId);
		cart.setCount(count);
		try {
			cartService.addCart(cart);
		} catch (Exception e) {
			rr.setState(0);
			rr.setMessage("添加失败");
		}
		// 设置状态码及提示信息
		rr.setState(1);
		rr.setMessage("添加成功");
		// 返回rr
		return rr;

	}

}
