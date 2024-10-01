<%@ page language="java" contentType="application/json; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page import="DAO.CourseDAO" %>

<%
    String areaCode = request.getParameter("areaCode");  // areaCode로 맞추기
    CourseDAO courseDAO = new CourseDAO();
    
    String jsonResponse = courseDAO.getCoursesAsJsonByRegionCode(areaCode);
    out.print(jsonResponse);
%>