<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="ko">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>여행 상품</title>
    <link rel="stylesheet" href="products.css">
    <script src="../resources/js/jquery-3.7.1.min.js"></script>
    
</head>
<body>
<div class="travel-products">
    
        <h1 class="main-title">여행 상품</h1>
        <div class="title-border"></div>

    <div class="content-wrapper">
        <nav class="category-menu">
            <a href="#" class="category-item active" data-category="all">전체</a>
            <a href="#" class="category-item" data-category="공연">공연</a>
            <a href="#" class="category-item" data-category="체험">체험</a>
            <a href="#" class="category-item" data-category="전시">전시</a>
            <a href="#" class="category-item" data-category="투어패키지">투어패키지</a>
            <a href="#" class="category-item" data-category="기타">기타</a>
        </nav>

        <div class="search-container">
            <div class="location-selector">
                <div class="location-icon">📍전체</div>
                <div class="location-dropdown">
                    <div data-location="전체">전체</div>
                    <div data-location="광주/전남">광주/전남</div>
                    <div data-location="강원">강원</div>
                    <div data-location="서울">서울</div>
                    <div data-location="대전">대전</div>
                    <div data-location="충북">충북</div>
                    <div data-location="부산/경남">부산/경남</div>
                    <div data-location="울산">울산</div>
                    <div data-location="충남">충남</div>
                    <div data-location="대구/경북">대구/경북</div>
                    <div data-location="경기">경기</div>
                    <div data-location="전북">전북</div>
                    <div data-location="인천">인천</div>
                    <div data-location="세종">세종</div>
                    <div data-location="제주">제주</div>
                </div>
            </div>
            <input type="text" id="search-input" placeholder="상품명 검색">
            <button id="search-button">검색</button>
            
        </div>
    </div>

    <main class="product-grid">
        <div class="product-card">
            <div class="product-image">
            <img src="https://via.placeholder.com/250x150" alt="상품 이미지">
            </div>
            <div class="product-category bg-green">체험</div>
            <h3 class="product-title">OO농원 사과따기 체험</h3>
            <div class="product-info">
            <span>예산</span>
            <span>20000원/1인</span>
            </div>
            </div>
            <div class="product-card">
            <div class="product-image">
            <img src="https://via.placeholder.com/250x150" alt="상품 이미지">
            </div>
            <div class="product-category bg-pink">기타</div>
            <h3 class="product-title">XX 테마파크 입장권</h3>
            <div class="product-info">
            <span>경기</span>
            <span>10000원/1인</span>
            </div>
            </div>
            <div class="product-card">
            <div class="product-image">
            <img src="https://via.placeholder.com/250x150" alt="상품 이미지">
            </div>
            <div class="product-category bg-pink">기타</div>
            <h3 class="product-title">거제 케이블카 이용권</h3>
            <div class="product-info">
            <span>부산/경남</span>
            <span>11000원/1인</span>
            </div>
            </div>
            <div class="product-card">
            <div class="product-image">
            <img src="https://via.placeholder.com/250x150" alt="상품 이미지">
            </div>
            <div class="product-category bg-blue">공연</div>
            <h3 class="product-title">OO 국악단 32회 정기연주회</h3>
            <div class="product-info">
            <span>인천</span>
            <span>8000원/1인</span>
            </div>
            </div>
            <div class="product-card">
            <div class="product-image">
            <img src="https://via.placeholder.com/250x150" alt="상품 이미지">
            </div>
            <div class="product-category bg-purple">전시</div>
            <h3 class="product-title">서양미술 거장 특별전</h3>
            <div class="product-info">
            <span>서울</span>
            <span>12000원/1인</span>
            </div>
            </div>
            <div class="product-card">
            <div class="product-image">
            <img src="https://via.placeholder.com/250x150" alt="상품 이미지">
            </div>
            <div class="product-category bg-orange">투어패키지</div>
            <h3 class="product-title">제주 야경 투어</h3>
            <div class="product-info">
            <span>제주</span>
            <span>32000원/1인</span>
            </div>
            </div>
            <div class="product-card">
            <div class="product-image">
            <img src="https://via.placeholder.com/250x150" alt="상품 이미지">
            </div>
            <div class="product-category bg-green">체험</div>
            <h3 class="product-title">OO농원 사과따기 체험</h3>
            <div class="product-info">
            <span>예산</span>
            <span>20000원/1인</span>
            </div>
            </div>
            <div class="product-card">
            <div class="product-image">
            <img src="https://via.placeholder.com/250x150" alt="상품 이미지">
            </div>
            <div class="product-category bg-pink">기타</div>
            <h3 class="product-title">XX 테마파크 입장권</h3>
            <div class="product-info">
            <span>경기</span>
            <span>10000원/1인</span>
            </div>
            </div>
            <div class="product-card">
            <div class="product-image">
            <img src="https://via.placeholder.com/250x150" alt="상품 이미지">
            </div>
            <div class="product-category bg-pink">기타</div>
            <h3 class="product-title">거제 케이블카 이용권</h3>
            <div class="product-info">
            <span>부산/경남</span>
            <span>11000원/1인</span>
            </div>
            </div>
            <div class="product-card">
            <div class="product-image">
            <img src="https://via.placeholder.com/250x150" alt="상품 이미지">
            </div>
            <div class="product-category bg-blue">공연</div>
            <h3 class="product-title">OO 국악단 32회 정기연주회</h3>
            <div class="product-info">
            <span>인천</span>
            <span>8000원/1인</span>
            </div>
            </div>
            <div class="product-card">
            <div class="product-image">
            <img src="https://via.placeholder.com/250x150" alt="상품 이미지">
            </div>
            <div class="product-category bg-purple">전시</div>
            <h3 class="product-title">서양미술 거장 특별전</h3>
            <div class="product-info">
            <span>서울</span>
            <span>12000원/1인</span>
            </div>
            </div>
            <div class="product-card">
            <div class="product-image">
            <img src="https://via.placeholder.com/250x150" alt="상품 이미지">
            </div>
            <div class="product-category bg-orange">투어패키지</div>
            <h3 class="product-title">제주 야경 투어</h3>
            <div class="product-info">
            <span>제주</span>
            <span>32000원/1인</span>
            </div>
            </div>
    </main>


