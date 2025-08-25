<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="ko">
<head>
  <meta charset="UTF-8">
  <title>로그인</title>
  <link rel="stylesheet" href="css/style.css">
</head>
<body>
<header>
  <h1>MyShop</h1>
  <nav>
    <a href="main.html">홈</a>
    <a href="board.html">게시판</a>
  </nav>
</header>

<div class="form-container">
  <h2>로그인</h2>
  <form>
    <input type="text" placeholder="아이디">
    <input type="password" placeholder="비밀번호">
    <button type="submit" class="btn">로그인</button>
  </form>
  <div class="links">
    <a href="#">회원가입</a> | <a href="#">비밀번호 찾기</a>
  </div>
</div>

<footer>&copy; 2025 MyShop</footer>
</body>
</html>