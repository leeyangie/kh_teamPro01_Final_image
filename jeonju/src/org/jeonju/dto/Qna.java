package org.jeonju.dto;

public class Qna {
	private int no;
	private String user_name;
	private String title;
	private String comment;
	private int q_level;
	private int parno;
	private String resdate;
	private int visited;
	public Qna(int no, String user_name, String title, String comment, int q_level, int parno, String resdate,
			int visited) {
		super();
		this.no = no;
		this.user_name = user_name;
		this.title = title;
		this.comment = comment;
		this.q_level = q_level;
		this.parno = parno;
		this.resdate = resdate;
		this.visited = visited;
	}
	public int getNo() {
		return no;
	}
	public void setNo(int no) {
		this.no = no;
	}
	public String getUser_name() {
		return user_name;
	}
	public void setUser_name(String user_name) {
		this.user_name = user_name;
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
	public int getQ_level() {
		return q_level;
	}
	public void setQ_level(int q_level) {
		this.q_level = q_level;
	}
	public int getParno() {
		return parno;
	}
	public void setParno(int parno) {
		this.parno = parno;
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
		return "Qna [no=" + no + ", user_name=" + user_name + ", title=" + title + ", comment=" + comment + ", q_level="
				+ q_level + ", parno=" + parno + ", resdate=" + resdate + ", visited=" + visited + "]";
	}
	
	

	
}
