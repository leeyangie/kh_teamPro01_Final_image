package org.jeonju.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;

import org.jeonju.dto.Qna;

public class QnaDAO {
	Connection con = null;
	PreparedStatement pstmt = null;
	ResultSet rs = null;
	MysqlDB db = new MysqlDB();
	
	public List<Qna> getQnaList() {
		List<Qna> qnaList = new ArrayList<Qna>();
		try {
			con = db.connect();
			pstmt = con.prepareStatement(SqlLang.GETQNALIST);
			rs = pstmt.executeQuery();
			while(rs.next()) {
				Qna qna = new Qna(rs.getInt("no"),
								  rs.getString("user_name"),
						          rs.getString("title"),
						          rs.getString("comment"),
						          rs.getInt("q_level"),
						          rs.getInt("parno"),
						          rs.getString("resdate"),
						          rs.getInt("visited"));
				
				qnaList.add(qna);
			}
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			db.close(con, pstmt, rs);
		}
		
		return qnaList;
	}
	
	public Qna getQnaOne(int no , boolean isVisit) {
		Qna qna = null;
		try {
			con = db.connect();
			//상세 보기로 들어갈 경우에는 visited가 증가하지 않는다.
			if(isVisit) {
				pstmt = con.prepareStatement("update qna set visited = visited + 1 where no = ?");
				pstmt.setInt(1, no);
				pstmt.executeUpdate();
				pstmt = null;
			}
			
			pstmt = con.prepareStatement(SqlLang.GETQNAONE);
			pstmt.setInt(1, no);
			rs = pstmt.executeQuery();
			if(rs.next()) {
				qna = new Qna(rs.getInt("no"),
							  rs.getString("user_name"),
					          rs.getString("title"),
					          rs.getString("comment"),
					          rs.getInt("q_level"),
					          rs.getInt("parno"),
					          rs.getString("resdate"),
					          rs.getInt("visited"));
			}
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			db.close(con, pstmt, rs);
		}
		
		return qna;
	}
	
	public int insertQ(String user_name , String title , String comment) {
		int cnt = 0;
		try {
			con = db.connect();
			pstmt = con.prepareStatement(SqlLang.INSERTQ);
			pstmt.setString(1, user_name);
			pstmt.setString(2, title);
			pstmt.setString(3, comment);
			cnt = pstmt.executeUpdate();
			
			pstmt = null;	
			pstmt = con.prepareStatement("UPDATE qna AS q1 JOIN (SELECT no FROM qna ORDER BY no DESC LIMIT 1) AS q2 ON q1.no = q2.no SET q1.parno = q2.no;");
			cnt = pstmt.executeUpdate();
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			db.close(con, pstmt);
		}
		
		return cnt;
	}
	
	
	public int insertA(String user_name , String title , String comment , int parno) {
		int cnt = 0;
		try {
			con = db.connect();
			pstmt = con.prepareStatement(SqlLang.INSERTA);
			pstmt.setString(1, user_name);
			pstmt.setString(2, title);
			pstmt.setString(3, comment);
			pstmt.setInt(4, parno);
			cnt = pstmt.executeUpdate();
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			db.close(con, pstmt);
		}
		return cnt;
	}
	
	public int updateQna(int no , String title , String comment) {
		int cnt = 0;
		try {
			con = db.connect();
			pstmt = con.prepareStatement(SqlLang.UPDATEQNA);
			pstmt.setString(1, title);
			pstmt.setString(2, comment);
			pstmt.setInt(3, no);
			cnt = pstmt.executeUpdate();
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			db.close(con, pstmt);
		}
		
		return cnt;
	}
	
	public int deleteQna(Integer no, Integer parno) {
		int cnt = 0;
		con = db.connect();
		try {
			if(no == null) {
			  pstmt = con.prepareStatement(SqlLang.DELETEQ);
			  pstmt.setInt(1, (int)parno);
			  cnt = pstmt.executeUpdate();
			}
			else if(parno == null) {
			  pstmt = con.prepareStatement(SqlLang.DELETEA);
			  pstmt.setInt(1,(int)no);
			  cnt = pstmt.executeUpdate();
			}
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			db.close(con, pstmt);
		}
		
		return cnt;
	}
	
	
}
