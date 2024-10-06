package DAO;

import java.util.List;

import com.fasterxml.jackson.databind.ObjectMapper;

import DTO.DetailCommonDTO;
import api.ApiExplorerDetail;
import jdbc.DBCP;

public class DetailDAO extends DBCP {

    // 공공데이터 API에서 데이터를 가져오는 메서드 (overview 데이터 가져오기)
	public String getOverviewFromApi(String contentId) {
	    String overview = null;

	    // 제공된 인코딩된 API 키를 사용
	    String serviceKey = "y%2BM4KcA3dU54OMX03WyfG7Vgskk1N4ti1JPnqNLJgfSxfGZDGpJzCXttag92jy9eIo3XD6a89LQXwVwD%2BM9RyQ%3D%3D";
	    
	    // JSON 응답을 요청하기 위한 API URL
	    String apiUrl = "http://apis.data.go.kr/B551011/KorService1/detailCommon1?contentId="
	                    + contentId + "&MobileOS=ETC&MobileApp=AppTest&serviceKey=" + serviceKey + "&overviewYN=Y&_type=json";

	    try {
	        // ApiExplorer를 사용하여 API 호출
	        String jsonResponse = ApiExplorerDetail.get(apiUrl);

	        // JSON 응답을 DTO로 변환
	        ObjectMapper objectMapper = new ObjectMapper();
	        DetailCommonDTO response = objectMapper.readValue(jsonResponse, DetailCommonDTO.class);

	        // Null 체크 추가
	        if (response != null && response.getResponse() != null && response.getResponse().getBody() != null 
	            && response.getResponse().getBody().getItems() != null 
	            && response.getResponse().getBody().getItems().getItem() != null) {

	        	List<DetailCommonDTO.Item> items = response.getResponse().getBody().getItems().getItem();

	            if (!items.isEmpty()) {
	                overview = items.get(0).getOverview(); // 첫 번째 item에서 overview 추출
	            }
	        }
	    } catch (Exception e) {
	        e.printStackTrace();
	    }

	    return overview;
	}


    // DB에서 overview를 업데이트하는 메서드
    public void updateOverview(String contentId, String overview) {
        String sql = "UPDATE courses_table SET overview = ? WHERE contentid = ?";

        try {
            pstmt = conn.prepareStatement(sql);
            pstmt.setString(1, overview);
            pstmt.setString(2, contentId);
            int rowsAffected = pstmt.executeUpdate();
            if (rowsAffected > 0) {
                System.out.println("Overview 업데이트 성공 for contentId: " + contentId);
            } else {
                System.out.println("Overview 업데이트 실패 for contentId: " + contentId);
            }

        } catch (Exception e) {
            e.printStackTrace();
        } finally {
            close(); // DBCP의 close() 메서드를 사용하여 자원 반납
        }
    }
}
