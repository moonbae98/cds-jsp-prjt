<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
    // 로그인 폼에서 받은 입력 값
    String userId = request.getParameter("user_id");
    String userPw = request.getParameter("user_pw");

    // 예시로 하드코딩된 사용자 정보 (실제에서는 DB와 비교해야 함)
    String validUserId = "admin";
    String validUserPw = "1234";

    // 로그인 검증
    if(userId.equals(validUserId) && userPw.equals(validUserPw)) {
        // 로그인 성공 시 리다이렉트
        response.sendRedirect("welcome.jsp");
    } else {
        // 로그인 실패 시 오류 메시지와 함께 다시 로그인 페이지로 이동
        request.setAttribute("msg", "아이디 또는 비밀번호가 잘못되었습니다.");
        request.getRequestDispatcher("login.jsp").forward(request, response);
    }
%>
