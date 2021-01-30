package com.compssa.controller;


import org.springframework.security.core.Authentication;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;

import lombok.extern.log4j.Log4j;

@Controller
@Log4j
public class CommonController {
	//권한없음 에러페이지
	@GetMapping("/accessError")
	public void accessDenied(Authentication auth,Model model) {
		log.info("access Denied : "+auth);
		model.addAttribute("msg", "접근 권한이 없습니다.");
	}
	//커스텀로그인
	@GetMapping("/customLogin")
	public void loginInput(String error,String logout,Model model) {
		log.info("error : "+error);		
		log.info("logout : "+logout);
		if (error !=null) {
			model.addAttribute("error", "로그인에 실패하였습니다");
		}
		if (logout!=null) {
			model.addAttribute("logout", "로그아웃되었습니다");
		}
	}
	//로그아웃페이지
	@GetMapping("/customLogout")
	public void logoutGET() {}
	//로그아웃처리
	@PostMapping("/customLogout")
	public void logoutPost() {}
	
	
	

}
