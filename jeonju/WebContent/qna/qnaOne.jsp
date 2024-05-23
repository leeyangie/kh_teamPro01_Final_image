<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>QNA</title>
<%@ include file="/head.jsp" %>
<link rel="stylesheet" href="${ hpath}/css/header2.css?after"/>
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
  #q_one_main {
    width: 1200px;
    height: auto;
    min-height: 500px;
    margin: 20px auto;
    border-bottom:2px solid #7F7F7F;
  }
  #q_one_main input {
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

#qna_btnblock {
  width: 1200px;
  height: 200px;
  margin: 20px auto;
  display: flex;
  justify-content: center;
  align-items: center;
}

#qna_btnblock button {
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
#qna_btnblock button:hover {
  background-color: #FF431B;
  color: #fff;
}
.qna_btnblock_btn1 a {
  color: #FF431B;
}
.qna_btnblock_btn1 a:hover {
  color:white;
}

.qna_btnblock_btn2 {
  display: none;
}
#qna_btnblock_btn3{
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
#qna_btnblock_btn3 a {
  color: #FF431B;
}
#qna_btnblock_btn3 a:hover {
  background-color: #FF431B;
  color: #fff;
}
  
</style>
</head>
<body>
<div id="content">
<%@ include file="/header.jsp" %>
<div class="page_title"><h3>QNA</h3></div>
<div class="breadcrumb">공지사항 > QNA</div>
  <div id="q_one_main">
  <form id="form" action="${hpath }/qna_edit_q" method="post">
    <div style="display: flex; font-size:23px; border-bottom:2px solid #7F7F7F; border-top: 2px solid #7F7F7F; height: 23px; padding: 20px 20px;" >
      <p id="qora">[질문]</p>&nbsp;<input type="text" name="title" style="width: 600px; padding-top: 5px" value=${qna.title } readonly="readonly">
      <p id="qname" style="width: 100px">${qna.user_name }</p>
      <p style="width: 240px; font-size:20px;">
        <fmt:parseDate value="${qna.resdate}" var="dateValue" pattern="yyyy-MM-dd HH:mm:ss"/>
                <fmt:formatDate value="${dateValue}" pattern="yyyy/MM/dd HH시mm분ss초"/>
      </p>
      <p style="color: #DBDBDB; padding-left: 70px">${qna.visited }</p>
    </div>
    <div style="  padding: 50px">
      <textarea style="border-style: none; font-size: 23px; resize: none;"  readonly="readonly" name="comment" cols="70px" rows="auto">${qna.comment }</textarea>
    </div>
  </div>
  <div id="qna_btnblock">
  <c:if test="${sname eq '관리자' and qna.q_level ne 2}">
  <input type="password" style="display:none" value=${qna.parno } name="parno">
   <button type="button" class="qna_btnblock_btn1 a">답변하기</button>
  </c:if>
        <button type="button" class="qna_btnblock_btn2 a">취소</button>
   <c:if test="${qna.user_name eq sname and  qna.user_name ne '관리자'}">
     <button type="submit" class="qna_btnblock_btn2" onclick="onSubmit1()">저장</button>
   </c:if>
   <c:if test="${qna.user_name eq sname }">
    <input type="password" style="display:none" value=${qna.no } name="no">
   <button type="button" class="qna_btnblock_btn1">글 수정</button>
   <button type="button" class="qna_btnblock_btn1"><a href="${hpath }/qna_list">목록으로</a></button>
   
   <c:choose>
     <c:when test="${sname eq '관리자' }">
       <button type="button" id="qna_btnblock_btn3" onclick="onDelete()"><a href="${hpath }/qna_delete?no=${qna.no}">글삭제</a></button>
     </c:when>
     <c:otherwise>
       <button type="button" id="qna_btnblock_btn3" onclick="onDelete()"><a href="${hpath }/qna_delete?parno=${qna.parno}">글삭제</a></button>
     </c:otherwise>
   </c:choose>

   
   
  </c:if>
   <c:if test="${sname eq '관리자' }">
        <button type="submit" class="qna_btnblock_btn2" onclick="onSubmit2()">글 등록</button>
   </c:if>
  </div>
</form>

</div>
<script>
$('.qna_btnblock_btn1').on('click', function() {
    $('.qna_btnblock_btn1').css('display', 'none');
    $('.qna_btnblock_btn2').css('display', 'block');
    $('input[type="text"][name="title"]').attr('readonly', false);
    $('input[type="text"][name="title"]').css('background-color','#F2F2F2');
    $('textarea[name="comment"]').css('background-color','#F2F2F2');
    $('textarea[name="comment"]').attr('readonly', false);
});
$('.qna_btnblock_btn1.a').on('click', function() {
    $('.qna_btnblock_btn1').css('display', 'none');
    $('.qna_btnblock_btn2').css('display', 'block');
    $('form').attr('action','${hpath }/qna_insert_a');
    $('#qora').text('[답변]');
    $('#qname').text('관리자');
    $('input[type="text"][name="title"]').attr('value', '');
    $('input[type="text"][name="title"]').attr('readonly', false);
    $('input[type="text"][name="title"]').css('background-color','#F2F2F2');
    $('textarea[name="comment"]').css('background-color','#F2F2F2');
    $('textarea[name="comment"]').text('');
    $('textarea[name="comment"]').attr('readonly', false);
});

$('.qna_btnblock_btn2.a').on('click', function() {
    $('.qna_btnblock_btn1').css('display', 'block');
    $('.qna_btnblock_btn2').css('display', 'none');
    $('#qora').text('[질문]');
    $('#qname').text('${qna.user_name}');
    $('#form').attr('action', '${hpath}/qna_edit_q');
    $('textarea[name="comment"]').val('${qna.comment}');
    $('#form textarea[name="comment"]').attr('readonly', true);
    $('#form input[type="text"][name="title"]').css('background-color', 'white');
    $('#form textarea[name="comment"]').css('background-color', 'white');
    $('input[type="text"][name="title"]').val('${qna.title}');
    $('#form input[type="text"][name="title"]').attr('readonly', true);
});
function onSubmit1() {
	alert('수정되었습니다!');
}
function onSubmit2() {
	alert('답변 완료!');
}
function onDelete() {
	alert('삭제완료!');
}
</script>

<%@ include file="/footer.jsp" %>
</body>
</html>