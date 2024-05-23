package org.jeonju.dao.tour;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;

import org.jeonju.dao.MysqlDB;
import org.jeonju.dao.SqlLang;
import org.jeonju.dto.User;
import org.jeonju.dto.tour.CulturalFacilities;

public class CulturalFacilitiesDAO {
	Connection con = null;
	PreparedStatement pstmt = null;
	ResultSet rs = null;
	MysqlDB db = new MysqlDB();
	
	public List<CulturalFacilities> getCulturalFacilitiesList() {
		List<CulturalFacilities> CulturalFacilitiesList = new ArrayList<CulturalFacilities>();
		try {
			con = db.connect();
			pstmt = con.prepareStatement(SqlLang.GETCulturalFacilitiesList);
			rs = pstmt.executeQuery();
			while(rs.next()) {
				CulturalFacilities CulturalFacilities = new CulturalFacilities(rs.getInt("no"),
								  rs.getString("name"),
						          rs.getString("locate"),
						          rs.getString("comment"),
						          rs.getString("img"),
						          rs.getString("sub_img1"),
						          rs.getString("sub_img2"),
						          rs.getString("tel"),
						          rs.getString("period"),
						          rs.getString("homepage"),
						          rs.getString("sub1"),
						          rs.getString("sub2"));
				
				CulturalFacilitiesList.add(CulturalFacilities);
			}
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			db.close(con, pstmt, rs);
		}
		
		return CulturalFacilitiesList;
	}
	
	public CulturalFacilities getCulturalFacilitiesOne(int no) {
		CulturalFacilities CulturalFacilities = null;
		
		try {
			con = db.connect();
			pstmt = con.prepareStatement(SqlLang.GETCulturalFacilitiesOne);
			pstmt.setInt(1, no);
			rs = pstmt.executeQuery();
			if(rs.next()) {
				CulturalFacilities = new CulturalFacilities(rs.getInt("no"),
						  rs.getString("name"),
				          rs.getString("locate"),
				          rs.getString("comment"),
				          rs.getString("img"),
				          rs.getString("sub_img1"),
				          rs.getString("sub_img2"),
				          rs.getString("tel"),
				          rs.getString("period"),
				          rs.getString("homepage"),
				          rs.getString("sub1"),
				          rs.getString("sub2"));
			}
		} catch (Exception e) {
			//rs에 문제가 생긴경우 (user를 받지 못했다.);
			e.printStackTrace();
		} finally {
			db.close(con, pstmt , rs);
		}
		//해당 유저를 받았다면 객체를 , 아니라면  null을 return;
		return CulturalFacilities;
	}
}



