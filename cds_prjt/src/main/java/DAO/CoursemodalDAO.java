package DAO;

import jdbc.DBCP;
import DTO.CoursemodalDTO;

public class CoursemodalDAO extends DBCP {

    // 특정 content_id에 해당하는 코스 정보를 가져오는 메서드
    public CoursemodalDTO getCoursemodalById(String contentId) {
        CoursemodalDTO courseDetail = null;
        String sql = "SELECT title, map_x, map_y, overview, first_image FROM travel_course WHERE content_id = ?";

        try {
            pstmt = conn.prepareStatement(sql);
            pstmt.setString(1, contentId);  // content_id 값 바인딩
            rs = pstmt.executeQuery();

            if (rs.next()) {
                courseDetail = new CoursemodalDTO();
                courseDetail.setTitle(rs.getString("title"));
                courseDetail.setMap_x(rs.getString("map_x"));
                courseDetail.setMap_y(rs.getString("map_y"));
                courseDetail.setOverview(rs.getString("overview"));
                courseDetail.setFirst_image(rs.getString("first_image"));  // 이미지 추가
            }

        } catch (Exception e) {
            e.printStackTrace();
        } finally {
            close(); // DBCP 자원 반납
        }
        return courseDetail;
    }
}
