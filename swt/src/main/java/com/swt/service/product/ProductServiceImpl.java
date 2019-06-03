package com.swt.service.product;

import java.util.HashMap;
import java.util.List;

import javax.inject.Inject;

import org.springframework.stereotype.Service;

import com.swt.domain.product.ProductDTO;
import com.swt.persistence.product.ProductDAO;
// 실제 Service를 동작하는 Class에는 @Service를 추가해야 함
@Service
public class ProductServiceImpl implements ProductService{

	@Inject
	private ProductDAO pDao;
	
	@Override
	public HashMap<String, List<ProductDTO>> productList() {
		// 베스트상품과 신상품을 받아서 index로 전달 
		List<ProductDTO> bList = pDao.bestList();
		List<ProductDTO> nList = pDao.newList();
		
		HashMap<String, List<ProductDTO>> map = new HashMap<>();
		map.put("bList", bList); // Controller단으로 이동 map에다가 list를 두개를 보낼수 있움
		map.put("nList", nList);
		
		return map;
	}

}
