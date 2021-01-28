package com.compssa.security.domain;

import java.util.Collection;
import java.util.stream.Collectors;

import org.springframework.security.core.GrantedAuthority;
import org.springframework.security.core.authority.SimpleGrantedAuthority;
import org.springframework.security.core.userdetails.User;
import com.compssa.domain.ShopUserVO;

import lombok.Getter;

@Getter
public class CustomUser extends User{

	private static final long serialVersionUID = 1L;
	private ShopUserVO member;//ShopUserVO
	
	public CustomUser(String username, String password, Collection<? extends GrantedAuthority> authorities) {
		super(username, password, authorities);		
	}
	public CustomUser(ShopUserVO vo) {

		super(vo.getUserName(), vo.getPW(), vo.getAuthList().stream().map(auth->new SimpleGrantedAuthority(auth.getAuth())).collect(Collectors.toList()));
		this.member=vo;//member에 MemberVO를 저장. 나중에 vo에서 필요한 컬럼값(email,telephone등이 있다면)을 읽어오면됨 
	}
	
}
