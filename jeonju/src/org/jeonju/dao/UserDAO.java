package org.jeonju.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;

import org.jeonju.dto.User;

public class UserDAO {
	Connection con = null;
	PreparedStatement pstmt = null;
	ResultSet rs = null;
	MysqlDB db = new MysqlDB();
	
	
	//로그인에 필요하기 때문에 id를 파라미터로 설정;
	public User getUserOne(String id) {
		User user = null;
		
		try {
			con = db.connect();
			pstmt = con.prepareStatement(SqlLang.GETUSERONE);
			pstmt.setString(1, id);
			rs = pstmt.executeQuery();
			if(rs.next()) {
				user = new User(rs.getInt("no"),
						        rs.getString("id"), 
						        rs.getString("name"), 
						        rs.getString("pw"), 
						        rs.getString("email"), 
						        rs.getString("phone_num"), 
						        rs.getString("address"),
						        rs.getString("resdate"));
			}
		} catch (Exception e) {
			//rs에 문제가 생긴경우 (user를 받지 못했다.);
			e.printStackTrace();
		} finally {
			db.close(con, pstmt , rs);
		}
		//해당 유저를 받았다면 객체를 , 아니라면  null을 return;
		return user;
	}
	
	public List<User> getUserList() {
		List<User> userList = new ArrayList<User>();
		
		try {
			con = db.connect();
			pstmt = con.prepareStatement(SqlLang.GETUSERALL);
			rs = pstmt.executeQuery();
			while(rs.next()) {
				User user = new User(rs.getInt("no"),
								     rs.getString("id"), 
								     rs.getString("name"), 
								     rs.getString("pw"), 
								     rs.getString("email"), 
								     rs.getString("phone_num"), 
								     rs.getString("address"),
								     rs.getString("resdate"));
				userList.add(user);
			}
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			db.close(con, pstmt, rs);
		}
		return userList;
	}
	
	
	public int insertUser(User user) {
		int cnt = 0;
		try {
			con = db.connect();
			pstmt = con.prepareStatement(SqlLang.INSERTUSER);
			pstmt.setString(1, user.getId());
			pstmt.setString(2, user.getName());
			pstmt.setString(3, user.getPw());
			pstmt.setString(4, user.getEmail());
			pstmt.setString(5, user.getPhone_num());
			pstmt.setString(6, user.getAddress());
			cnt = pstmt.executeUpdate();
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			db.close(con, pstmt);
		}
		
		
		return cnt;
	}
	
	
	
	public int updateUser(User user , int no) {
		int cnt = 0;
		
		 try {
			 con = db.connect();
			 pstmt = con.prepareStatement(SqlLang.UPDATEUSER);
			 pstmt.setString(1, user.getName());
			 pstmt.setString(2, user.getEmail());
			 pstmt.setString(3, user.getPhone_num());
			 pstmt.setString(4, user.getAddress());
			 pstmt.setInt(5, no);
			 cnt = pstmt.executeUpdate();
		 } catch (Exception e) {
			 e.printStackTrace();
		 } finally {
			db.close(con, pstmt);
		}
		
		return cnt; 
	}
	
	
	public int deleteUser(int no) {
		int cnt = 0;
		
		try {
			con = db.connect();
			pstmt = con.prepareStatement(SqlLang.DELETEUSER);
			pstmt.setInt(1, no);
			cnt = pstmt.executeUpdate();
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			db.close(con, pstmt);
		}
		return cnt;
	}
	
	
	
}
