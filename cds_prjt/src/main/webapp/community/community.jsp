<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="ko">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>커뮤니티</title>
    <link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/login/login.css">
    
    <style>
        body {
            font-family: Arial, sans-serif;
            background-color: #f4f4f4;
            margin: 0;
            padding: 0;
        }

        .container {
            width: 90%;
            max-width: 1200px;
            margin: 20px auto;
            background-color: white;
            padding: 20px;
            box-shadow: 0 4px 8px rgba(0, 0, 0, 0.1);
            border-radius: 10px;
        }

        h1 {
            text-align: center;
            font-size: 24px;
            margin-bottom: 20px;
        }

        .header {
            display: flex;
            justify-content: space-between;
            align-items: center;
            margin-bottom: 20px;
        }

        .header img {
            width: 100px;
        }

        .header nav {
            display: flex;
            gap: 15px;
        }

        .header nav a {
            text-decoration: none;
            color: #555;
            font-weight: bold;
        }

        .search-box {
            display: flex;
            justify-content: flex-end;
            margin-bottom: 20px;
        }

        .search-box input {
            padding: 10px;
            width: 200px;
            border: 1px solid #ccc;
            border-radius: 20px;
        }

        .gallery {
            display: grid;
            grid-template-columns: repeat(4, 1fr);
            gap: 20px;
        }

        .card {
            background-color: #f9f9f9;
            border: 1px solid #ddd;
            border-radius: 10px;
            overflow: hidden;
            transition: transform 0.2s;
        }

        .card:hover {
            transform: scale(1.05);
        }

        .card img {
            width: 100%;
            height: auto;
        }

        .card-content {
            padding: 15px;
        }

        .card-content h2 {
            font-size: 18px;
            margin: 0;
        }

        .card-content p {
            font-size: 14px;
            color: #666;
        }

        .footer {
            text-align: center;
            margin-top: 20px;
            font-size: 14px;
            color: #777;
        }
    </style>
</head>
<body>
    <div class="container">
        <div class="header">
            <img src="떠나자logo.png" alt="Logo">
            <nav>
                <a href="#home">홈</a>
            </nav>
        </div>

        <h1>커뮤니티</h1>

        <div class="search-box">
            <input type="text" placeholder="검색">
        </div>

        <div class="gallery">
            <div class="card">
                <img src="image1.jpg" alt="Image 1">
                <div class="card-content">
                    <h2>제목 1</h2>
                    <p>설명 내용 1</p>
                </div>
            </div>
            <div class="card">
                <img src="image2.jpg" alt="Image 2">
                <div class="card-content">
                    <h2>제목 2</h2>
                    <p>설명 내용 2</p>
                </div>
            </div>
            <div class="card">
                <img src="image3.jpg" alt="Image 3">
                <div class="card-content">
                    <h2>제목 3</h2>
                    <p>설명 내용 3</p>
                </div>
            </div>
            <div class="card">
                <img src="image4.jpg" alt="Image 4">
                <div class="card-content">
                    <h2>제목 4</h2>
                    <p>설명 내용 4</p>
                </div>
            </div>
            <div class="card">
                <img src="image4.jpg" alt="Image 4">
                <div class="card-content">
                    <h2>제목 5</h2>
                    <p>설명 내용 5</p>
                </div>
            </div>
            <div class="card">
                <img src="image4.jpg" alt="Image 4">
                <div class="card-content">
                    <h2>제목 6</h2>
                    <p>설명 내용 6</p>
                </div>
            </div>
            <div class="card">
                <img src="image4.jpg" alt="Image 4">
                <div class="card-content">
                    <h2>제목 7</h2>
                    <p>설명 내용 7</p>
                </div>
            </div>
            <div class="card">
                <img src="image4.jpg" alt="Image 4">
                <div class="card-content">
                    <h2>제목 8</h2>
                    <p>설명 내용 8</p>
                </div>
            </div>
            <div class="card">
                <img src="image4.jpg" alt="Image 4">
                <div class="card-content">
                    <h2>제목 9</h2>
                    <p>설명 내용 9</p>
                </div>
            </div>
            <div class="card">
                <img src="image4.jpg" alt="Image 4">
                <div class="card-content">
                    <h2>제목 10</h2>
                    <p>설명 내용 10</p>
                </div>
            </div>
            <div class="card">
                <img src="image4.jpg" alt="Image 4">
                <div class="card-content">
                    <h2>제목 11</h2>
                    <p>설명 내용 11</p>
                </div>
            </div>
            <div class="card">
                <img src="image4.jpg" alt="Image 4">
                <div class="card-content">
                    <h2>제목 12</h2>
                    <p>설명 내용 12</p>
                </div>
            </div>
        </div>

    </div>
</body>
</html>
