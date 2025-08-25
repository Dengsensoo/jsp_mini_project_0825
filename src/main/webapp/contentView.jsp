<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="jakarta.tags.core" %>
<!DOCTYPE html>
<html lang="ko">
<head>
  <meta charset="UTF-8">
  <meta name="viewport" content="width=device-width, initial-scale=1.0"/>
  <title>게시판 글 보기</title>
  <link rel="stylesheet" href="css/style.css">
</head>
<body>
<%@ include file="include/header.jsp" %>

<div class="board-container">
  <div class="post-view">
    <h3>${boardDto.btitle }</h3>
    <p class="meta">작성자: ${boardDto.memberid } | 조회수: ${boardDto.bhit } | ${boardDto.bdate }</p>
    <div class="content">
      <p>${boardDto.bcontent }</p>
    </div>
    <div class="actions">
      <a href="list.do" class="btn">목록</a>
      <c:if test="${sessionScope.sessionId == boardDto.memberid }">
      <a href="modify.do?bnum=${boardDto.bnum }" class="btn">수정</a>
      <a href="delete.do?bnum=${boardDto.bnum }" class="btn">삭제</a>
      </c:if>
    </div>
  </div>
</div>

<%@ include file="include/footer.jsp" %>
</body>
</html>