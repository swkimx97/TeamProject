package com.compssa.mapper;

import java.util.List;

import com.compssa.domain.*;

public interface ProductMapper {
	public ProductVO getProductID(Long ID);
	public List<ProductVO> getProductKeyword(String keyword);
	public List<ProductVO> getProductCategory(Long categoryID);
	public List<ReviewBoardVO> getReviewListID(Long ID);
	public List<ReviewBoardVO> getReviewListKeyword(String keyword);
	public List<CategoryVO> getCategoryList();
}