package org.jeonju.dao;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import org.jeonju.dto.Notice;


public class NoticeDAO {
	private Connection con = null;
	private PreparedStatement pstmt = null;
	private ResultSet rs = null;
	private MysqlDB db = new MysqlDB();
	
	public List<Notice> getNoticeList() {
	    List<Notice> noticeList = new ArrayList<Notice>();
	    try {
	    	con = db.connect();
	    	pstmt = con.prepareStatement(MysqlDB.GETNOTICE);
	    	rs = pstmt.executeQuery();
	     while(rs.next()) {
	    	Notice notice = new Notice(rs.getInt("no"),
	    							   rs.getString("name"),
	    			                   rs.getString("title"),
	    			                   rs.getString("comment"),
	    			                   rs.getString("resdate"),
	    			                   rs.getInt("visited"));
	    	noticeList.add(notice);
	    	
	    }
	    } catch (SQLException e) {
			e.printStackTrace();
		} finally {
			db.close(con, pstmt, rs);
		}
	    return noticeList;
	}
	
	public int insertNotice(String title,String comment) {
		int cnt = 0;
		try {
			con = db.connect();
			try {
				pstmt = con.prepareStatement(MysqlDB.INSNOTICE);
				pstmt.setString(1,title);
				pstmt.setString(2, comment);
				cnt = pstmt.executeUpdate();
			} catch (SQLException e) {
				e.printStackTrace();
			}
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			db.close(con, pstmt);
		}
		return cnt;
	}
	
	public Notice getNoticeOne(int no , boolean viewBreak) {
		Notice result = null;
		try {
			con = db.connect();
			try {
				if(viewBreak) {
					pstmt = con.prepareStatement(MysqlDB.UPDATENOTICEVISITED);
					pstmt.setInt(1, no);
					pstmt.executeUpdate();
					pstmt = null;
				}
				pstmt = con.prepareStatement(MysqlDB.GETNOTICEONE);
				pstmt.setInt(1, no);
				rs = pstmt.executeQuery();
				while(rs.next()) {
					Notice notice = new Notice(rs.getInt("no"),
											   rs.getString("name"),
							                   rs.getString("title"),
							                   rs.getString("comment"),
							                   rs.getString("resdate"),
							                   rs.getInt("visited"));
					result = notice;
				}
			} catch (SQLException e) {
				e.printStackTrace();
			}
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			db.close(con, pstmt, rs);
		}
		return result;
	}
	
	public int deleteNoticeOne(int no) {
		int cnt = 0;
		try {
			con = db.connect();
			try {
				pstmt = con.prepareStatement(MysqlDB.DELETENOTICE);
				pstmt.setInt(1, no);
				cnt = pstmt.executeUpdate();
			} catch (SQLException e) {
				e.printStackTrace();
			} 
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			db.close(con, pstmt);
		}
		return cnt;
	}
	
	
	public int updateNoticeOne(int no, String title,String comment) {
		int cnt = 0;
		try {
			con = db.connect();
			try {
				pstmt = con.prepareStatement(MysqlDB.UPDATENOTICE);
				pstmt.setString(1, title);
				pstmt.setString(2, comment);
				pstmt.setInt(3, no);
				cnt = pstmt.executeUpdate();
			} catch (SQLException e) {
				e.printStackTrace();
			}
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			db.close(con,pstmt);
		}
		
		return cnt;
	}
	
}
