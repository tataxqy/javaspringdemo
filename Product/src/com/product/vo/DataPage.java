package com.product.vo;

import java.util.ArrayList;
import java.util.List;
//对列表进行分页
public class DataPage<T> {
	private int pageSize = 3; // 页大小
	private int pageIndex = 0; // 当前页号
	private int totalPageCount = 0; // 总页数
	private int record = 0; // 记录总数
	private Integer nextPage; // 下一页
	private Integer prePage; // 上一页
	private List<T> list = new ArrayList<T>(); // 当前页的数据
	
	public int getPageSize() {
		return pageSize;
	}
	public void setPageSize(int pageSize) {
		this.pageSize = pageSize;
	}
	public int getPageIndex() {
		return pageIndex;
	}
	public void setPageIndex(int pageIndex) {
		this.pageIndex = pageIndex;
	}
	public int getTotalPageCount() {
		   int totalP = record % getPageSize() == 0 ? record / getPageSize() :  
	            record/ getPageSize() + 1;  
	        this.totalPageCount = totalP;  
	     return totalPageCount;
	}
	public void setTotalPageCount(int totalPageCount) {
		this.totalPageCount = totalPageCount;
	}
	public int getRecord() {
		return record;
	}
	public void setRecord(int record) {
		this.record = record;
	}
	public Integer getNextPage() {
		return pageIndex+1;
	}
	public void setNextPage(Integer nextPage) {
		this.nextPage = nextPage;
	}
	public Integer getPrePage() {
		prePage =this.pageIndex-1;  
        if(this.prePage<1){  
            this.prePage=1;  
        } 
        return prePage;
	}
	public void setPrePage(Integer prePage) {
		this.prePage = prePage;
	}
	public List<T> getList() {
		return list;
	}
	public void setList(List<T> list) {
		this.list = list;
	}

}
