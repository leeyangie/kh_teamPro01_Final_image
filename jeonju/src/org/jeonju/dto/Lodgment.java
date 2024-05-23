package org.jeonju.dto;

public class Lodgment {
	private int no;
	private String locate;
	private String homepage;
	private String comment;
	private String img;
	private String tel;
	private int visited;
	public Lodgment(int no, String locate, String homepage, String comment, String img, String tel, int visited) {
		super();
		this.no = no;
		this.locate = locate;
		this.homepage = homepage;
		this.comment = comment;
		this.img = img;
		this.tel = tel;
		this.visited = visited;
	}
	public int getNo() {
		return no;
	}
	public void setNo(int no) {
		this.no = no;
	}
	public String getLocate() {
		return locate;
	}
	public void setLocate(String locate) {
		this.locate = locate;
	}
	public String getHomepage() {
		return homepage;
	}
	public void setHomepage(String homepage) {
		this.homepage = homepage;
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
	public String getTel() {
		return tel;
	}
	public void setTel(String tel) {
		this.tel = tel;
	}
	public int getVisited() {
		return visited;
	}
	public void setVisited(int visited) {
		this.visited = visited;
	}
	@Override
	public String toString() {
		return "Lodgment [no=" + no + ", locate=" + locate + ", homepage=" + homepage + ", comment=" + comment
				+ ", img=" + img + ", tel=" + tel + ", visited=" + visited + "]";
	}
	
	
}
