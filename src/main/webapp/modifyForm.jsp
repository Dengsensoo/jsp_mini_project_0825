<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
	if(request.getParameter("error") != null) {
		out.println("<script>alert('수정 또는 삭제 권한이 없는 글입니다.');history.go(-1);</script>");	
	}
%>        
<!DOCTYPE html>
<html lang="ko">
<head>
  <meta charset="UTF-8">
  <meta name="viewport" content="width=device-width, initial-scale=1.0"/>
  <title>게시판 글 수정</title>
  <link rel="stylesheet" href="css/style.css">
</head>
<body>
<%@ include file="include/header.jsp" %>

<div class="form-container">
  <h2>글 수정</h2>
  <form action="modifyOk.do" method="post">
      <input type="hidden" name="bnum" value="${boardDto.bnum }">	
      <div class="form-group">
        <label for="title">제목</label>
        <input type="text" id="title" name="title" value="${boardDto.btitle }" required />
      </div>

      <div class="form-group">
        <label for="author">작성자</label>
        <input type="text" id="author" name="author" value="${boardDto.memberid }" readonly />
      </div>

      <div class="form-group">
        <label for="content">내용</label>
        <textarea id="content" name="content" rows="10" required>${boardDto.bcontent }</textarea>
      </div>

      <div class="form-buttons">
        <button type="submit" class="btn">수정 완료</button>
        <a href="javascript:history.go(-1)" class="btn">취소</a>
      </div>
    </form>
</div>

<%@ include file="include/footer.jsp" %>
</body>
</html>