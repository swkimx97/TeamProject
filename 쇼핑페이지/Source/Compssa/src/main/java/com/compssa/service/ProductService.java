package com.compssa.service;

import java.util.List;
import com.compssa.domain.*;

public interface ProductService {
	public ProductVO getProduct(Long ID);
	public List<ReviewBoardVO> getReviewList(Long ID);
	public List<CategoryVO> getCategoryList();
}