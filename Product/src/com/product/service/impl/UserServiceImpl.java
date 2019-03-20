package com.product.service.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.product.mapper.UserMapper;
import com.product.po.User;
import com.product.po.UserExample;
import com.product.service.UserService;
//接口实现
@Service
public class UserServiceImpl implements UserService {
	@Autowired
    private UserMapper userMapper;
    
	@Override
	public void add(User user) {
		userMapper.insertSelective(user);

	}

	@Override
	public User findByName(String username) {
		UserExample example = new UserExample();
		example.createCriteria().andUser_nameEqualTo(username);
		List<User> list = userMapper.selectByExample(example);
		if(list!=null&&list.size()>0){
			return list.get(0);
		}
		return null;
	}

}
