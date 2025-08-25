<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="ko">
<head>
  <meta charset="UTF-8">
  <title>게시판 글 수정</title>
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

<footer>&copy; 2025 MyShop</footer>
</body>
</html>