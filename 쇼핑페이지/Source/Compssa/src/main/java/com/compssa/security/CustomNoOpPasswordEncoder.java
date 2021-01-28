package com.compssa.security;

import org.springframework.security.crypto.password.PasswordEncoder;

public class CustomNoOpPasswordEncoder implements PasswordEncoder {
	//암호화 알고리즘처리를 커스터마이징하고 싶을 때.
	
	@Override
	public String encode(CharSequence rawPassword) {
		//비밀번호 원본을 인코딩하는 작업
		
		return rawPassword.toString();
	}

	@Override
	public boolean matches(CharSequence rawPassword, String encodedPassword) {
		//사용자가 입력한 비밀번호(암호화해서)와 암호화된 비밀번호를 같은지 비교
		return rawPassword.toString().equals(encodedPassword);
	}

}
