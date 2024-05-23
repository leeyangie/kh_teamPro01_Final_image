package org.jeonju.dto.guide;

public class Tourism {
	private int no;
	private int c_id;
	private String name;
	private String start_locate;
	private String lang;
	private String course;
	private int max_headcount;
	private int need_time;
	private int when_time;
	public Tourism(int no, int c_id, String name, String start_locate, String lang, String course, int max_headcount,
			int need_time, int when_time) {
		super();
		this.no = no;
		this.c_id = c_id;
		this.name = name;
		this.start_locate = start_locate;
		this.lang = lang;
		this.course = course;
		this.max_headcount = max_headcount;
		this.need_time = need_time;
		this.when_time = when_time;
	}
	public int getNo() {
		return no;
	}
	public void setNo(int no) {
		this.no = no;
	}
	public int getC_id() {
		return c_id;
	}
	public void setC_id(int c_id) {
		this.c_id = c_id;
	}
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	public String getStart_locate() {
		return start_locate;
	}
	public void setStart_locate(String start_locate) {
		this.start_locate = start_locate;
	}
	public String getLang() {
		return lang;
	}
	public void setLang(String lang) {
		this.lang = lang;
	}
	public String getCourse() {
		return course;
	}
	public void setCourse(String course) {
		this.course = course;
	}
	public int getMax_headcount() {
		return max_headcount;
	}
	public void setMax_headcount(int max_headcount) {
		this.max_headcount = max_headcount;
	}
	public int getNeed_time() {
		return need_time;
	}
	public void setNeed_time(int need_time) {
		this.need_time = need_time;
	}
	public int getWhen_time() {
		return when_time;
	}
	public void setWhen_time(int when_time) {
		this.when_time = when_time;
	}
	@Override
	public String toString() {
		return "Tourism [no=" + no + ", c_id=" + c_id + ", name=" + name + ", start_locate=" + start_locate + ", lang="
				+ lang + ", course=" + course + ", max_headcount=" + max_headcount + ", need_time=" + need_time
				+ ", when_time=" + when_time + "]";
	}
	
	
	
}
