package com.product.po;

public class Product {
    private String pid;

    private String pname;

    private Integer qoh;

    private Integer qoh_threshold;

    private Float original_price;

    private Float discnt_rate;

    private String sid;

    public String getPid() {
        return pid;
    }

    public void setPid(String pid) {
        this.pid = pid == null ? null : pid.trim();
    }

    public String getPname() {
        return pname;
    }

    public void setPname(String pname) {
        this.pname = pname == null ? null : pname.trim();
    }

    public Integer getQoh() {
        return qoh;
    }

    public void setQoh(Integer qoh) {
        this.qoh = qoh;
    }

    public Integer getQoh_threshold() {
        return qoh_threshold;
    }

    public void setQoh_threshold(Integer qoh_threshold) {
        this.qoh_threshold = qoh_threshold;
    }

    public Float getOriginal_price() {
        return original_price;
    }

    public void setOriginal_price(Float original_price) {
        this.original_price = original_price;
    }

    public Float getDiscnt_rate() {
        return discnt_rate;
    }

    public void setDiscnt_rate(Float discnt_rate) {
        this.discnt_rate = discnt_rate;
    }

    public String getSid() {
        return sid;
    }

    public void setSid(String sid) {
        this.sid = sid == null ? null : sid.trim();
    }

	@Override
	public String toString() {
		return "Product [pid=" + pid + ", pname=" + pname + ", qoh=" + qoh
				+ ", qoh_threshold=" + qoh_threshold + ", original_price="
				+ original_price + ", discnt_rate=" + discnt_rate + ", sid="
				+ sid + "]";
	}
    
    
    
}