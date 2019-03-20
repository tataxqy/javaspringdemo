package com.product.service.impl;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.product.mapper.OrderinfoMapper;
import com.product.po.Orderinfo;
import com.product.service.OrderinfoService;

@Service
public class OrderinfoServiceImpl implements OrderinfoService{
	@Autowired
    private OrderinfoMapper orderinfoMapper;
    
    
	@Override
	public void add(Orderinfo orderinfo) {
		orderinfoMapper.insertSelective(orderinfo);
		
	}

}
