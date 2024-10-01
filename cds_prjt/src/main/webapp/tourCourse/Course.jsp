<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>여행 코스</title>
    <!-- CSS 파일을 불러오는 링크 태그 -->
    <link rel="stylesheet" type="text/css" href="Course.css">
    <script src="https://code.jquery.com/jquery-3.6.0.min.js"></script>
</head>
<body>
    <section>
        <div class="fullcourse">
            <!-- 제목이 변경될 영역 -->
            <h1 id="course-title">#전체</h1>
            <div class="coursebox">
                <!-- 여행 설명 내용 -->
                <div class="course-story" id="course-story">
                    <div class="course-search">
                        <input type="text" id="search-input" placeholder="여행 코스 검색" />
                        <button id="search-button">검색</button>
                    </div>
                    <!-- 검색 결과나 지역별 코스를 보여줄 영역 -->
                </div>

                <div class="fesorcitybox">
                    <!-- 지역 버튼들 -->
                    <div class="citylist">
                        <div class="course-button" data-region="1" data-rname ="서울">서울</div>
                        <div class="course-button" data-region="2" data-rname ="인천">인천</div>
                        <div class="course-button" data-region="3" data-rname ="대전">대전</div>
                        <div class="course-button" data-region="4" data-rname ="대구">대구</div>
                        <div class="course-button" data-region="5" data-rname ="광주">광주</div>
                        <div class="course-button" data-region="6" data-rname ="부산">부산</div>
                        <div class="course-button" data-region="7" data-rname ="울산">울산</div>
                        <div class="course-button" data-region="8" data-rname ="제주">제주</div>
                    </div>

                    <div class="festa">
                        <h1>이곳은 축제가 랜덤으로 표시가 됩니다.</h1>
                    </div>
                </div>
            </div>
        </div>
    </section>

    <div class="coursemodal">
        <!-- 닫기 버튼 -->
        <div class="close-btn">&times;</div>
        <!-- 코스 이름 박스 -->
        <div class="coursenamebox">
            <p>코스 이름</p>
        </div>
        <hr>
        <!-- 태그 박스 -->
        <div class="tagbox">
            <div class="tag">
                <img src="https://via.placeholder.com/30" alt="태그 아이콘">
                <p>당일여행</p>
            </div>
            <div class="tag">
                <img src="https://via.placeholder.com/30" alt="태그 아이콘">
                <p>가족코스</p>
            </div>
        </div>
        <!-- 지도 박스 -->
        <div class="mapbox">
            <p>지도가 여기에 표시됩니다</p>
        </div>
        <!-- 댓글란 -->
        <div class="commentbox">
            <div class="comment-title">댓글란</div>
            <div class="comment">
                <img src="https://via.placeholder.com/40" alt="유저 이미지">
                <p>식사를 잘했어?</p>
            </div>
        </div>
    </div>

    <script>
        $(document).ready(function () {
            // 지역 버튼 클릭 시 AJAX로 데이터를 불러오기
            $('.course-button').on('click', function () {
                var areaCode = $(this).data('region'); // 클릭한 지역의 코드
                var rname =$(this).data("rname");
                $('#course-title').text('#' + rname); // 지역 이름 변경

                // AJAX 요청으로 서버에서 지역별 데이터를 가져옴
                $.ajax({
                    url: 'getCoursesByRegion.jsp', // 데이터를 가져올 서버의 JSP 파일
                    type: 'GET',
                    data: { areaCode: areaCode }, // 지역 코드를 전송
                    dataType: 'json',
                    success: function (response) {
                        // course-story 영역에 데이터를 동적으로 추가
                        var courseStory = $('#course-story');
                        courseStory.empty(); // 기존 데이터를 지움

                        $.each(response, function (index, course) {
                            // 각각의 데이터를 course-item 형식으로 추가
                            var courseItem = `
                                <div class="course-item">
                                    <img src="` + course.firstImage + `" alt="코스 이미지" />
                                    <p>` + course.title + `</p>
                                </div>
                            `;
                            courseStory.append(courseItem); // 새로운 데이터를 추가
                        });
                    },
                    error: function (xhr, status, error) {
                        console.error('AJAX 에러: ' + error);
                    }
                });
            });

            // 검색 버튼 클릭 시 동작
            $('#search-button').on('click', function () {
                var query = $('#search-input').val();
                // 검색어에 대한 AJAX 요청
                $.ajax({
                    url: 'searchCourses.jsp', // 검색을 처리할 JSP 파일
                    type: 'GET',
                    data: { query: query },
                    dataType: 'json',
                    success: function (response) {
                        var courseStory = $('#course-story');
                        courseStory.empty(); // 기존 데이터를 지움
                        $.each(response, function (index, course) {
                            var courseItem = `
                                <div class="course-item">
                                    <img src="` + course.firstImage + `" alt="코스 이미지" />
                                    <p>` + course.title + `</p>
                                </div>
                            `;
                            courseStory.append(courseItem);
                        });
                    },
                    error: function (xhr, status, error) {
                        console.error('검색 오류: ' + error);
                    }
                });
            });

            // 모달 관련 기능
            $('.course-item').on('click', function () {
                var items = $(this).data('items');
                $('.coursemodal').css('display', 'flex');
            });

            $('.close-btn').on('click', function () {
                $('.coursemodal').css('display', 'none');
            });

            // 모달 외부 클릭 시 모달 닫기
            $(document).on('click', function (e) {
                if ($(e.target).closest('.coursemodal').length === 0 && $(e.target).closest('.course-item').length === 0) {
                    $('.coursemodal').css('display', 'none');
                }
            });

            // ESC 키 누르면 모달 닫기
            $(document).on('keydown', function (e) {
                if (e.key === 'Escape') {
                    $('.coursemodal').css('display', 'none');
                }
            });
        });
    </script>
</body>
</html>