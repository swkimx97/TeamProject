package com.compssa.mapper;

import java.util.List;

import org.apache.ibatis.annotations.Param;

import com.compssa.domain.ProductVO;

public interface ProductMapper {
	public ProductVO read(Long ID);
}
 