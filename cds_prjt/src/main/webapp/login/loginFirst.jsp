<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>     
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>일반 로그인</title>
<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/login/login.css">
<style>
    body {
        font-family: Arial, sans-serif;
        background-color: #f2f2f2;
        margin: 0;
        padding: 0;
    }

    .login-container {
        display: flex;
        justify-content: center;
        align-items: center;
        height: 100vh;
    }

    .login-box {
        width: 400px;
        padding: 30px;
        background: white;
        box-shadow: 0 4px 8px rgba(0, 0, 0, 0.1);
        border-radius: 10px;
        text-align: center;
    }

    .login-box h3 {
        margin-bottom: 20px;
        font-size: 22px;
        font-weight: bold;
    }

    .login-box p {
        font-size: 12px;
        color: #555;
    }

    .login-box button {
        width: 100%;
        padding: 10px;
        margin: 10px 0;
        border: none;
        border-radius: 5px;
        font-weight: bold;
        cursor: pointer;
        display: flex;
        justify-content: center;
        align-items: center;
    }

    .login-box .login-button {
        background-color: #007bff;
        color: white;
    }

    .login-box .login-button:hover {
        background-color: #0056b3;
    }

    .login-box .kakao-login {
        background-color: #fee500;
        color: black;
    }

    .login-box .naver-login {
        background-color: #1ec800;
        color: white;
    }

    .login-box .social-icons img {
        width: 20px;
        height: 20px;
        margin-right: 10px;
    }

    .login-box .divider {
        margin: 20px 0;
        border-bottom: 1px solid #ffffff;
    }

    .login-box a {
        color: #007bff;
        text-decoration: none;
        font-size: 12px;
    }

    .login-box a:hover {
        text-decoration: underline;
    }

    .error-message {
        color: red;
        margin-top: 10px;
    }
    
</style>
</head>
<body>
<div class="login-container">
    <div class="login-box">
        <img src="떠나자logo.png" alt="떠나자 로고" style="width: 100px; margin-bottom: 20px;">
        <h3>로그인</h3>
        <p>떠나자 회원으로 가입하시면 회원전용혜택 제공, 이벤트 등 더 많은 서비스를 이용하실 수 있습니다.</p>
        
        <!-- 일반 로그인 버튼 -->
        <button class="login-button">
            <span>일반 로그인</span>
        </button>

        <!-- 구분선 -->
        <div class="divider">또는</div>

        <!-- 소셜 로그인 버튼들 -->
        <button class="kakao-login">
            <div class="social-icons">
                <img src="kakao-icon.png" alt="카카오 아이콘">카카오로 시작하기
            </div>
        </button>

        <button class="naver-login">
            <div class="social-icons">
                <img src="naver-icon.png" alt="네이버 아이콘">네이버로 시작하기
            </div>
        </button>

        <!-- 아이디/비밀번호 찾기 및 회원가입 -->
        <div>
            <a href="#">아이디 / 비밀번호 찾기</a> | <a href="#">회원가입</a>
        </div>

        <!-- 로그인 실패 시 오류 메시지 출력 -->
        <%
        String msg = (String)request.getAttribute("msg");
        if(msg != null) {
            out.println("<p class='error-message'>" + msg + "</p>");
        }
        %>
    </div>
</div>
</body>
</html>
