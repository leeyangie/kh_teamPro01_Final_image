package org.jeonju.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;

import org.jeonju.dto.guide.TBought;
import org.jeonju.dto.guide.Tourism;

public class GuideDAO {
	Connection con = null;
	PreparedStatement pstmt = null;
	ResultSet rs = null;
	MysqlDB db = new MysqlDB();
	
	public List<Tourism> getTourismList() {
		List<Tourism> tourismList = new ArrayList<Tourism>();
		try {
			con = db.connect();
			pstmt = con.prepareStatement(SqlLang.GETTOURISMLIST);
			rs = pstmt.executeQuery();
			while(rs.next()) {
				Tourism tourism = new Tourism(rs.getInt("no"),
						  		  rs.getInt("c_id"),
								  rs.getString("name"),
						          rs.getString("start_locate"),
						          rs.getString("lang"),
						          rs.getString("course"),
						          rs.getInt("max_headcount"),
						          rs.getInt("need_time"),
						          rs.getInt("when_time"));
				
				tourismList.add(tourism);
			}
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			db.close(con, pstmt, rs);
		}
		
		return tourismList;
	}
	
	
	public List<Tourism> getTourismsFromCid(int c_id) {
		List<Tourism> tourismList = new ArrayList<Tourism>();
		try {
			con = db.connect();
			pstmt = con.prepareStatement(SqlLang.GETTOURISMSFEOMCIDLIST);
			pstmt.setInt(1, c_id);
			rs = pstmt.executeQuery();
			while(rs.next()) {
			  Tourism tourism = new Tourism(rs.getInt("no"),
				  		  rs.getInt("c_id"),
						  rs.getString("name"),
				          rs.getString("start_locate"),
				          rs.getString("lang"),
				          rs.getString("course"),
				          rs.getInt("max_headcount"),
				          rs.getInt("need_time"),
				          rs.getInt("when_time"));
				
			  tourismList.add(tourism);
			}
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			db.close(con, pstmt, rs);
		}
		return tourismList;
	}
	
	
	public Tourism getTourismOne(int no) {
		Tourism tourism = null;
		try {
			con = db.connect();
			pstmt = con.prepareStatement(SqlLang.GETTOURISMONE);
			pstmt.setInt(1, no);
			rs = pstmt.executeQuery();
			if(rs.next()) {
			  tourism = new Tourism(rs.getInt("no"),
				  		  rs.getInt("c_id"),
						  rs.getString("name"),
				          rs.getString("start_locate"),
				          rs.getString("lang"),
				          rs.getString("course"),
				          rs.getInt("max_headcount"),
				          rs.getInt("need_time"),
				          rs.getInt("when_time"));
			}
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			db.close(con, pstmt, rs);
		}
		return tourism;
	}
	
	public TBought getTBoughtOne(int no) {
		TBought TBought = null;
		try {
			con = db.connect();
			pstmt = con.prepareStatement(SqlLang.GETTBOUGHTLIST);
			pstmt.setInt(1, no);
			rs = pstmt.executeQuery();
			if(rs.next()) {
				TBought = new TBought(rs.getInt("no"),
								  rs.getString("start_time"),
						          rs.getString("resdate"),
						          rs.getInt("headcount"),
						          rs.getInt("user_no"),
						          rs.getInt("t_no"));
			}
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			db.close(con, pstmt, rs);
		}
		
		return TBought;
	}
	
	public int insertTbought(TBought tbought) {
		int cnt = 0;
		try {
			con = db.connect();
			pstmt = con.prepareStatement(SqlLang.INSERTTBOUGHT);
			pstmt.setString(1, tbought.getStart_time());
			pstmt.setInt(2, tbought.getHeadcount());
			pstmt.setInt(3, tbought.getUser_no());
			pstmt.setInt(4, tbought.getT_no());
			cnt = pstmt.executeUpdate();
			
			pstmt = null;
			
			pstmt = con.prepareStatement(SqlLang.UPDATEMAXHEADCOUNT);
			pstmt.setInt(1, tbought.getHeadcount());
			pstmt.setInt(2, tbought.getT_no());
			
			cnt = pstmt.executeUpdate();
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			db.close(con, pstmt);
		}
		
		return cnt;
	}
	

	
	public int deleteTbought(int u_no ,int no , int head_count) {
		int cnt = 0;
		
		try {
			con = db.connect();
			pstmt = con.prepareStatement(SqlLang.IMPROVEHEADCOUNT);
			pstmt.setInt(1, head_count);
			pstmt.setInt(2, no);
			cnt = pstmt.executeUpdate();
			
			pstmt = null;
			
			pstmt = con.prepareStatement(SqlLang.DELETETBOUGHT);
			pstmt.setInt(1, u_no);
			cnt = pstmt.executeUpdate();
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			db.close(con, pstmt);
		}
		return cnt;
	}
	
}
