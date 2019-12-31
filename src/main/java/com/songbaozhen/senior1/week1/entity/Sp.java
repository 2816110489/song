package com.songbaozhen.senior1.week1.entity;

public class Sp {
	private Integer pid;
	private String pname;
	private String ename;
	private Integer aid;
	private Integer bid;
	//尺寸
	private String pcc;
	//价格
	private String price;
	private Integer pnum;
	//标签
	private String pbq;
	private String pimg;
	
	//种类 类型
	private String aname;
	private String bname;
	public Integer getPid() {
		return pid;
	}
	public void setPid(Integer pid) {
		this.pid = pid;
	}
	public String getPname() {
		return pname;
	}
	public void setPname(String pname) {
		this.pname = pname;
	}
	public String getEname() {
		return ename;
	}
	public void setEname(String ename) {
		this.ename = ename;
	}
	public Integer getAid() {
		return aid;
	}
	public void setAid(Integer aid) {
		this.aid = aid;
	}
	public Integer getBid() {
		return bid;
	}
	public void setBid(Integer bid) {
		this.bid = bid;
	}
	public String getPcc() {
		return pcc;
	}
	public void setPcc(String pcc) {
		this.pcc = pcc;
	}
	public String getPrice() {
		return price;
	}
	public void setPrice(String price) {
		this.price = price;
	}
	public Integer getPnum() {
		return pnum;
	}
	public void setPnum(Integer pnum) {
		this.pnum = pnum;
	}
	public String getPbq() {
		return pbq;
	}
	public void setPbq(String pbq) {
		this.pbq = pbq;
	}
	public String getPimg() {
		return pimg;
	}
	public void setPimg(String pimg) {
		this.pimg = pimg;
	}
	public String getAname() {
		return aname;
	}
	public void setAname(String aname) {
		this.aname = aname;
	}
	public String getBname() {
		return bname;
	}
	public void setBname(String bname) {
		this.bname = bname;
	}
	@Override
	public String toString() {
		return "Sp [pid=" + pid + ", pname=" + pname + ", ename=" + ename + ", aid=" + aid + ", bid=" + bid + ", pcc="
				+ pcc + ", price=" + price + ", pnum=" + pnum + ", pbq=" + pbq + ", pimg=" + pimg + ", aname=" + aname
				+ ", bname=" + bname + "]";
	}
	public Sp(Integer pid, String pname, String ename, Integer aid, Integer bid, String pcc, String price, Integer pnum,
			String pbq, String pimg, String aname, String bname) {
		super();
		this.pid = pid;
		this.pname = pname;
		this.ename = ename;
		this.aid = aid;
		this.bid = bid;
		this.pcc = pcc;
		this.price = price;
		this.pnum = pnum;
		this.pbq = pbq;
		this.pimg = pimg;
		this.aname = aname;
		this.bname = bname;
	}
	public Sp() {
		super();
		// TODO Auto-generated constructor stub
	}
	
	
}
