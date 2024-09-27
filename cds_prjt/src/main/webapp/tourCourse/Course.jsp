<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>

<head>
<meta charset="UTF-8">
<title>여행 코스</title>
<!-- CSS 파일을 불러오는 링크 태그 -->
<link rel="stylesheet" type="text/css" href="Course.css">
</head>

<body>
	<section>
		<div class="fullcourse">
			<!-- 제목이 변경될 영역 -->
			<h1 id="course-title">#전체</h1>
			<div class="coursebox">

				<!-- 여행 설명 내용 -->
				<div class="course-story">
					<div class="course-search">
						<input type="text" id="search-input" placeholder="여행 코스 검색" />
						<button id="search-button">검색</button>
					</div>
					<div class="course-item" onclick="openModal('여행 설명 및 내용 1')">
						<img src="https://via.placeholder.com/50" alt="코스 이미지" />
						<p>여행 설명 및 내용</p>
					</div>
					<div class="course-item" onclick="openModal('여행 설명 및 내용 1')">
						<img src="https://via.placeholder.com/50" alt="코스 이미지" />
						<p>여행 설명 및 내용</p>
					</div>
					<div class="course-item" onclick="openModal('여행 설명 및 내용 1')">
						<img src="https://via.placeholder.com/50" alt="코스 이미지" />
						<p>여행 설명 및 내용</p>
					</div>
					<div class="course-item" onclick="openModal('여행 설명 및 내용 1')">
						<img src="https://via.placeholder.com/50" alt="코스 이미지" />
						<p>여행 설명 및 내용</p>
					</div>
					<div class="course-item" onclick="openModal('여행 설명 및 내용 1')">
						<img src="https://via.placeholder.com/50" alt="코스 이미지" />
						<p>여행 설명 및 내용</p>
					</div>
					<div class="course-item" onclick="openModal('여행 설명 및 내용 1')">
						<img src="https://via.placeholder.com/50" alt="코스 이미지" />
						<p>여행 설명 및 내용</p>
					</div>
					<div class="course-item" onclick="openModal('여행 설명 및 내용 1')">
						<img src="https://via.placeholder.com/50" alt="코스 이미지" />
						<p>여행 설명 및 내용</p>
					</div>
					<div class="course-item" onclick="openModal('여행 설명 및 내용 1')">
						<img src="https://via.placeholder.com/50" alt="코스 이미지" />
						<p>여행 설명 및 내용</p>
					</div>
					<!-- 다른 여행 코스 아이템을 계속 추가할 수 있습니다 -->
					<div class="pagination">
						<div>1</div>
						<div>2</div>
						<div>3</div>
						<div>4</div>
					</div>
				</div>

				<div class="fesorcitybox">
					<!-- 지역 버튼들 -->
					<div class="citylist">
						<div class="course-button" onclick="changeTitle('전체')">전체</div>
						<div class="course-button" onclick="changeTitle('서울')">서울</div>
						<div class="course-button" onclick="changeTitle('대구')">대구</div>
						<div class="course-button" onclick="changeTitle('대전')">대전</div>
						<div class="course-button" onclick="changeTitle('부산')">부산</div>
						<div class="course-button" onclick="changeTitle('울산')">울산</div>
						<div class="course-button" onclick="changeTitle('광주')">광주</div>
						<div class="course-button" onclick="changeTitle('제주')">제주</div>
					</div>
					
					<div class="festa">
					<h1>이곳은 축제가 랜덤으로 표시가 됩니다.</h1>
					</div>
				</div>
			</div>

		</div>
	</section>
	<div id="modal" class="modal">
        <div class="modal-content">
            <span class="close" onclick="closeModal()">&times;</span>
            <h2 id="modal-title">코스 설명</h2>
            <p id="modal-description">여행 설명 및 내용이 여기에 표시됩니다.</p>
        </div>
    </div>
</body>

</html>
<!-- 자바스크립트로 제목 변경 함수 -->
<script>
	function changeTitle(region) {
		var titleElement = document.getElementById('course-title');
		titleElement.textContent = '#' + region;
	}
	
	function changeTitle(region) {
        var titleElement = document.getElementById('course-title');
        titleElement.textContent = '#' + region;
    }

    // 모달 열기 함수
    function openModal(description) {
        var modal = document.getElementById("modal");
        var modalDescription = document.getElementById("modal-description");
        modalDescription.textContent = description;
        modal.style.display = "block";
    }

    // 모달 닫기 함수
    function closeModal() {
        var modal = document.getElementById("modal");
        modal.style.display = "none";
    }

    // 모달 외부를 클릭하면 닫기
    window.onclick = function(event) {
        var modal = document.getElementById("modal");
        if (event.target == modal) {
            modal.style.display = "none";
        }
    }
</script>