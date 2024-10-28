package com.entity;

import com.util.VeDate;

public class Goods {
	private String goodsid = "G" + VeDate.getStringId();// 生成主键编号
	private String usersid;// 发布人
	private String goodsname;// 商品名称
	private String cateid;// 商品类型
	private String image;// 图片
	private String price;// 销售单价
	private String addtime;// 发布日期
	private String storage;// 库存数
	private String hits;// 点击数
	private String sellnum;// 销售数量
	private String status;// 状态
	private String contents;// 商品介绍
	private String username;// 映射数据
	private String catename;// 映射数据

	public String getGoodsid() {
		return goodsid;
	}

	public void setGoodsid(String goodsid) {
		this.goodsid = goodsid;
	}

	public String getUsersid() {
		return this.usersid;
	}

	public void setUsersid(String usersid) {
		this.usersid = usersid;
	}

	public String getGoodsname() {
		return this.goodsname;
	}

	public void setGoodsname(String goodsname) {
		this.goodsname = goodsname;
	}

	public String getCateid() {
		return this.cateid;
	}

	public void setCateid(String cateid) {
		this.cateid = cateid;
	}

	public String getImage() {
		return this.image;
	}

	public void setImage(String image) {
		this.image = image;
	}

	public String getPrice() {
		return this.price;
	}

	public void setPrice(String price) {
		this.price = price;
	}

	public String getAddtime() {
		return this.addtime;
	}

	public void setAddtime(String addtime) {
		this.addtime = addtime;
	}

	public String getStorage() {
		return this.storage;
	}

	public void setStorage(String storage) {
		this.storage = storage;
	}

	public String getHits() {
		return this.hits;
	}

	public void setHits(String hits) {
		this.hits = hits;
	}

	public String getSellnum() {
		return this.sellnum;
	}

	public void setSellnum(String sellnum) {
		this.sellnum = sellnum;
	}

	public String getStatus() {
		return this.status;
	}

	public void setStatus(String status) {
		this.status = status;
	}

	public String getContents() {
		return this.contents;
	}

	public void setContents(String contents) {
		this.contents = contents;
	}

	public String getUsername() {
		return this.username;
	}

	public void setUsername(String username) {
		this.username = username;
	}

	public String getCatename() {
		return this.catename;
	}

	public void setCatename(String catename) {
		this.catename = catename;
	}

	// 重载方法 生成JSON类型字符串
	@Override
	public String toString() {
		return "Goods [goodsid=" + this.goodsid + ", usersid=" + this.usersid + ", goodsname=" + this.goodsname
				+ ", cateid=" + this.cateid + ", image=" + this.image + ", price=" + this.price + ", addtime="
				+ this.addtime + ", storage=" + this.storage + ", hits=" + this.hits + ", sellnum=" + this.sellnum
				+ ", status=" + this.status + ", contents=" + this.contents + ", username=" + this.username
				+ ", catename=" + this.catename + "]";
	}

}
