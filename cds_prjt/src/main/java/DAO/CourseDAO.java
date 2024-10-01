package DAO;

import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import com.fasterxml.jackson.databind.ObjectMapper;

import DTO.RegionCourseDTO;
import jdbc.DBCP;

public class CourseDAO extends DBCP {

    // 지역 코드로 데이터를 가져오는 메서드
    public List<RegionCourseDTO> getCoursesByRegionCode(String areaCode) {
        List<RegionCourseDTO> courses = new ArrayList<>();
        
        String sql = "SELECT first_image, title, area_code FROM travel_course WHERE area_code = ?";
        
        try {
        	if (conn == null) {
        	    System.out.println("Connection is null. Check the database connection settings.");
        	} else {
        	    System.out.println("Connection established successfully.");
        	}
            pstmt = conn.prepareStatement(sql);
            pstmt.setString(1, areaCode);
            rs = pstmt.executeQuery();
            
            while (rs.next()) {
                RegionCourseDTO course = new RegionCourseDTO();
                course.setFirstImage(rs.getString("first_image"));
                course.setTitle(rs.getString("title"));
                course.setAreaCode(rs.getString("area_code"));
                courses.add(course);
            }
        } catch (SQLException e) {
            e.printStackTrace();
        } finally {
            close();  // 자원 반납
        }
        
        return courses;
    }

    // 데이터를 JSON으로 변환하여 반환하는 메서드
    public String getCoursesAsJsonByRegionCode(String areaCode) {
        List<RegionCourseDTO> courses = getCoursesByRegionCode(areaCode);
        ObjectMapper objectMapper = new ObjectMapper();
        String jsonResult = "";
        
        try {
            jsonResult = objectMapper.writeValueAsString(courses);
        } catch (Exception e) {
            e.printStackTrace();
        }
        
        return jsonResult;
    }
}