<!-- 모달 추가 -->
<div id="productModal" class="modal">
    <div class="modal-content">
        <span class="close">&times;</span>
        <img src="https://via.placeholder.com/600x200" alt="상품 이미지" class="modal-image">
        <div class="modal-body">
            <h2 class="modal-title"></h2>
            <p class="modal-info location"></p>
            <p class="modal-info phone"></p>
            <p class="modal-info price"></p>
            <p class="modal-info activity"></p>
            <p class="modal-info period"></p>
            <div class="modal-details">
                <a href="#" class="modal-info details">자세히 보기 ></a>
            </div>
            <div class="modal-button-container">
                <button class="modal-button">예약하기</button>
            </div>
        </div>
    </div>
</div>


    <div class="pagination">
        &lt;&lt; &lt; 1 2 3 4 5 6 7 8 9 &gt; &gt;&gt;
    </div>
</div>

<script>
$(document).ready(function() {
    $('.category-item').click(function(e) {
        e.preventDefault();
        var selectedCategory = $(this).data('category');

        $('.category-item').removeClass('active');
        $(this).addClass('active');

        if (selectedCategory === 'all') {
            $('.product-card').show();
        } else {
            $('.product-card').each(function() {
                var cardCategory = $(this).find('.product-category').text();
                if (cardCategory === selectedCategory) {
                    $(this).show();
                } else {
                    $(this).hide();
                }
            });
        }
    });

    $('#search-button').click(function() {
        var searchTerm = $('#search-input').val().toLowerCase();
        $('.product-card').each(function() {
            var productTitle = $(this).find('.product-title').text().toLowerCase();
            if (productTitle.includes(searchTerm)) {
                $(this).show();
            } else {
                $(this).hide();
            }
        });
    });

    // 지역 선택 관련 코드
    $('.location-icon').click(function(e) {
        e.stopPropagation();
        $('.location-dropdown').toggle();
    });

    $('.location-dropdown div').click(function() {
        var selectedLocation = $(this).data('location');
        $('.location-icon').text('📍 ' + selectedLocation);
        $('.location-dropdown').hide();
        
        // 여기에 선택된 지역에 따른 상품 필터링 로직 추가
        if (selectedLocation === '전체') {
            $('.product-card').show();
        } else {
            $('.product-card').each(function() {
                var cardLocation = $(this).find('.product-info span:first-child').text();
                if (cardLocation === selectedLocation) {
                    $(this).show();
                } else {
                    $(this).hide();
                }
            });
        }
    });

    $(document).click(function() {
        $('.location-dropdown').hide();
    });

    // 모달
    var modal = $('#productModal');
    var span = $('.close');

    $('.product-card').click(function() {
        var title = $(this).find('.product-title').text();
        var price = $(this).find('.product-info span:last-child').text();
        
        $('.modal-title').text(title);
        $('.modal-info.price').text(price);
        $('.modal-info.location').text('충남 예산군 삽교읍');
        $('.modal-info.phone').text('010-0000-0000');
        $('.modal-info.activity').text('활동내용: ///////////////');
        $('.modal-info.period').text('예약가능 기간: 상시');
        
        modal.fadeIn(300);
    });

    span.click(function() {
        modal.fadeOut(300);
    });

    $(window).click(function(event) {
        if (event.target == modal[0]) {
            modal.fadeOut(300);
        }
    });

});
</script>
</body>
</html>
