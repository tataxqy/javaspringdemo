package com.product.service.impl;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.product.mapper.ProductMapper;
import com.product.po.Product;
import com.product.service.ProductService;

@Service
public class ProductServiceImpl implements ProductService {
	@Autowired
    private ProductMapper productMapper;
    
    
	@Override
	public Product findById(String pid) {
		return productMapper.selectByPrimaryKey(pid);
	}

}
