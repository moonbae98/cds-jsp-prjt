<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="ko">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>커뮤니티 페이지 2</title>
    <style>
        /* 같은 스타일을 사용합니다 */
        body { font-family: Arial, sans-serif; background-color: #f9f9f9; margin: 0; padding: 0; }
        .container { width: 80%; margin: 0 auto; }
        .review-grid { display: grid; grid-template-columns: repeat(4, 1fr); grid-gap: 20px; margin-top: 20px; }
        .review-box { background-color: white; padding: 10px; border-radius: 10px; box-shadow: 0 4px 6px rgba(0, 0, 0, 0.1); }
        .review-box img { width: 100%; height: auto; border-radius: 10px; }
        .review-info { margin-top: 10px; }
        .review-title { font-size: 14px; font-weight: bold; margin-bottom: 5px; }
        .review-date { font-size: 12px; color: #555; }
        .review-stars { color: #ffcc00; margin-bottom: 5px; }
        .page-navigation { text-align: center; margin-top: 30px; }
        .page-navigation a { text-decoration: none; color: #007bff; padding: 10px 15px; border: 1px solid #007bff; border-radius: 5px; margin: 0 5px; }
        .page-navigation a:hover { background-color: #007bff; color: white; }
        .page-navigation .current-page { background-color: #007bff; color: white; pointer-events: none; }
    </style>
</head>
<body>

<div class="container">
    <h2>커뮤니티 ✍️</h2>

    <div class="review-grid">
        <!-- 16개의 리뷰 항목을 배치 -->
        <% for(int i=17; i<=32; i++) { %>
        <div class="review-box">
            <img src="image<%=i%>.png" alt="리뷰 이미지">
            <div class="review-info">
                <div class="review-stars">★★★★★</div>
                <div class="review-title">제목<%=i%></div>
                <div class="review-date">2024.08.<%=i-10%></div>
            </div>
        </div>
        <% } %>
    </div>

    <!-- 페이지 네비게이션 -->
    <div class="page-navigation">
        <a href="page1.jsp">1</a>
        <a class="current-page" href="page2.jsp">2</a>
        <a href="page3.jsp">3</a>
    </div>
</div>

</body>
</html>
