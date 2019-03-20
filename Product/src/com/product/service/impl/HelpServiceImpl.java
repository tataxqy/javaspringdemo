package com.product.service.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.product.mapper.HelpCustomMapper;
import com.product.mapper.HelpMapper;
import com.product.po.Help;
import com.product.service.HelpService;
import com.product.vo.DataPage;
import com.product.vo.HelpVo;

@Service
public class HelpServiceImpl implements HelpService {
	@Autowired
    private HelpCustomMapper helpCustomMapper;
	@Autowired
    private HelpMapper helpMapper;
    
    
	@Override
	public void add(HelpVo helpVo) {
		helpMapper.insertSelective(helpVo.getHelp());

	}

	@Override
	public DataPage<Help> findPage(HelpVo helpVo) {
		DataPage<Help> datapage = new DataPage<Help>();
		
		int record = helpCustomMapper.findPageCount(helpVo);
		datapage.setPageIndex(helpVo.getPageIndex());
		datapage.setPageSize(helpVo.getPageSize());
		datapage.setRecord(record);
		if(datapage.getTotalPageCount()<helpVo.getPageIndex()){
			return null;//已经超出最大页数
		}
		helpVo.setPageIndex((helpVo.getPageIndex()-1)*helpVo.getPageSize());
		List<Help> list = helpCustomMapper.findPage(helpVo);
		
		datapage.setList(list);

		
		return datapage;
	}

	@Override
	public DataPage<Help> findPageByOrder(HelpVo helpVo) {
        DataPage<Help> datapage = new DataPage<Help>();
		
		int record = helpCustomMapper.findPageCountByOrder(helpVo);
		datapage.setPageIndex(helpVo.getPageIndex());
		datapage.setPageSize(helpVo.getPageSize());
		datapage.setRecord(record);
		if(datapage.getTotalPageCount()<helpVo.getPageIndex()){
			return null;//已经超出最大页数
		}
		helpVo.setPageIndex((helpVo.getPageIndex()-1)*helpVo.getPageSize());
		List<Help> list = helpCustomMapper.findPageByOrder(helpVo);
		
		datapage.setList(list);

		
		return datapage;
	}

	@Override
	public Help findById(int id) {
		
		return helpMapper.selectByPrimaryKey(id);
	}

	@Override
	public void update(Help help) {
		helpMapper.updateByPrimaryKeySelective(help);
		
	}

}
