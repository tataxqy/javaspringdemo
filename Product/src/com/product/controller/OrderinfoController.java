package com.product.controller;

import java.util.Map;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

import com.product.po.Help;
import com.product.po.Orderinfo;
import com.product.po.Product;
import com.product.po.User;
import com.product.service.HelpService;
import com.product.service.OrderinfoService;
import com.product.util.Common;

@Controller
@RequestMapping("/orderinfo")
public class OrderinfoController {
	@Autowired
    private OrderinfoService orderinfoService;
    
	@Autowired
    private HelpService helpService;
	
	@RequestMapping("/add")
	public String add(Map<String, Object> mav,HttpSession session,Orderinfo orderinfo){
		User user = (User) session.getAttribute("user");
		if(user==null){
			return "LoginPage";
		}
		Help help = helpService.findById(orderinfo.getHelpId());
		help.setType(1);
		helpService.update(help);
		
		
		orderinfo.setUserId(user.getUser_id());
		orderinfo.setTime(Common.getSysTime());
	    orderinfoService.add(orderinfo);
		
	    mav.put("message", "接单成功");
		return "msg";
	}
}
