package com.compssa.mapper;

import java.util.List;

import com.compssa.domain.*;

public interface MainMapper {
	public List<ProductVO> getProductList();
	public List<CategoryVO> getCategoryList();
}