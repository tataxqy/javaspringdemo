package com.product.mapper;

import java.util.List;

import com.product.po.Help;
import com.product.vo.HelpVo;

public interface HelpCustomMapper {
    public List<Help> findPage(HelpVo helpVo);//查询自己发出的订单
	
	public int findPageCount(HelpVo helpVo);
	
	
    public List<Help> findPageByOrder(HelpVo helpVo);//查询已接的订单
	
	public int findPageCountByOrder(HelpVo helpVo);
}
