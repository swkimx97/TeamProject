package com.compssa.security;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.core.userdetails.UserDetails;
import org.springframework.security.core.userdetails.UserDetailsService;
import org.springframework.security.core.userdetails.UsernameNotFoundException;
import org.springframework.security.crypto.bcrypt.BCryptPasswordEncoder;

import com.compssa.domain.ShopUserVO;
import com.compssa.mapper.MemberMapper;
import com.compssa.security.domain.CustomUser;

import lombok.Setter;
import lombok.extern.log4j.Log4j;

@Log4j
public class CustomUserDetailsService implements UserDetailsService{

	@Setter(onMethod_ = @Autowired)
	private MemberMapper memberMapper;
	
	
	
	@Override
	public UserDetails loadUserByUsername(String username) throws UsernameNotFoundException {
		
		
		log.warn("사용자ID : "+username);
		ShopUserVO vo=memberMapper.read(username);
		
		log.warn("queried by member mapper : "+vo);
		
		
		return vo==null? null : new CustomUser(vo) ;

	}

}
