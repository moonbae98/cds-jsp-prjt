
package DAO;

import java.sql.PreparedStatement;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import DTO.CourseInfoDTO;
import DTO.CourseInfoDTO.Item;
import jdbc.DBCP;

public class CourseInfoDAO extends DBCP {

	public int insertData(CourseInfoDTO data) {
	    int result = 0;

	    try {
	        // 트랜잭션 시작
	        conn.setAutoCommit(false);

	        // SQL INSERT 구문 정의
	        String sql = "INSERT INTO travel_course VALUES (?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?)";

	        // 데이터베이스에 저장할 값을 가져옴
	        List<Item> items = data.getResponse().getBody().getItems().getItem();

	        // PreparedStatement 리스트 생성
	        List<PreparedStatement> pstmts = new ArrayList<>();

	        // items 리스트를 필터링하여 firstimage가 있는 것만 삽입
	        items.parallelStream().filter(item -> item.getFirstimage() != null && !item.getFirstimage().isEmpty()).forEach(item -> {
	            try {
	                PreparedStatement pstmt = conn.prepareStatement(sql);

	                pstmt.setString(1, item.getFirstimage());         // first_image
	                pstmt.setString(2, item.getFirstimage2());        // first_image2
	                pstmt.setString(3, item.getMapx());               // map_x
	                pstmt.setString(4, item.getMapy());               // map_y
	                pstmt.setString(5, item.getMlevel());             // m_level
	                pstmt.setString(6, item.getAddr2());              // addr2
	                pstmt.setString(7, item.getAreacode());           // area_code
	                pstmt.setString(8, item.getModifiedtime());       // modified_time
	                pstmt.setString(9, item.getCpyrhtDivCd());        // cpyrht_div_cd
	                pstmt.setString(10, item.getBooktour());          // book_tour
	                pstmt.setString(11, item.getCat1());              // cat1
	                pstmt.setString(12, item.getSigungucode());       // sigungu_code
	                pstmt.setString(13, item.getTel());               // tel
	                pstmt.setString(14, item.getTitle());             // title
	                pstmt.setString(15, item.getAddr1());             // addr1
	                pstmt.setString(16, item.getCat2());              // cat2
	                pstmt.setString(17, item.getCat3());              // cat3
	                pstmt.setString(18, item.getContentid());         // content_id
	                pstmt.setString(19, item.getContenttypeid());     // content_type_id
	                pstmt.setString(20, item.getCreatedtime());       // created_time
	                pstmt.setString(21, item.getZipcode());           // zipcode

	                pstmts.add(pstmt);
	            } catch (SQLException e) {
	                e.printStackTrace();
	            }
	        });

	        // PreparedStatement 실행
	        for (PreparedStatement pstmt : pstmts) {
	            pstmt.executeUpdate();
	        }

	        // 트랜잭션 커밋
	        conn.commit();
	        result = 1;

	        // 트랜잭션 종료
	        conn.setAutoCommit(true);
	    } catch (Exception e) {
	        try {
	            // 예외 발생 시 롤백
	            if (conn != null) {
	                conn.rollback();
	            }
	        } catch (SQLException e2) {
	            e2.printStackTrace();
	        }
	        e.printStackTrace();
	    }

	    return result;
	}
}






