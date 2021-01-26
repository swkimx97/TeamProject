package com.compssa.mapper;

import java.util.List;

import com.compssa.domain.*;

public interface ProductMapper {
	public ProductVO getProduct(Long ID);
	public List<ReviewBoardVO> getReviewList(Long ID);
}
 