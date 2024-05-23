package org.jeonju.dto.tour;

public class MainAttraction {
	private int no; 
	private String name;
	private String locate;
	private String comment;
	private String img;
	private String sub_img1;
	private String sub_img2;
	private String tel; 
	private String period; 
	private String homepage;
	private String sub1;
	private String sub2;
	public MainAttraction(int no, String name, String locate, String comment, String img, String sub_img1, String sub_img2,
			String tel, String period, String homepage, String sub1, String sub2) {
		super();
		this.no = no;
		this.name = name;
		this.locate = locate;
		this.comment = comment;
		this.img = img;
		this.sub_img1 = sub_img1;
		this.sub_img2 = sub_img2;
		this.tel = tel;
		this.period = period;
		this.homepage = homepage;
		this.sub1 = sub1;
		this.sub2 = sub2;
	}
	public int getNo() {
		return no;
	}
	public void setNo(int no) {
		this.no = no;
	}
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	public String getLocate() {
		return locate;
	}
	public void setLocate(String locate) {
		this.locate = locate;
	}
	public String getComment() {
		return comment;
	}
	public void setComment(String comment) {
		this.comment = comment;
	}
	public String getImg() {
		return img;
	}
	public void setImg(String img) {
		this.img = img;
	}
	public String getSub_img1() {
		return sub_img1;
	}
	public void setSub_img1(String sub_img1) {
		this.sub_img1 = sub_img1;
	}
	public String getSub_img2() {
		return sub_img2;
	}
	public void setSub_img2(String sub_img2) {
		this.sub_img2 = sub_img2;
	}
	public String getTel() {
		return tel;
	}
	public void setTel(String tel) {
		this.tel = tel;
	}
	public String getPeriod() {
		return period;
	}
	public void setPeriod(String period) {
		this.period = period;
	}
	public String getHomepage() {
		return homepage;
	}
	public void setHomepage(String homepage) {
		this.homepage = homepage;
	}
	public String getSub1() {
		return sub1;
	}
	public void setSub1(String sub1) {
		this.sub1 = sub1;
	}
	public String getSub2() {
		return sub2;
	}
	public void setSub2(String sub2) {
		this.sub2 = sub2;
	}
	@Override
	public String toString() {
		return "Festival [no=" + no + ", name=" + name + ", locate=" + locate + ", comment=" + comment + ", img=" + img
				+ ", sub_img1=" + sub_img1 + ", sub_img2=" + sub_img2 + ", tel=" + tel + ", period=" + period
				+ ", homepage=" + homepage + ", sub1=" + sub1 + ", sub2=" + sub2 + "]";
	}
	
	
}
