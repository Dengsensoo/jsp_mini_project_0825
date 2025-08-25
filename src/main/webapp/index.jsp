<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="ko">
<head>
  <meta charset="UTF-8">
  <meta name="viewport" content="width=device-width, initial-scale=1.0"/>
  <title>쇼핑몰 메인</title>
  <link rel="stylesheet" href="css/style.css">
</head>
<body>
<%@ include file="include/header.jsp" %>

<div class="banner">✨ 여름 특가 세일! 최대 50% 할인 ✨</div>

<section class="product-section">
  <h2>추천 상품</h2>
  <div class="products">
    <div class="product">
      <img src="https://picsum.photos/200/200?1">
      <h3>화이트 셔츠</h3>
      <p class="price">₩29,900</p>
    </div>
    <div class="product">
      <img src="https://picsum.photos/200/200?2">
      <h3>여름 원피스</h3>
      <p class="price">₩49,000</p>
    </div>
  </div>
</section>

<%@ include file="include/footer.jsp" %>
</body>
</html>