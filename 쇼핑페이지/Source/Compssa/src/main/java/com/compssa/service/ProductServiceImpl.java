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
	public ProductVO get(Long ID) {
		return mapper.read(ID);	}
}
