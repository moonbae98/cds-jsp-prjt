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
            top: 10px;
            left: 10px;
            display: flex;
            align-items: center;
        }
        .post .profile img {
            width: 30px;
            height: 30px;
            border-radius: 50%;
            margin-right: 5px;
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
    </style>
</head>
<body>

<div class="container">
    <!-- 메인 콘텐츠 영역 -->
    <div class="content">
        <div class="header">
            <h2>떠나자 커뮤니티 ✍️</h2>

            <!-- 정렬 옵션 -->
            <div class="sort-options">
                <label for="sort">정렬: </label>
                <select id="sort" onchange="sortPosts()">
                    <option value="latest">최신순</option>
                    <option value="rating">평점순</option>
                </select>
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
            <svg xmlns="http://www.w3.org/2000/svg" fill="none" viewBox="0 0 24 24" stroke="currentColor">
                <path stroke-linecap="round" stroke-linejoin="round" stroke-width="2" d="M16 11V8a4 4 0 10-8 0v3a4 4 0 01-2 3.465V18a2 2 0 002 2h8a2 2 0 002-2v-3.535A4 4 0 0116 11zM9 11V8a3 3 0 116 0v3"/>
            </svg>
            <input type="text" placeholder="지역명을 검색하세요" id="regionSearch">
        </div>

        <h3>지역별 게시물 보기</h3>
        <select id="region" onchange="filterByRegion()">
            <option value="all">모든 지역</option>
            <option value="서울">서울</option>
            <option value="부산">부산</option>
            <option value="대구">대구</option>
            <option value="인천">인천</option>
        </select>
    </div>
</div>

<script>
    // 게시물 데이터 예시
    var posts = [
        {title: '게시물 제목 1', date: '2024-09-29', views: 120, likes: 20, comments: 15, rating: 4.5, location: '서울', profile: 'https://via.placeholder.com/30', user: 'User_ID', image: 'https://via.placeholder.com/100'},
        {title: '게시물 제목 2', date: '2024-09-28', views: 200, likes: 50, comments: 25, rating: 3.8, location: '부산', profile: 'https://via.placeholder.com/30', user: 'User_ID', image: 'https://via.placeholder.com/100'},
        {title: '게시물 제목 3', date: '2024-09-27', views: 50, likes: 10, comments: 5, rating: 5.0, location: '대구', profile: 'https://via.placeholder.com/30', user: 'User_ID', image: 'https://via.placeholder.com/100'},
        {title: '게시물 제목 4', date: '2024-09-26', views: 75, likes: 12, comments: 3, rating: 4.0, location: '인천', profile: 'https://via.placeholder.com/30', user: 'User_ID', image: 'https://via.placeholder.com/100'},
        {title: '게시물 제목 5', date: '2024-09-25', views: 45, likes: 5, comments: 2, rating: 3.5, location: '서울', profile: 'https://via.placeholder.com/30', user: 'User_ID', image: 'https://via.placeholder.com/100'},
        {title: '게시물 제목 6', date: '2024-09-24', views: 180, likes: 30, comments: 20, rating: 4.8, location: '부산', profile: 'https://via.placeholder.com/30', user: 'User_ID', image: 'https://via.placeholder.com/100'}
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
            likesCommentsDiv.innerHTML = `<span class="icon">❤ ${post.likes}</span><span class="icon">💬 ${post.comments}</span>`;
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

        filterByRegion(); // 정렬 후 필터 적용
    }

    function filterByRegion() {
        var region = document.getElementById("region").value;
        var filteredPosts = posts.filter(function(post) {
            return region === 'all' || post.location === region;
        });
        displayPosts(currentPage, filteredPosts);
    }

    // 초기 게시물 표시
    filterByRegion();
</script>

</body>
</html>
