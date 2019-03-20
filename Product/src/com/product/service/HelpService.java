package com.product.service;

import com.product.po.Help;
import com.product.vo.DataPage;
import com.product.vo.HelpVo;

public interface HelpService {
    public void add(HelpVo helpVo);
    
    public DataPage<Help> findPage(HelpVo helpVo);
    
    public DataPage<Help> findPageByOrder(HelpVo helpVo);
    
    public Help findById(int id);
    
    public void update(Help help);
}
