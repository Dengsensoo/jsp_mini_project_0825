<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="ko">
<head>
  <meta charset="UTF-8">
  <title>게시판 글 쓰기</title>
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
  <h2>글쓰기</h2>
<!-- <input type="text" placeholder="제목">
    <textarea placeholder="내용 입력"></textarea>
    <button type="submit" class="btn">등록</button>
    <a href="list.do" class="btn">취소</a> -->
    <form action="writeOk.do" method="post" class="edit-form">
      <div class="form-group">
        <label for="title">제목</label>
        <input type="text" id="title" name="title" placeholder="제목을 입력하세요" required />
      </div>

      <div class="form-group">
        <label for="author">작성자</label>
        <input type="text" id="author" name="author" placeholder="작성자명을 입력하세요" required />
      </div>

      <div class="form-group">
        <label for="content">내용</label>
        <textarea id="content" name="content" rows="10" placeholder="내용을 입력하세요" required></textarea>
      </div>

      <div class="form-buttons">
        <button type="submit" class="btn btn-primary">등록</button>
        <a href="list.do" class="btn btn-secondary">취소</a>
      </div>
    </form>
  </form>
</div>

<footer>&copy; 2025 MyShop</footer>
</body>
</html>