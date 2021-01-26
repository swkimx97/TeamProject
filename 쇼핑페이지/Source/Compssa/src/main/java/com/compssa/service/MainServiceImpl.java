package com.compssa.service;

import java.util.List;

import org.springframework.stereotype.Service;
import com.compssa.service.MainServiceImpl;

import com.compssa.mapper.MainMapper;
import com.compssa.domain.*;

import lombok.AllArgsConstructor;

@Service
@AllArgsConstructor
public class MainServiceImpl implements MainService{
	
	private MainMapper mapper;

	@Override
	public List<ProductVO> getList() {
		return mapper.getList();		
	}
}
