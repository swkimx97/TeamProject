package com.compssa.service;

import java.util.List;

import org.springframework.stereotype.Service;
import com.compssa.service.MyPageServiceImpl;

import com.compssa.mapper.MyPageMapper;
import com.compssa.domain.*;

import lombok.AllArgsConstructor;

@Service
@AllArgsConstructor
public class MyPageServiceImpl implements MyPageService{
	
	private MyPageMapper mapper;

	@Override
	public List<CategoryVO> getCategoryList() {
		return mapper.getCategoryList();
	}
}
