package com.product.controller;

import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

import com.product.po.Product;
import com.product.service.ProductService;

@Controller
@RequestMapping("/product")
public class ProductController {
	@Autowired
    private ProductService productService;
    
	
	@RequestMapping("/findById")
	public String list(Map<String, Object> mav,String pid){
		Product product = productService.findById(pid);
		
		mav.put("msg", product.toString());
		return "/message";
	}
    
}
