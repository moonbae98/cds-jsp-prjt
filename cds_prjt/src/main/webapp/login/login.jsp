<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="ko">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>로그인 페이지</title>
    <style>
        body {
            font-family: Arial, sans-serif;
            margin: 0;
            padding: 0;
            background-color: #f4f4f4;
        }

        #login-container {
            width: 100%;
            max-width: 300px;
            margin: 50px auto;
            padding: 50px;
            background-color: white;
            border-radius: 10px;
            box-shadow: 0 4px 8px rgba(0, 0, 0, 0.1);
        }

        #login-container h3 {
            text-align: center;
            margin-bottom: 20px;
            font-size: 20px;
            color: #333;
        }

        #login-container input[type="text"],
        #login-container input[type="password"] {
            width: 92%;
            padding: 10px;
            margin: 10px 0;
            border: 1px solid #ddd;
            border-radius: 5px;
        }

        #login-container input[type="submit"] {
            width: 100%;
            padding: 10px;
            background-color: #007bff;
            color: white;
            border: none;
            border-radius: 5px;
            cursor: pointer;
        }

        #login-container input[type="submit"]:hover {
            background-color: #0056b3;
        }
        
        #login-container>.login-bottom {
            display: flex;
            text-align: center;
            margin-top: 10px;
            justify-content: space-around;
        }

        #login-container a {
            display: block;
            text-align: center;
            margin-top: 10px;
            color: #000000;
            text-decoration: none;
        }

        #login-container a:hover {
            text-decoration: underline;
        }
        
  

    </style>
</head>
<body>
<div id="login-container">
        <img src="떠나자logo.png" alt="떠나자 로고" style="width: 100px; margin-bottom: 20px;">
    <h3>로그인</h3>
    <div>떠나자 회원으로 가입 하시면 회원전용혜택 제공, 이벤트 등 더 많은 서비스를 이용하실 수 있습니다.</div>
    <form action="loginProcess.jsp" method="post">
        <input type="text" name="user_id" placeholder="이메일 주소 혹은 아이디" required>
        <input type="password" name="user_pw" placeholder="비밀번호 확인" required>
        <input type="submit" value="로그인">
    </form>
    <div class="login-bottom"><a href="#">아이디/비밀번호 찾기</a><p>|</p><a href="#">회원가입</a></div>
</div>

</body>
</html>
