package com.compssa.controller;

import java.text.DateFormat;
import java.util.Date;
import java.util.Locale;

import org.springframework.http.HttpStatus;
import org.springframework.http.MediaType;
import org.springframework.http.ResponseEntity;
import org.springframework.security.core.Authentication;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;
import com.compssa.service.MainService;

import lombok.AllArgsConstructor;
import lombok.extern.log4j.Log4j;

import com.compssa.domain.*;

/**
 * Handles requests for the application home page.
 */
@Controller
@RequestMapping("/member/*")
@AllArgsConstructor

public class MemberController {
	@GetMapping("/accessError")
	public void accessDenied(Authentication auth,Model model) {
		model.addAttribute("msg", "접근 권한이 없습니다.");
	}
	@GetMapping("/customLogin")
	public void loginInput(String error,String logout,Model model) {
		if (error !=null) {
			model.addAttribute("error", "로그인에 실패하였습니다");
		}
		if (logout!=null) {
			model.addAttribute("logout", "로그아웃되었습니다");
		}
	}
	@GetMapping("/customLogout")
	public void logoutGET() {}
	@PostMapping("/customLogout")
	public void logoutPost() {}
	
	
}