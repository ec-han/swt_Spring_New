package com.swt.service.product;

import java.util.HashMap;
import java.util.List;

import com.swt.domain.product.ProductDTO;

public interface ProductService {
	
	// 베스트상품과 신상품 목록  : 나는 이거 안 쓰고 있음 
	public HashMap<String, List<ProductDTO>> productList();
}