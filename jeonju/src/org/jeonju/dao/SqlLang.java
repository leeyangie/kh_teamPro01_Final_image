package org.jeonju.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;

public interface SqlLang {
	//user sql
	final static String GETUSERONE = "select * from user where id = ?";
	final static String GETUSERALL = "select * from user"; 
	final static String INSERTUSER = "insert into user value(default , ? , ? , ? , ?  ,? , ? ,default)";
	final static String UPDATEUSER = "update user set name = ? , email = ? , phone_num = ? , address = ? where no = ?";
	final static String DELETEUSER = "delete from user where no = ?";
	
	//qna sql
	final static String GETQNALIST = "select * from qna order by parno asc";
	final static String GETQNAONE = "select * from qna where no = ?"; 
	final static String INSERTQ = "insert into qna values(default , ? , ? , ? , 1 , 0 , default , default)";
	final static String INSERTA = "insert into qna values(default , ? , ? , ? , 2 , ? , default , default)";
	final static String UPDATEQNA = "update qna set title = ? , comment = ? where no = ?";
	final static String UPDATEQNAVISITED = "update qna set visited=visited+1 where no = ?";
	final static String DELETEQ = "delete from qna where parno = ?"; //q가 삭제 되면 a도 한번에 삭제;
	final static String DELETEA = "delete from qna where no = ?"; //a 만 삭제;
	
	//guide sql
	final static String GETTOURISMLIST = "select * from tourism";
	final static String GETTOURISMONE = "select * from tourism where no = ?";
	final static String GETTOURISMSFEOMCIDLIST = "select * from tourism where c_id = ?";
	final static String GETTBOUGHTLIST = "select * from t_bought where user_no = ?";
	final static String INSERTTBOUGHT = "insert into t_bought values(default , ? , default , ? , ? , ?)";
	final static String UPDATEMAXHEADCOUNT = "update tourism set max_headcount=max_headcount- ? where no = ?";
	final static String DELETETBOUGHT = "delete from t_bought where user_no = ?";
	final static String IMPROVEHEADCOUNT = "update tourism set max_headcount=max_headcount+ ? where no = ?";
	
	//notice sql
	final static String GETNOTICE = "select * from notice order by no desc";
	final static String INSNOTICE = "insert into notice values(default,default,?,?,default,default)";
	final static String GETNOTICEONE = "select * from notice where no = ?";
	final static String DELETENOTICE = "delete from notice where no = ?";
	final static String UPDATENOTICE = "update notice set title=? , comment=? where no = ?";
	final static String UPDATENOTICEVISITED = "update notice set visited=visited+1 where no = ?";
	
	//Festival sql
	final static String GETFESTIVALLIST = "select * from festival";
	final static String GETFESTIVALONE = "select * from festival where no = ?";
    final static String GETCulturalFacilitiesList = "select * from cultural_facilities";
    final static String GETCulturalFacilitiesOne = "select * from cultural_facilities where no = ?";
    final static String GETMainAttractionList = "select * from main_attraction";
    final static String GETMainAttractionOne = "select * from main_attraction where no = ?";
	
	//override
	public Connection connect();
	public void close(Connection con);
	public void close(Connection con ,PreparedStatement pstmt);
	public void close(Connection con ,PreparedStatement pstmt, ResultSet rs);

}
