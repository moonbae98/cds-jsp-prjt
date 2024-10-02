<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>커뮤니티 페이지</title>
    <style>
        body {
            font-family: Arial, sans-serif;
            margin: 0;
            padding: 0;
            background-color: #f4f4f4;
        }
        .container {
            display: flex;
            flex-direction: row;
            justify-content: space-between;
            width: 90%; /* 양쪽 여백을 줄이기 위해 90%로 설정 */
            max-width: 1400px;
            margin: 20px auto;
        }
        .content {
            width: 75%; /* 사이드바 여백 줄이기 */
            padding: 20px;
            background-color: white;
            box-shadow: 0 0 10px rgba(0, 0, 0, 0.1);
        }
        .sidebar {
            width: 20%;
            padding: 20px;
            background-color: white;
            box-shadow: 0 0 10px rgba(0, 0, 0, 0.1);
            height: auto;
        }
        .search-box {
            display: flex;
            align-items: center;
            padding: 5px 10px;
            background-color: #eee;
            border-radius: 20px;
            margin-bottom: 20px;
        }
        .search-box input {
            border: none;
            background: none;
            outline: none;
            margin-left: 10px;
            font-size: 14px;
        }
        .search-box svg {
            width: 20px;
            height: 20px;
        }
        .post-grid {
            display: grid;
            grid-template-columns: repeat(4, 1fr); /* 한 줄에 4개씩 배치 */
            grid-gap: 20px;
        }
        .post {
            position: relative;
            padding: 10px;
            border: 1px solid #ddd;
            background-color: #fff;
            box-shadow: 0 0 5px rgba(0, 0, 0, 0.1);
            border-radius: 8px;
            text-align: center;
            cursor: pointer;
        }
        .post img {
            width: 100%;
            height: 200px; /* 사진 세로 길이 설정 */
            object-fit: cover;
            border-radius: 8px;
            margin-bottom: 10px;
        }
        .post .profile {
            position: absolute;
            top: 15px;
            left: 20px;
            display: flex;
            align-items: center;
            gap: 10px; /* 프로필과 이미지 사이 간격 추가 */
        }
        .post .profile img {
            width: 30px;
            height: 30px;
            border-radius: 50%;
        }
        .post .profile span {
            position: relative;
            top: -5px; /* 유저 아이디 위치를 조금 올리기 */
        }
        .post-title {
            font-size: 16px;
            font-weight: bold;
            margin-bottom: 5px;
        }
        .post-meta {
            font-size: 12px;
            color: #777;
            margin-bottom: 10px;
        }
        .rating {
            display: flex;
            justify-content: center;
            align-items: center;
            font-size: 14px;
            margin-bottom: 10px;
        }
        .rating .star {
            width: 16px;
            height: 16px;
            background-color: #ddd;
            clip-path: polygon(50% 0%, 61% 35%, 98% 35%, 68% 57%, 79% 91%, 50% 70%, 21% 91%, 32% 57%, 2% 35%, 39% 35%);
            margin-right: 2px;
        }
        .rating .star.filled {
            background-color: #4caff6;
        }
        .likes-comments {
            font-size: 14px;
            text-align: left;
            margin-top: 5px;
        }
        .likes-comments .icon {
            margin-right: 10px;
        }
        .pagination {
            margin-top: 20px;
            text-align: center;
        }
        .pagination button {
            padding: 8px 12px;
            margin: 2px;
            background-color: #ddd;
            border: none;
            border-radius: 4px;
            cursor: pointer;
        }
        .pagination button.active {
            background-color: #4caff6;
            color: white;
        }
        .sort-options {
            display: inline-block;
            margin-left: 20px;
        }
        .location-tag {
            position: absolute;
            top: 10px;
            right: 10px;
            padding: 5px 10px;
            background-color: #333;
            color: white;
            font-size: 12px;
            border-radius: 5px;
        }
        .header {
            display: flex;
            justify-content: space-between;
            align-items: center;
        }
        /* 모달 스타일 */
        .modal {
            display: none;
            position: fixed;
            z-index: 1;
            left: 0;
            top: 0;
            width: 100%;
            height: 100%;
            overflow: auto;
            background-color: rgba(0, 0, 0, 0.5);
            justify-content: center;
            align-items: center;
        }

        .modal-content {
            background-color: white;
            padding: 40px 20px;
            border-radius: 10px;
            width: 30%;
            max-width: 500px;
            text-align: center;
            position: relative;
        }

        /* 고객 프로필 및 닫기 버튼 배치 */
        .modal-header {
            display: flex;
            justify-content: space-between;
            align-items: center;
            position: absolute;
            top: 4px;
            left: 20px;
            right: 20px;
            gap: 10px; /* 닫기 버튼과 위치 아이콘의 간격을 좁힘 */
        }

        .location-icon {
            display: flex;
            align-items: center;
            font-size: 12px;
            color: #555;
            margin-left: 10px;
        }

        .location-icon img {
            width: 20px; /* 이미지 크기 설정 */
            height: 20px;
            margin-right: 5px; /* 이미지와 텍스트 간격 */
        }

        .modal-header .profile {
            display: flex;
            align-items: center;
            left: 40px;
            margin-right: 10px; /* 프로필과 아이디 간격 추가 */
        }

        .modal-header .profile img {
            width: 30px;
            height: 30px;
            border-radius: 50%;
            margin-right: 10px;
        }

        .modal-close {
            font-size: 30px;
            cursor: pointer;
        }

        .modal img {
            width: 100%;
            height: auto;
            margin-top: 0px; /* 이미지의 위치를 아래로 조정하여 프로필과 겹치지 않게 설정 */
        }

        /* 모달 하단에 좋아요 수, 댓글 수 및 작성일 표시 스타일 */
        .modal-meta {
            display: flex;
            justify-content: space-between;
            align-items: center;
            margin-top: 10px;
        }

        .modal-meta .likes-comments {
            display: flex;
            align-items: center;
            font-size: 14px;
        }

        .modal-meta .likes-comments .icon {
            margin-right: 10px;
        }

        .modal-meta .post-date {
            font-size: 12px;
            color: #777;
        }

        .modal-title {
            font-weight: bold;
            font-size: 18px;
            margin-top: 10px;
        }

        .modal-description {
            margin-top: 10px;
            font-size: 14px;
            color: #555;
        }

        .location-icon {
            display: flex;
            align-items: center;
            font-size: 12px;
            color: #555;
            margin-left: 10px;
        }

        .location-icon svg {
            margin-right: 5px;
        }

        .search-box img {
            width: 20px; /* 돋보기 이미지 크기 */
            height: 20px;
        }

        .location-icon img {
            width: 18px; /* 위치 아이콘 이미지 크기 */
            height: 18px;
            margin-right: 5px; /* 이미지와 텍스트 간격 */
        }

       .button-container {
    display: flex;
    flex-wrap: wrap; /* 버튼이 줄 바꿈을 할 수 있도록 설정 */
    justify-content: space-between; /* 버튼 간의 간격을 자동으로 조절 */
    margin-top: 10px;
}

