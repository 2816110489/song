package com.songbaozhen.senior1.week1.entity;

public class Pp {
	private Integer aid;
	private String aname;
	public Integer getAid() {
		return aid;
	}
	public void setAid(Integer aid) {
		this.aid = aid;
	}
	public String getAname() {
		return aname;
	}
	public void setAname(String aname) {
		this.aname = aname;
	}
	@Override
	public String toString() {
		return "Pp [aid=" + aid + ", aname=" + aname + "]";
	}
	public Pp(Integer aid, String aname) {
		super();
		this.aid = aid;
		this.aname = aname;
	}
	public Pp() {
		super();
		// TODO Auto-generated constructor stub
	}
	
	
}
