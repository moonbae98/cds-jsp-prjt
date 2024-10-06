package DAO;

import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import DTO.CourseInfoDTO;
import jdbc.DBCP;

public class CoursesDAO extends DBCP {

    // contenttypeid로 데이터를 가져오는 메서드
    public List<CourseInfoDTO.Item> getCoursesByContentTypeId(int contentTypeId) {
        List<CourseInfoDTO.Item> courses = new ArrayList<>();
        
        // SQL 쿼리: contenttypeid가 일치하는 데이터만 가져옴
        String query = "SELECT content_id, title, first_image FROM travel_course WHERE content_type_id = ?";
        
        try {
            pstmt = conn.prepareStatement(query);
            pstmt.setInt(1, contentTypeId);
            rs = pstmt.executeQuery();
            
            // 결과 처리
            while (rs.next()) {
                CourseInfoDTO.Item course = new CourseInfoDTO.Item(); // Item 클래스 인스턴스 생성
                course.setContentid(rs.getString("content_id"));
                course.setTitle(rs.getString("title"));
                course.setFirstimage(rs.getString("first_image"));
                courses.add(course);
            }
        } catch (SQLException e) {
            e.printStackTrace();
        } finally {
            // 자원 반납
            close();
        }
        
        return courses;
    }
}