.button-container button {
    flex: 0 1 calc(44.44% - 2px); /* 각 버튼의 가로 길이를 1/3로 설정 (여백 포함) */
    margin-bottom: 10px; /* 버튼 간의 세로 간격 추가 */
    /* 추가적인 스타일을 여기서 정의할 수 있습니다 */
}
.button-container button:hover {
    background-color: #b2e0f5; /* 마우스 오버 시 연한색으로 변경 */
}



        .button {
            padding: 8px 10px;
            margin: 5px 0;
            background-color: #4caff6;
            color: white;
            border: none;
            border-radius: 5px;
            cursor: pointer;
        }

        .button.active {
            background-color: #333;
        }

    </style>
</head>
<body>

<div class="container">
    <!-- 메인 콘텐츠 영역 -->
    <div class="content">
        <div class="header">
            <h2>떠나자 커뮤니티 ✍️</h2>

           <div class="sort-options">
    <span>정렬: </span>
    <button class="sort-button" id="sortLatest" onclick="sortPosts('latest')">최신순</button>
    <button class="sort-button" id="sortRating" onclick="sortPosts('rating')">평점순</button>
</div>

        </div>

        <!-- 게시물 목록 -->
        <div id="postList" class="post-grid">
            <!-- 게시물 12개가 그리드로 나올 영역 -->
        </div>

        <!-- 페이지네이션 -->
        <div class="pagination" id="pagination"></div>
    </div>

    <!-- 사이드바 (지역별 카테고리) -->
    <div class="sidebar">
        <!-- 지역 검색창 -->
        <div class="search-box">
            <img src="돋보기.png" alt="Location Icon">
            <input type="text" placeholder="지역명을 검색하세요" id="regionSearch">
        </div>

        <h3>지역별 게시물 보기</h3>
        <div class="button-container">
            <!-- 지역 버튼 생성 -->
    <button class="button" onclick="filterByRegion('all')">모든 지역</button>
    <button class="button" onclick="filterByRegion('서울')">서울</button>
    <button class="button" onclick="filterByRegion('경기')">경기</button>
    <button class="button" onclick="filterByRegion('인천')">인천</button>
    <button class="button" onclick="filterByRegion('대전')">대전</button>
    <button class="button" onclick="filterByRegion('강원')">강원</button>
    <button class="button" onclick="filterByRegion('광주')">광주</button>
    <button class="button" onclick="filterByRegion('울산')">울산</button>
    <button class="button" onclick="filterByRegion('대구')">대구</button>
    <button class="button" onclick="filterByRegion('부산')">부산</button>
    <button class="button" onclick="filterByRegion('충북')">충북</button>
    <button class="button" onclick="filterByRegion('충남')">충남</button>
    <button class="button" onclick="filterByRegion('전북')">전북</button>
    <button class="button" onclick="filterByRegion('전남')">전남</button>
    <button class="button" onclick="filterByRegion('경북')">경북</button>
    <button class="button" onclick="filterByRegion('경남')">경남</button>
    <button class="button" onclick="filterByRegion('제주')">제주</button>
        </div>

        <h4 id="selectedLocation" style="margin-top: 10px;"></h4>
    </div>
