package com.songbaozhen.senior1.week1.entity;

public class Zl {
	private Integer bid;
	private String bname;
	public Integer getBid() {
		return bid;
	}
	public void setBid(Integer bid) {
		this.bid = bid;
	}
	public String getBname() {
		return bname;
	}
	public void setBname(String bname) {
		this.bname = bname;
	}
	@Override
	public String toString() {
		return "Zl [bid=" + bid + ", bname=" + bname + "]";
	}
	public Zl(Integer bid, String bname) {
		super();
		this.bid = bid;
		this.bname = bname;
	}
	public Zl() {
		super();
		// TODO Auto-generated constructor stub
	}
	
	
}
