package cn.tedu.store.controller;

import java.util.List;

import javax.annotation.Resource;
import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import cn.tedu.store.bean.Address;
import cn.tedu.store.bean.ResponseResult;
import cn.tedu.store.service.IAddressService;

@RequestMapping("/address")
@Controller
public class AddressController extends BaseController {
	@Resource
	private IAddressService addressService;

	/**
	 * 显示地址页面
	 * 
	 * @return
	 */
	@RequestMapping("/showAddress.do")
	public String showAddress(HttpSession session,Integer id,ModelMap map) {
		// 获取地址的集合
		List<Address> listAddress = addressService.getAddressByUid(this.getId(session));
		// 设置listAddress到map中
		map.addAttribute("listAddress", listAddress);
		return "addressAdmin";
	}

	@RequestMapping("/deleteAddress.do")
	@ResponseBody
	public ResponseResult<Void> deleteAddress(Integer id) {
		ResponseResult<Void> rr = new ResponseResult<Void>();
		addressService.deleteAddress(id);
		rr.setState(1);
		rr.setMessage("删除成功");
		return rr;
	}

	/**
	 * 修改收货地址
	 */
	@RequestMapping("/updateAddress.do")
	@ResponseBody
	public ResponseResult<Void> updateAddress(Integer id, @RequestParam("receiverName") String recvName,
			@RequestParam("receiverState") String recvProvince, @RequestParam("receiverCity") String recvCity,
			@RequestParam("receiverDistrict") String recvArea, @RequestParam("receiverAddress") String recvAddress,
			@RequestParam("receiverMobile") String recvPhone, @RequestParam("receiverPhone") String recvTel,
			@RequestParam("receiverZip") String recvZip, @RequestParam("addressName") String recvTag) {

		ResponseResult<Void> rr = new ResponseResult<Void>();
		Address address = new Address();
		address.setId(id);
		address.setRecvName(recvName);
		address.setRecvProvince(recvProvince);
		address.setRecvCity(recvCity);
		address.setRecvArea(recvArea);
		address.setRecvAddress(recvAddress);
		address.setRecvPhone(recvPhone);
		address.setRecvTel(recvTel);
		address.setRecvZip(recvZip);
		address.setRecvTag(recvTag);
		try {
			addressService.updateAddressById(address);
		} catch (Exception e) {
			rr.setState(0);
			rr.setMessage("修改失败");
		}
		rr.setState(1);
		rr.setMessage("修改成功");
		return rr;
	}

	@RequestMapping("/getAddressById.do")
	@ResponseBody
	public ResponseResult<Address> getAddressById(Integer id) {
		ResponseResult<Address> rr = new ResponseResult<Address>();
		rr.setState(1);
		rr.setData(addressService.getAddressById(id));
		return rr;
	}

	@RequestMapping("/setDefault.do")
	@ResponseBody
	public ResponseResult<Void> setDefault(HttpSession session, Integer id) {
		// 1.创建rr对象
		ResponseResult<Void> rr = new ResponseResult<Void>();
		try {
			// 2.调用业务层方法
			addressService.setDefault(this.getId(session), id);
			rr.setState(1);
			rr.setMessage("成功");
			// 设置状态码：1，成功
		} catch (Exception e) {
			// 状态码：0，e.getMessage
			rr.setState(0);
			rr.setMessage(e.getMessage());
		}
		return rr;
	}

	@RequestMapping("/getAddressByUid.do")
	@ResponseBody
	public ResponseResult<List<Address>> getAddressByUid(HttpSession session) {
		// 1.创建rr对象
		ResponseResult<List<Address>> rr = new ResponseResult<List<Address>>();
		// 2.调用业务层方法，返回list
		// 3.把list设置rr对象中，
		rr.setData(addressService.getAddressByUid(this.getId(session)));
		return rr;
	}

	@RequestMapping("/addAddress.do")
	@ResponseBody
	public ResponseResult<Void> addAddress(HttpSession session, @RequestParam("receiverName") String recvName,
			@RequestParam("receiverState") String recvProvince, @RequestParam("receiverCity") String recvCity,
			@RequestParam("receiverDistrict") String recvArea, @RequestParam("receiverAddress") String recvAddress,
			@RequestParam("receiverMobile") String recvPhone, @RequestParam("receiverPhone") String recvTel,
			@RequestParam("receiverZip") String recvZip, @RequestParam("addressName") String recvTag) {
		// 1.创建rr对象
		ResponseResult<Void> rr = new ResponseResult<Void>();

		// 2.调用业务层方法
		Address address = new Address();
		address.setUid(this.getId(session));
		address.setRecvName(recvName);
		address.setRecvProvince(recvProvince);
		address.setRecvCity(recvCity);
		address.setRecvArea(recvArea);
		address.setRecvAddress(recvAddress);
		address.setRecvPhone(recvPhone);
		address.setRecvTel(recvTel);
		address.setRecvZip(recvZip);
		address.setRecvTag(recvTag);
		try {
			addressService.addAddress(address);
		} catch (Exception e) {
			rr.setState(0);
			rr.setMessage("添加失败");
		}
		// 3.设置rr的状态码和信息
		rr.setState(1);
		rr.setMessage("添加成功");
		return rr;
	}
}
