package com.compssa.service;

import java.util.List;
import com.compssa.domain.*;

public interface ProductService {
	public ProductVO getProductID(Long ID);
	public ProductVO getProductKeyword(String keyword);
	public List<ReviewBoardVO> getReviewListID(Long ID);
	public List<ReviewBoardVO> getReviewListKeyword(String keyword);
	public List<CategoryVO> getCategoryList();
}