package com.compssa.service;

import java.util.List;

import org.springframework.stereotype.Service;
import com.compssa.service.ProductServiceImpl;

import com.compssa.mapper.ProductMapper;
import com.compssa.domain.*;

import lombok.AllArgsConstructor;

@Service
@AllArgsConstructor
public class ProductServiceImpl implements ProductService{
	
	private ProductMapper mapper;

	@Override
	public ProductVO getProductID(Long ID) {
		return mapper.getProductID(ID);
	}
	
	@Override
	public List<ProductVO> getProductKeyword(String keyword) {
		return mapper.getProductKeyword(keyword);
	}
	
	@Override
	public List<ProductVO> getProductCategory(Long categoryID) {
		return mapper.getProductCategory(categoryID);
	}

	@Override
	public List<ReviewBoardVO> getReviewListID(Long ID) {
		return mapper.getReviewListID(ID);
	}
	
	@Override
	public List<CategoryVO> getCategoryList() {
		return mapper.getCategoryList();
	}
	
	@Override
	public List<ReviewBoardVO> getReviewListKeyword(String keyword) {
		return mapper.getReviewListKeyword(keyword);
	}
}
