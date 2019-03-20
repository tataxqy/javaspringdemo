package com.product.vo;

import com.product.po.Help;

public class HelpVo {
    private Help help;

    private Integer pageSize = 10; // 页大小

    private Integer pageIndex = 1; // 页码
	
	public Help getHelp() {
		return help;
	}

	public void setHelp(Help help) {
		this.help = help;
	}

	public Integer getPageSize() {
		return pageSize;
	}

	public void setPageSize(Integer pageSize) {
		this.pageSize = pageSize;
	}

	public Integer getPageIndex() {
		return pageIndex;
	}

	public void setPageIndex(Integer pageIndex) {
		this.pageIndex = pageIndex;
	}
    
    
}
