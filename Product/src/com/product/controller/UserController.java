package com.product.controller;

import java.util.Map;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

import com.product.po.Product;
import com.product.po.User;
import com.product.service.UserService;
import com.product.util.MD5;

@Controller
@RequestMapping("/user")
public class UserController {
	@Autowired
    private UserService userService;
    
	
	@RequestMapping("/add")//注册页面，在登陆页面单击“注册按钮的时候，会访问user/add”服务，然后跳转到register.jsp
	public String add(Map<String, Object> mav,User user){
		User user1 = userService.findByName(user.getUser_name());
		if(user1!=null){
			mav.put("msg", "用户已存在");
			return "/message";
		}
		user.setStatus(0);//用户状态为0，可以访问
		userService.add(user);
		
		return "/LoginPage";
	}
	
	@RequestMapping("/login")//跳转到登陆页面
	public String list(Map<String, Object> mav,HttpSession session,User user){
		User user1 = userService.findByName(user.getUser_name());
		if(user1!=null){
			if(MD5.getMd5(user.getPassword()).equals(user1.getPassword())){
				if(user1.getStatus()==1){
					mav.put("msg", "用户状态错误̬");
					return "/message";//跳转到message.jsp页面
				}
				session.setAttribute("user", user1);//记录这个user，将用户保存在session中
				mav.put("msg", "登录成功");
				return "/index";//返回index.jsp
			}else{
				mav.put("msg", "密码错误");
				return "/message";
			}
		}else{
			mav.put("msg", "用户不存在");
			return "/message";
		}
		
	}
	@RequestMapping("/loginout")
	public String loginout(HttpSession session)
	{
		if(session.getAttribute("user")!=null)
		{
			session.removeAttribute("user");
		}
		
		return "/index";
	}
	
	
	
}
