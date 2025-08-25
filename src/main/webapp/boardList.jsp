<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="jakarta.tags.core" %>   
<%@ taglib prefix="fn" uri="jakarta.tags.functions" %> 

<!DOCTYPE html>
<html lang="ko">
<head>
  <meta charset="UTF-8">
  <title>게시판</title>
  <link rel="stylesheet" href="css/style.css">
</head>
<body>
<header>
  <h1>MyShop</h1>
  <nav>
    <a href="index.do">홈</a>
    <a href="list.do">게시판</a>
  </nav>
</header>

<div class="board-container">
  <h2>게시판</h2>
  <table>
      <thead>
        <tr>
          <th>번호</th>
          <th>제목</th>
          <th>작성자</th>
          <th>작성일</th>
          <th>조회수</th>
        </tr>
      </thead>
      <tbody>
        <c:forEach items="${bDtos}" var="bDto">
        <tr>
          <td>${bDto.bnum }</td>
          <td>
          <c:choose>
          	<c:when test="${fn:length(bDto.btitle) > 35}">
          		<a href="content.do?bnum=${bDto.bnum }" id="board_title">${fn:substring(bDto.btitle, 0, 35)}...</a>
          	</c:when>
          	<c:otherwise>
          		<a href="content.do?bnum=${bDto.bnum }" id="board_title">${bDto.btitle}</a>
          	</c:otherwise>
          </c:choose>
          </td>
          <td>${bDto.memberid }</td>
          <td>${fn:substring(bDto.bdate,0,10)}</td>
          <td>${bDto.bhit }</td>
        </tr>
        </c:forEach>
        <!-- 추가 게시글 -->
      </tbody>
    </table>
  <div class="board-footer">
    <a href="write.do" class="btn">글쓰기</a>
  </div>
</div>

<footer>&copy; 2025 MyShop</footer>
</body>
</html>