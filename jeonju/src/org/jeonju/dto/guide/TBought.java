package org.jeonju.dto.guide;

public class TBought {
	private int no;
	private String start_time;
	private String resdate;
	private int headcount;
	private int user_no;
	private int t_no;
	public TBought(int no, String start_time, String resdate, int headcount, int user_no, int t_no) {
		super();
		this.no = no;
		this.start_time = start_time;
		this.resdate = resdate;
		this.headcount = headcount;
		this.user_no = user_no;
		this.t_no = t_no;
	}
	public int getNo() {
		return no;
	}
	public void setNo(int no) {
		this.no = no;
	}
	public String getStart_time() {
		return start_time;
	}
	public void setStart_time(String start_time) {
		this.start_time = start_time;
	}
	public String getResdate() {
		return resdate;
	}
	public void setResdate(String resdate) {
		this.resdate = resdate;
	}
	public int getHeadcount() {
		return headcount;
	}
	public void setHeadcount(int headcount) {
		this.headcount = headcount;
	}
	public int getUser_no() {
		return user_no;
	}
	public void setUser_no(int user_no) {
		this.user_no = user_no;
	}
	public int getT_no() {
		return t_no;
	}
	public void setT_no(int t_no) {
		this.t_no = t_no;
	}
	@Override
	public String toString() {
		return "TBought [no=" + no + ", start_time=" + start_time + ", resdate=" + resdate + ", headcount=" + headcount
				+ ", user_no=" + user_no + ", t_no=" + t_no + "]";
	}
	
	
}
