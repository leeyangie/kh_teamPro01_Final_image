<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Qna</title>
<%@ include file="/head.jsp" %>
<link rel="stylesheet" href="${ hpath}/css/header2.css?after"/>
<style>
  .breadcrumb { 
    font-size: 0.9em; 
    margin-bottom: 10px; 
    color:rgb(134, 134, 134); 
    text-align: center; 
  }
  td {
    font-weight: 500;
  }
  #qna_main {
    width: 100%;
    height: auto;
    min-height: 100%;
    margin: 100px auto;
  }
  #qna_insert {
    width: 100%;
    height: 200px;
    display: flex;
    justify-content: space-around;
    align-items: center;
  }
  #qna_insert_btn1 {
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

  #qna_insert_btn1:hover {
    background-color: #FF431B;
    color: #fff;
  }
  #qna_insert_btn1 a:hover{
    color: white;
  }
</style>
</head>
<body>
<div id="content">
<%@ include file="/header.jsp" %>
<div class="page_title"><h3>Qna</h3></div>
<div class="breadcrumb">공지사항 > Qna</div>
<div id="qna_main">
   <c:if test="${empty qnaList }">
     <h2 style="text-align: center">글이 없습니다.</h2>
   </c:if>
   <c:if test="${!empty qnaList }">
      <table style="width: 900px; margin: 20px auto">
        <thead></thead>
        <tbody>
          <c:forEach var="data" items="${ qnaList}" varStatus="status">
            <tr style="border-top: 1px solid #F24405; border-bottom: 1px solid #F24405; margin:10px 0; padding: 10px 0; display: block;">
              <c:if test="${data.q_level eq 1 }">
               <td style="width: 80px; ">${status.index+1 }</td>
               <td style="width: 400px; ">
                 <a href="${hpath }/qna_one?name=${data.user_name }&no=${data.no }">${data.title }</a>
               </td>
               <td style="width: 100px; ">${data.user_name }</td>
               <td style="width: 200px; ">
                <fmt:parseDate value="${data.resdate}" var="dateValue" pattern="yyyy-MM-dd HH:mm:ss"/>
                <fmt:formatDate value="${dateValue}" pattern="yyyy/MM/dd HH시mm분ss초"/>
               </td>
               <td style="width: 80px; color: #DBDBDB; text-align: center; ">${data.visited }</td>
              </c:if>
              <c:if test="${data.q_level eq 2 }">
                 <td style="width: 80px; ">${status.index+1 }</td>
               <td style="width: 400px; ">
                 [답변]<a href="${hpath }/qna_one?name=${data.user_name }&no=${data.no }">${data.title }</a>
               </td>
               <td style="width: 100px; ">${data.user_name }</td>
              <td style="width: 200px; ">
                <fmt:parseDate value="${data.resdate}" var="dateValue" pattern="yyyy-MM-dd HH:mm:ss"/>
                <fmt:formatDate value="${dateValue}" pattern="yyyy/MM/dd HH시mm분ss초"/>
               </td>
               <td style="width: 80px; color: #DBDBDB; text-align: center; ">${data.visited }</td>
              </c:if>
            </tr>
          </c:forEach>
        </tbody>
      </table>
   </c:if>
</div>
 <div id="qna_insert">
  <c:if test="${sname ne '관리자' }">
    <button type="button" id="qna_insert_btn1"><a href="${hpath }/qna_insert_q">글작성</a></button>
  </c:if>
 </div>
</div>

<%@ include file="/footer.jsp" %>
</body>
</html>