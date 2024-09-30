<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>

<head>
<meta charset="UTF-8">
<title>여행 코스</title>
<!-- CSS 파일을 불러오는 링크 태그 -->
<link rel="stylesheet" type="text/css" href="Course.css">
<script src="Course.js"></script>
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
						<div class="course-button" data-region="전체">전체</div>
						<div class="course-button" data-region="서울">서울</div>
						<div class="course-button" data-region="대구">대구</div>
						<div class="course-button" data-region="대전">대전</div>
						<div class="course-button" data-region="부산">부산</div>
						<div class="course-button" data-region="울산">울산</div>
						<div class="course-button" data-region="광주">광주</div>
						<div class="course-button" data-region="제주">제주</div>
					</div>

					<div class="festa">
						<h1>이곳은 축제가 랜덤으로 표시가 됩니다.</h1>
					</div>
				</div>
			</div>

		</div>

	</section>
</body>

</html>