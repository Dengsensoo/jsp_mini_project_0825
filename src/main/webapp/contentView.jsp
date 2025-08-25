<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="ko">
<head>
  <meta charset="UTF-8">
  <title>게시판 글 보기</title>
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
  <div class="post-view">
    <h3>${boardDto.btitle }</h3>
    <p class="meta">작성자: ${boardDto.memberid } | 조회수: ${boardDto.bhit } | ${boardDto.bdate }</p>
    <div class="content">
      <p>${boardDto.bcontent }</p>
    </div>
    <div class="actions">
      <a href="list.do" class="btn">목록</a>
      <a href="modify.do?bnum=${boardDto.bnum }" class="btn">수정</a>
      <a href="delete.do?bnum=${boardDto.bnum }" class="btn">삭제</a>
    </div>
  </div>
</div>

<footer>&copy; 2025 MyShop</footer>
</body>
</html>