<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>회원가입</title>
<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/login/login.css">
    <style>
        body { 
         font-family: Arial, sans-serif;
        }
        .container {
            width: 50%;
            margin: 0 auto;
            padding: 50px;
            border: 1px solid #ddd;
            background-color: #f9f9f9;
            text-align: left;
        }
        h2 {
            text-align: center;
            margin-bottom: 30px;
        }
        table {
            width: 100%;
            margin-bottom: 20px;
        }
        table td { 
            padding: 10px;
        }
        input[type="text"], input[type="password"], input[type="tel"], input[type="email"] {
            width: 100%;
            padding: 10px;
            margin: 5px 0;
            border: 1px solid #ccc;
            border-radius: 4px;
            box-sizing: border-box;
        }
        input[type="submit"], button {
            width: 150px;
            background-color: #007bff;
            color: white;
            padding: 10px;
            border: none;
            border-radius: 4px;
            cursor: pointer; 
            font-size: 14px;
        }
        input[type="submit"]:hover, button:hover {
            background-color: #0056b3;
        }
        .checkbox-group {
            margin-top: 10px;
        }
        .checkbox-group label {
            display: block;
            margin: 5px 0;
        }
        .gender-group {
            margin: 10px 0;
        }
        .error-message {
            color: red;
            font-size: 12px;
        }
        .note {
            font-size: 12px;
            color: gray;
        }
    </style>
</head>
<body>
	<section>
	    <div class="container">
	        <h2>회원가입</h2>
	        <form method="post" action="signupProcess.jsp">
	            <table>
	                <tr>
	                    <td>이름</td>
	                    <td><input type="text" name="name" placeholder="이름을 입력해주세요." required></td>
	                </tr>
	                <tr>
	                    <td>연락처</td>
	                    <td><input type="tel" name="phone" placeholder="010-1234-1234" required></td>
	                </tr>
	                <tr>
	                    <td colspan="2"><h4>회원정보입력</h4></td>
	                </tr>
	                <tr>
	                    <td>아이디</td>
	                    <td>
	                        <input type="text" name="username" placeholder="이름을 입력해주세요." required>
	                        <button type="button">중복확인</button>
	                    </td>
	                </tr>
	                <tr>
	                    <td>비밀번호</td>
	                    <td><input type="password" name="password" placeholder="6~12자 영문, 숫자, 특수문자 조합" required></td>
	                </tr>
	                <tr>
	                    <td>비밀번호 확인</td>
	                    <td><input type="password" name="confirm_password" placeholder="비밀번호를 한번 더 입력해주세요." required></td>
	                </tr>
	                <tr>
	                    <td>이메일</td>
	                    <td><input type="email" name="email" placeholder="이메일을 입력해주세요." required></td>
	                </tr>
	                <tr>
	                    <td>성별</td>
	                    <td class="gender-group">
	                        <input type="radio" name="gender" value="남자" required> 남자
	                        <input type="radio" name="gender" value="여자" required> 여자
	                    </td>
	                </tr>
	                <tr>
	                    <td>주소</td>
	                    <td>
	                        <input type="text" name="zipcode" placeholder="우편번호" required>
	                        <button type="button">주소찾기</button>
	                    </td>
	                </tr>
	                <tr>
	                    <td></td>
	                    <td><input type="text" name="address" placeholder="상세 주소를 입력해주세요." required></td>
	                </tr>
	            </table>
	            
	            <!-- 약관동의 -->
	            <h4>약관동의</h4>
	            <div class="checkbox-group">
	                <label><input type="checkbox" name="terms_agree" required> 회원약관 및 개인정보처리방침 모두 동의합니다.</label>
	                <label><input type="checkbox" name="use_agree" required> [필수] 홈페이지 이용약관 동의</label>
	                <label><input type="checkbox" name="collect_agree" required> [필수] 개인정보 수집 및 이용목적에 대한 동의</label>
	                <label><input type="checkbox" name="thirdparty_agree" required> [필수] 개인정보의 제3자 제공 동의</label>
	                <label><input type="checkbox" name="outsourcing_agree" required> [필수] 개인정보의 위탁 동의</label>
	                <label><input type="checkbox" name="marketing_agree"> [선택] 마케팅 수신 동의</label>
	            </div>
	            
	            <div style="text-align: center; margin-top: 20px;">
	                <input type="submit" value="회원가입">
	                <button type="button" onclick="location.href='/'">취소</button>
	            </div>
	        </form>
	    </div>
	    </section>
</body>
</html>
