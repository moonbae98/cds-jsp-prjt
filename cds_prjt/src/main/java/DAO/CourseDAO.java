package DAO;

import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import com.fasterxml.jackson.databind.ObjectMapper;

import DTO.RegionCourseDTO;
import jdbc.DBCP;

public class CourseDAO extends DBCP {

    // 지역 코드로 데이터를 가져오는 메서드 (페이지네이션 추가)
    public List<RegionCourseDTO> getCoursesByRegionCode(String areaCode, int pageNo, int pageSize) {
        List<RegionCourseDTO> courses = new ArrayList<>();
        
        // SQL 쿼리에서 content_id 가져오기
        String sql = "SELECT content_id, first_image, title, area_code FROM travel_course WHERE area_code = ? LIMIT ? OFFSET ?";
        
        try {
            pstmt = conn.prepareStatement(sql);
            pstmt.setString(1, areaCode);
            pstmt.setInt(2, pageSize); // 페이지 당 아이템 수
            pstmt.setInt(3, (pageNo - 1) * pageSize); // OFFSET 계산 (페이지 번호 기반)
            rs = pstmt.executeQuery();
            
            while (rs.next()) {
                RegionCourseDTO course = new RegionCourseDTO();
                course.setContent_id(rs.getString("content_id")); // content_id를 데이터베이스에서 직접 설정
                course.setFirstImage(rs.getString("first_image"));
                course.setTitle(rs.getString("title"));
                course.setAreaCode(rs.getString("area_code"));
                
                System.out.println("Content ID: " + rs.getString("content_id"));
                courses.add(course);
            }
        } catch (SQLException e) {
            e.printStackTrace();
        } finally {
            close();  // 자원 반납
        }
        
        return courses;
    }

    // 데이터를 JSON으로 변환하여 반환하는 메서드 (페이지네이션 지원)
    public String getCoursesAsJsonByRegionCode(String areaCode, int pageNo, int pageSize) {
        List<RegionCourseDTO> courses = getCoursesByRegionCode(areaCode, pageNo, pageSize);
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
