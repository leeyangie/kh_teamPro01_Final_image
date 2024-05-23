package org.jeonju.dto;

public class Notice {
	private int no;
	private String name;
	private String title;
	private String comment;
	private String resdate;
	private int visited;
	public Notice(int no, String name, String title, String comment, String resdate, int visited) {
		super();
		this.no = no;
		this.name = name;
		this.title = title;
		this.comment = comment;
		this.resdate = resdate;
		this.visited = visited;
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
	public String getTitle() {
		return title;
	}
	public void setTitle(String title) {
		this.title = title;
	}
	public String getComment() {
		return comment;
	}
	public void setComment(String comment) {
		this.comment = comment;
	}
	public String getResdate() {
		return resdate;
	}
	public void setResdate(String resdate) {
		this.resdate = resdate;
	}
	public int getVisited() {
		return visited;
	}
	public void setVisited(int visited) {
		this.visited = visited;
	}
	@Override
	public String toString() {
		return "Notice [no=" + no + ", name=" + name + ", title=" + title + ", comment=" + comment + ", resdate="
				+ resdate + ", visited=" + visited + "]";
	}
	
	
	
	
}
