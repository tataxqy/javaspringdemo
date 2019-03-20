package com.product.service;

import com.product.po.Product;
import com.product.po.User;
//接口
public interface UserService {
	 public void add(User user);
	 
     public User findByName(String username);
}
