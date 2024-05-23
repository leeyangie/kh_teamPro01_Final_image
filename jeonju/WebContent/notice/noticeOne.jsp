<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>notice</title>
<%@ include file="/head.jsp" %>
<link rel="stylesheet" href="${hpath }/css/header2.css?after" />
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
  #n_one_main {
    width: 1200px;
    height: auto;
    min-height: 500px;
    margin: 20px auto;
    border-bottom:2px solid #7F7F7F;
  }
  #n_one_main input {
     display: block;
  margin-top: 5px;
  padding-bottom: 5px;
  font-size: 16px;
  border: none;
  outline: none;
  background: none;
  font-family: "Open Sans", Helvetica, Arial, sans-serif;
  color: black;
  
  }

#notice_btnblock {
  width: 1200px;
  height: 200px;
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
.notice_btnblock_btn1 a {
  color: #FF431B;
}
.notice_btnblock_btn1 a:hover {
  color:white;
}

.notice_btnblock_btn2 {
  display: none;
}
#notice_btnblock_btn3{
  margin: 0 auto;
  width: 130px;
  height: 20px;
  background-color: #fff;
  border-radius: 30px;
  color: #FF431B;
  font-size: 15px;
  cursor: pointer;
  border: 1px solid #FF431B;
}
#notice_btnblock_btn3 a {
  color: #FF431B;
}
#notice_btnblock_btn3 a:hover {
  background-color: #FF431B;
  color: #fff;
}
  
</style>
</head>
<body>
<div id="content">
<%@ include file="/header.jsp" %>
<div class="page_title"><h3>notice</h3></div>
<div class="breadcrumb">공지사항 > notice</div>
  <div id="n_one_main">
  <form id="form" action="${hpath }/notice_edit" method="post">
    <div style="display: flex; font-size:23px; border-bottom:2px solid #7F7F7F; border-top: 2px solid #7F7F7F; height: 23px; padding: 20px 20px;" >
      <p id="nora">[공지]</p>&nbsp;<input type="text" name="title" style="width: 600px; padding-top: 5px" value=${notice.title } readonly="readonly">
      <p id="noticeme" style="width: 100px">${notice.name}</p>
      <p style="width: 240px; font-size:20px;">
        <fmt:parseDate value="${notice.resdate}" var="dateValue" pattern="yyyy-MM-dd HH:mm:ss"/>
                <fmt:formatDate value="${dateValue}" pattern="yyyy/MM/dd HH시mm분ss초"/>
      </p>
      <p style="color: #DBDBDB; padding-left: 70px">${notice.visited }</p>
    </div>
    <div style="  padding: 50px">
      <textarea style="border-style: none; font-size: 23px; resize: none;"  readonly="readonly" name="comment" cols="70px" rows="auto">${notice.comment }</textarea>
    </div>
  </div>
  <div id="notice_btnblock">
  <c:if test="${sname eq '관리자' }">
   <button type="button" class="notice_btnblock_btn1 a">글 수정</button>
   </c:if>
   <button type="button" class="notice_btnblock_btn1"><a href="${hpath }/notice_list">목록으로</a></button>

        <button type="button" class="notice_btnblock_btn2 a">취소</button>
     <button type="submit" class="notice_btnblock_btn2" onclick="onSubmit1()">저장</button>


    <input type="password" style="display:none" value=${notice.no } name="no">

   <c:if test="${sname eq '관리자' }">
       <button type="button" id="notice_btnblock_btn3" onclick="onDelete()"><a href="${hpath }/notice_delete?no=${notice.no}">글삭제</a></button>
   </c:if>
  </div>
</form>

</div>
<script>
$('.notice_btnblock_btn1.a').on('click', function() {
    $('.notice_btnblock_btn1').css('display', 'none');
    $('.notice_btnblock_btn2').css('display', 'block');
    $('.notice_btnblock_btn2').css('display', 'block');
    $('input[type="text"][name="title"]').attr('readonly', false);
    $('input[type="text"][name="title"]').css('background-color','#F2F2F2');
    $('textarea[name="comment"]').css('background-color','#F2F2F2');
    $('textarea[name="comment"]').attr('readonly', false);
});
$('.notice_btnblock_btn2.a').on('click', function() {
    $('.notice_btnblock_btn1').css('display', 'block');
    $('.notice_btnblock_btn2').css('display', 'none');
    $('.notice_btnblock_btn2').css('display', 'none');
    $('input[type="text"][name="title"]').attr('readonly', false);
    $('input[type="text"][name="title"]').css('background-color','#F2F2F2');
    $('textarea[name="comment"]').css('background-color','#F2F2F2');
    $('textarea[name="comment"]').attr('readonly', false);
});

function onSubmit1() {
	alert('수정되었습니다!');
}
function onDelete() {
	alert('삭제완료!');
}
</script>

<%@ include file="/footer.jsp" %>
</body>
</html>