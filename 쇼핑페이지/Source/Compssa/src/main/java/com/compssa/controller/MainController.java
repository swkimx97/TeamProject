package com.compssa.controller;

import java.text.DateFormat;
import java.util.Date;
import java.util.Locale;

import org.springframework.http.HttpStatus;
import org.springframework.http.MediaType;
import org.springframework.http.ResponseEntity;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
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
@RequestMapping("/main/*")
@AllArgsConstructor

public class MainController {
	private MainService service;

	@GetMapping("/main")
	public void main(Model model) {		
		model.addAttribute("productList", service.getProductList());
		model.addAttribute("categoryList", service.getCategoryList());
	}
	
	
}
