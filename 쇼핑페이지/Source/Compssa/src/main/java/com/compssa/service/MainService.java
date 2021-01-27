package com.compssa.service;

import java.util.List;

import com.compssa.domain.*;

public interface MainService {
	public List<ProductVO> getProductList();
	public List<CategoryVO> getCategoryList();
}