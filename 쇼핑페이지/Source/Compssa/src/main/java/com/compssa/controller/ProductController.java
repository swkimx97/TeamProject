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
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import com.compssa.service.ProductService;

import lombok.AllArgsConstructor;
import lombok.extern.log4j.Log4j;

import com.compssa.domain.*;

/**
 * Handles requests for the application home page.
 */
@Controller
@RequestMapping("/product/*")
@AllArgsConstructor

public class ProductController {
	private ProductService service;

	@RequestMapping(value="/productDetail", params="ID")
	public void productDetail(@RequestParam("ID") Long ID, Model model) {
		model.addAttribute("product", service.getProductID(ID));
		model.addAttribute("reviewList", service.getReviewListID(ID));
		model.addAttribute("categoryList", service.getCategoryList());
	}
	
	@RequestMapping(value="/productDetail", params="keyword")
	public void productDetail(@RequestParam("keyword") String keyword, Model model) {
		model.addAttribute("productList", service.getProductKeyword(keyword));
		model.addAttribute("reviewList", service.getReviewListKeyword(keyword));
		model.addAttribute("categoryList", service.getCategoryList());
	}
	
	@RequestMapping(value="/productList", params="keyword")
	public void productListKeyword(@RequestParam("keyword") String keyword, Model model) {
		model.addAttribute("productList", service.getProductKeyword(keyword));
		model.addAttribute("categoryList", service.getCategoryList());
	}
	
	@RequestMapping(value="/productList", params="categoryID")
	public void productListCategory(@RequestParam("categoryID") Long categoryID, Model model) {
		model.addAttribute("productList", service.getProductCategory(categoryID));
		model.addAttribute("categoryList", service.getCategoryList());
	}
}