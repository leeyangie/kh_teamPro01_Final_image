<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>공지사항</title>
<%@ include file="/head.jsp" %>
<link rel="stylesheet" href="${hpath }/css/header2.css" />
<style>
  .breadcrumb { 
    font-size: 0.9em; 
    margin-bottom: 10px; 
    color:rgb(134, 134, 134); 
    text-align: center; 
  }
  #line {
    width: 100%; 
    height: 10px;
    border-bottom: 1px solid #F24405;
  }
  #insert_notice_main {
    width: 1200px;
    height: 50px;
    min-height: 500px;
    margin: 20px auto;
    background-color: #a1a1a1;
  }
  #insert_notice_title {
    width: 1200px;
    height: 70px;
    background-color: #F2F2F2;
    margin: 20px auto;
    display: flex; 
    font-size: 23px; 
    border: 2px solid #7F7F7F; 
 
  }
  #insert_notice_comment {
    width: 1200px;
    height: 600px;
    background-color: #F2F2F2;
    margin: 20px auto;
    display: flex; 
    font-size: 23px; 
    border: 2px solid #7F7F7F; 
  }
  #notice_btnblock {
  width: 1200px;
  height: 150px;
  margin: 20px auto;
  display: flex;
  justify-content: center;
  align-items: center;
}
  #notice_btnblock button {
  margin: 0 auto;
  width: 130px;
  height: 36px;
  background-color: #fff;
  border-radius: 30px;
  color: #FF431B;
  font-size: 15px;
  cursor: pointer;
  border: 1px solid #FF431B;
}
#notice_btnblock button:hover {
  background-color: #FF431B;
  color: #fff;
}
#notice_btnblock_btn1 a {
  color: #FF431B;
}
#notice_btnblock_btn1 a:hover {
  color:white;
}

</style>
</head>
<body>
<div id="content">
<%@ include file="/header.jsp" %>
<div class="page_title"><h3>공지사항</h3></div>
<div class="breadcrumb">공지사항 > 공지사항</div>
<form action="${hpath }/notice_insert" method="post">
  <div id="insert_notice_title">
    <div style="width: 150px; padding: 25px; text-align: center">제목</div>
    <input type="text" placeholder="    제목을 입력해주세요" name="title" style="width:100%; border: none; height: 30px; outline: none; font-size: 23px; padding:20px 20px;">
  </div>
  <div id="insert_notice_comment">
    <div style="width: 150px; height: 550px; padding: 25px; text-align: center">글내용</div>
    <textarea rows="560px" placeholder="    내용을 입력해주세요" name="comment" style=" border-style: none; font-size: 23px; resize: none; width:100%; border: none; height: 560px; outline: none; font-size: 23px; padding:20px 20px;"></textarea>
  </div>
  <div id="notice_btnblock">
 <button type="submit" class="notice_btnblock_btn2 a" onclick="onSubmit1()">글등록</button>
 <button type="button" id="notice_btnblock_btn1"><a href="${hpath }/notice_list">목록으로</a></button>
</div>
</form>
<script>
function onSubmit1() {
	alert('등록완료!');
}
</script>
</div>
<%@ include file="/footer.jsp" %>
</body>
</html>