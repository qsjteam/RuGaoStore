package cn.tedu.store.service;

import java.util.List;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;

import cn.tedu.store.bean.Address;
import cn.tedu.store.mapper.AddressMapper;
import cn.tedu.store.mapper.DictMapper;

@Service
public class AddressService implements IAddressService {
	@Resource
	private AddressMapper addressMapper;
	@Resource
	private DictMapper dictMapper;

	public void addAddress(Address address) {
		/*
		 * 1.设置省市区名称
		 * 从address中获取省市区的code，调用dictMapper中提供的方法，获取到code对应的name,在把3个name用+连接成新串，
		 * 把此字符串设置到以下方法中 address.setDistrict()
		 */
		address.setRecvDistrict(dictMapper.selectProvinceNameByCode(address.getRecvProvince())
				+ dictMapper.selectCityNameByCode(address.getRecvCity())
				+ dictMapper.selectAreaNameByCode(address.getRecvArea()));

		/*
		 * 2.给isDefault设置值 调用selectByUid方法，该方法返回list
		 * 如果list.size()>0,address的isDefault设置值为0，否则，设置为1
		 */
		List<Address> list = addressMapper.selectByUid(address.getUid());
		if (list.size() > 0) {
			address.setIsDefault(0);
		} else {
			address.setIsDefault(1);
		}

		addressMapper.insert(address);

	}

	public List<Address> getAddressByUid(Integer uid) {
		// 返回持久层的方法的返回值
		return addressMapper.selectByUid(uid);
	}

	public void setDefault(Integer uid, Integer id) {
		// 1.调用持久层方法setCancel(),
		// 如果方法返回0，抛出异常RuntimeException("");
		int n1 = addressMapper.setCancel(uid);
		if (n1 == 0)
			throw new RuntimeException("修改失败");
		// 2.调用持久层方法setDefault(),
		// 如果方法返回0，抛出异常RuntimeException("");
		int n2 = addressMapper.setDefault(id);
		if (n2 == 0)
			throw new RuntimeException("修改失败");
	}

	public Address getAddressById(Integer id) {

		return addressMapper.selectAddressById(id);
	}

	public void updateAddressById(Address address) {
		// ???：从address中获取code，然后通过DictMapper提供的方法，得到name，3个name连接成字符串
		// address.setRecvDistrict(???);
		address.setRecvDistrict(dictMapper.selectProvinceNameByCode(address.getRecvProvince())
				+ dictMapper.selectCityNameByCode(address.getRecvCity())
				+ dictMapper.selectAreaNameByCode(address.getRecvArea()));
		// 调用持久层方法updateById(address);
		addressMapper.updateById(address);

	}

	public void deleteAddress(Integer id) {
		addressMapper.deleteById(id);
	}

}
