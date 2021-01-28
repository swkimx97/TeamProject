package com.compssa.mapper;

import com.compssa.domain.ShopUserVO;


public interface MemberMapper {
	//회원정보.권한조회
	public ShopUserVO read(String userid);

}
