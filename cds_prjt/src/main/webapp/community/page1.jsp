<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="ko">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>커뮤니티 페이지 1</title>
    <style>
        /* 기본 스타일 */
        body {
            font-family: Arial, sans-serif;
            background-color: #f9f9f9;
            margin: 0;
            padding: 0;
        }

        .container {
            width: 80%;
            margin: 0 auto;
        }

        .review-grid {
            display: grid;
            grid-template-columns: repeat(4, 1fr);
            grid-gap: 20px;
            margin-top: 20px;
        }

        .review-box {
            background-color: white;
            padding: 10px;
            border-radius: 10px;
            box-shadow: 0 4px 6px rgba(0, 0, 0, 0.1);
            cursor: pointer;
        }

        .review-box img {
            width: 100%;
            height: auto;
            border-radius: 10px;
        }

        .review-info {
            margin-top: 10px;
        }

        .review-title {
            font-size: 14px;
            font-weight: bold;
            margin-bottom: 5px;
        }

        .review-date {
            font-size: 12px;
            color: #555;
        }

        .review-stars {
            color: #ffcc00;
            margin-bottom: 5px;
        }

        .page-navigation {
            text-align: center;
            margin-top: 30px;
        }

        .page-navigation a {
            text-decoration: none;
            color: #007bff;
            padding: 10px 15px;
            border: 1px solid #007bff;
            border-radius: 5px;
            margin: 0 5px;
        }

        .page-navigation a:hover {
            background-color: #007bff;
            color: white;
        }

        .page-navigation .current-page {
            background-color: #007bff;
            color: white;
            pointer-events: none;
        }

        /* 모달 스타일 */
        .modal {
            display: none;
            position: fixed;
            z-index: 1;
            left: 0;
            top: 0;
            width: 100%;
            height: 100%;
            background-color: rgba(0, 0, 0, 0.6);
        }

        .modal-content {
            display: flex;
            background-color: white;
            margin: 10% auto;
            padding: 20px;
            width: 70%;
            border-radius: 15px;
        }

        .modal-image {
            flex: 1;
            display: flex;
            justify-content: center;
            align-items: center;
        }

        .modal-image img {
            width: 90%;
            height: auto;
            border-radius: 10px;
        }

        .modal-info {
            flex: 1;
            margin-left: 20px;
        }

        .modal-info h3 {
            font-size: 22px;
            margin-bottom: 10px;
        }

        .modal-info p {
            margin-bottom: 10px;
            line-height: 1.5;
        }

        .modal-info .review-stars {
            color: #ffcc00;
            margin-bottom: 10px;
        }

        .close {
            position: absolute;
            top: 20px;
            right: 30px;
            font-size: 24px;
            font-weight: bold;
            cursor: pointer;
            color: #aaa;
        }

        .close:hover {
            color: black;
        }
    </style>
</head>
<body>

<div class="container">
    <h2>커뮤니티 ✍️</h2>

    <!-- 리뷰 목록 -->
    <div class="review-grid">
        <!-- 16개의 리뷰 항목을 배치 -->
        <% for(int i=1; i<=16; i++) { %>
        <div class="review-box" onclick="openModal('Review Title <%=i%>', '2024.08.<%=i+10%>', 'This is an example review content.', 'image<%=i%>.png')">
            <img src="image<%=i%>.png" alt="리뷰 이미지">
            <div class="review-info">
                <div class="review-stars">★★★★★</div>
                <div class="review-title">제목<%=i%></div>
                <div class="review-date">2024.08.<%=i+10%></div>
            </div>
        </div>
        <% } %>
    </div>

    <!-- 페이지 네비게이션 -->
    <div class="page-navigation">
        <a class="current-page" href="page1.jsp">1</a>
        <a href="page2.jsp">2</a>
        <a href="page3.jsp">3</a>
    </div>
</div>

<!-- 모달 구조 -->
<div id="reviewModal" class="modal">
    <div class="modal-content">
        <span class="close" onclick="closeModal()">&times;</span>
        <div class="modal-image">
            <img id="modalImage" src="" alt="Review Image">
        </div>
        <div class="modal-info">
            <h3 id="modalTitle">제목</h3>
            <p class="review-stars">★★★★★</p>
            <p id="modalDate">2024.08.01</p>
            <p id="modalContent">게시 할 내용</p>
        </div>
    </div>
</div>

<script>
    // 모달 열기 함수
    function openModal(title, date, content, imgSrc) {
        document.getElementById('modalTitle').textContent = title;
        document.getElementById('modalDate').textContent = date;
        document.getElementById('modalContent').textContent = content;
        document.getElementById('modalImage').src = imgSrc;

        document.getElementById('reviewModal').style.display = 'block';
    }

    // 모달 닫기 함수
    function closeModal() {
        document.getElementById('reviewModal').style.display = 'none';
    }
</script>

</body>
</html>