</div>

<!-- 모달 창 -->
<div id="modal" class="modal">
    <div class="modal-content">
        <div class="modal-header">
            <div class="profile">
                <img id="modalProfileImage" src="">
                <span id="modalUserId"></span>
            </div>
            <div class="location-icon">
                <img src="위치.jpg" alt="Location Icon">
                <span id="modalLocation"></span>
            </div>

            <span class="modal-close" onclick="closeModal()">&times;</span>
        </div>
        <img id="modalImage" src="">

        <h3 id="modalTitle" class="modal-title"></h3>
        <p id="modalMeta"></p>
        <p class="modal-description" id="modalDescription"></p>
        <div class="modal-meta">
            <div class="likes-comments">
                <span class="icon">👍 <span id="modalLikes"></span></span>
                <span class="icon">💬 <span id="modalCommentsCount"></span></span>
            </div>
            <div class="post-date">
                <span id="modalDate"></span>
            </div>
        </div>
        <div id="modalComments"></div>
    </div>
</div>

<script>
    // 게시물 데이터 예시
    var posts = [
        {title: '게시물 제목 1', date: '2024-09-29', views: 120, likes: 20, comments: 15, rating: 4.5, location: '서울', profile: 'https://via.placeholder.com/30', user: 'User_ID', image: 'https://via.placeholder.com/100', description: '게시물 내용 1', commentsData: ['comment 1', 'comment 2']},
        {title: '게시물 제목 2', date: '2024-09-28', views: 200, likes: 50, comments: 25, rating: 3.8, location: '부산', profile: 'https://via.placeholder.com/30', user: 'User_ID', image: 'https://via.placeholder.com/100', description: '게시물 내용 2', commentsData: ['comment 3', 'comment 4']},
        {title: '게시물 제목 3', date: '2024-09-27', views: 50, likes: 10, comments: 5, rating: 5.0, location: '대구', profile: 'https://via.placeholder.com/30', user: 'User_ID', image: 'https://via.placeholder.com/100', description: '게시물 내용 3', commentsData: ['comment 5']},
        {title: '게시물 제목 4', date: '2024-09-26', views: 75, likes: 12, comments: 3, rating: 4.0, location: '인천', profile: 'https://via.placeholder.com/30', user: 'User_ID', image: 'https://via.placeholder.com/100', description: '게시물 내용 4', commentsData: ['comment 6', 'comment 7']},
        {title: '게시물 제목 5', date: '2024-09-25', views: 45, likes: 5, comments: 2, rating: 3.5, location: '서울', profile: 'https://via.placeholder.com/30', user: 'User_ID', image: 'https://via.placeholder.com/100', description: '게시물 내용 5', commentsData: ['comment 8']},
        {title: '게시물 제목 6', date: '2024-09-24', views: 180, likes: 30, comments: 20, rating: 4.8, location: '부산', profile: 'https://via.placeholder.com/30', user: 'User_ID', image: 'https://via.placeholder.com/100', description: '게시물 내용 6', commentsData: ['comment 9', 'comment 10']}
    ];

    var currentPage = 1;
    var postsPerPage = 12;

    function displayPosts(page, filteredPosts) {
        var postList = document.getElementById("postList");
        postList.innerHTML = "";
        var start = (page - 1) * postsPerPage;
        var end = start + postsPerPage;
        var paginatedPosts = filteredPosts.slice(start, end);

        paginatedPosts.forEach(function (post) {
            var postDiv = document.createElement("div");
            postDiv.className = "post";
            postDiv.onclick = function() { openModal(post); }; // 클릭 시 모달 열기

            var img = document.createElement("img");
            img.src = post.image;
            postDiv.appendChild(img);

            var profileDiv = document.createElement("div");
            profileDiv.className = "profile";
            var profileImg = document.createElement("img");
            profileImg.src = post.profile;
            var userName = document.createElement("span");
            userName.innerText = post.user;
            profileDiv.appendChild(profileImg);
            profileDiv.appendChild(userName);
            postDiv.appendChild(profileDiv);

            var locationTag = document.createElement("div");
            locationTag.className = "location-tag";
            locationTag.innerText = post.location;
            postDiv.appendChild(locationTag);

            var title = document.createElement("div");
            title.className = "post-title";
            title.innerText = post.title;
            postDiv.appendChild(title);

            var meta = document.createElement("div");
            meta.className = "post-meta";
            meta.innerText = "작성일: " + post.date + " | 조회수: " + post.views;
            postDiv.appendChild(meta);

            var ratingDiv = document.createElement("div");
            ratingDiv.className = "rating";
            for (var i = 1; i <= 5; i++) {
                var star = document.createElement("div");
                star.className = "star" + (i <= post.rating ? " filled" : "");
                ratingDiv.appendChild(star);
            }
            var ratingText = document.createElement("span");
            ratingText.innerText = " " + post.rating;
            ratingDiv.appendChild(ratingText);
            postDiv.appendChild(ratingDiv);

            var likesCommentsDiv = document.createElement("div");
            likesCommentsDiv.className = "likes-comments";
            likesCommentsDiv.innerHTML = `<span class="icon">👍 ${post.likes}</span><span class="icon">💬 ${post.comments}</span>`;
            postDiv.appendChild(likesCommentsDiv);

            postList.appendChild(postDiv);
        });

        displayPagination(filteredPosts);
    }

    function displayPagination(filteredPosts) {
        var paginationDiv = document.getElementById("pagination");
        paginationDiv.innerHTML = "";
        var totalPages = Math.ceil(filteredPosts.length / postsPerPage);

        for (var i = 1; i <= totalPages; i++) {
            var button = document.createElement("button");
            button.innerText = i;
            if (i === currentPage) {
                button.className = "active";
            }
            button.addEventListener("click", function () {
                currentPage = parseInt(this.innerText);
                displayPosts(currentPage, filteredPosts);
            });
            paginationDiv.appendChild(button);
        }
    }

    function sortPosts() {
        var sortOption = document.getElementById("sort").value;

        if (sortOption === "latest") {
            posts.sort(function (a, b) {
                return new Date(b.date) - new Date(a.date);
            });
        } else if (sortOption === "rating") {
            posts.sort(function (a, b) {
                return b.rating - a.rating;
            });
        }

        filterByRegion('all'); // 정렬 후 필터 적용
    }

    function filterByRegion(region) {
        var filteredPosts = posts.filter(function(post) {
            return region === 'all' || post.location === region;
        });
        displayPosts(currentPage, filteredPosts);
        document.getElementById("selectedLocation").innerText = "선택된 지역: " + (region === 'all' ? "모든 지역" : region);
    }

    // 모달 열기 함수
    function openModal(post) {
        document.getElementById("modalImage").src = post.image;
        document.getElementById("modalTitle").innerText = post.title;
        document.getElementById("modalMeta").innerText = "작성일: " + post.date + " | 조회수: " + post.views + " | 좋아요: " + post.likes + " | 댓글: " + post.comments;
        document.getElementById("modalProfileImage").src = post.profile;
        document.getElementById("modalUserId").innerText = post.user;

        // 위치 및 게시물 내용 추가
        document.getElementById("modalLocation").innerText = post.location;
        document.getElementById("modalDescription").innerText = post.description;

        var modalComments = document.getElementById("modalComments");
        modalComments.innerHTML = "<h4>댓글</h4>";
        post.commentsData.forEach(function(comment) {
            var commentP = document.createElement("p");
            commentP.innerText = comment;
            modalComments.appendChild(commentP);
        });

        document.getElementById("modal").style.display = "flex";
    }

    // 모달 닫기 함수
    function closeModal() {
        document.getElementById("modal").style.display = "none";
    }

    // 모달 외부 클릭 시 닫기 함수
    window.onclick = function(event) {
        var modal = document.getElementById("modal");
        if (event.target === modal) {
            modal.style.display = "none";
        }
    }
    
    function sortPosts(option) {
        var sortButtons = document.querySelectorAll('.sort-button');
        sortButtons.forEach(function(button) {
            button.classList.remove('active');
        });
        if (option === "latest") {
            document.getElementById("sortLatest").classList.add('active');
            posts.sort(function (a, b) {
                return new Date(b.date) - new Date(a.date);
            });
        } else if (option === "rating") {
            document.getElementById("sortRating").classList.add('active');
            posts.sort(function (a, b) {
                return b.rating - a.rating;
            });
        }

        filterByRegion('all'); // 정렬 후 필터 적용
    }


    // 초기 게시물 표시
    filterByRegion('all');
</script>

</body>
</html>
