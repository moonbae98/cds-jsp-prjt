<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>축제행사</title>
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.6.0/css/all.min.css" 
integrity="sha512-Kc323vGBEqzTmouAECnVceyQqyqdsSiqLQISBL29aUW4U/M7pSPA/gEUZQqv1cwx4OnYxTxve5UMg5GT6L4JJg==" 
crossorigin="anonymous" referrerpolicy="no-referrer" />
<link rel="stylesheet" type="text/css" href="festival.css">
<script src="../resources/js/jquery-3.7.1.min.js"></script>
</head>
<body>
    <div id="section">
        <div id="fastivalMain">
            <div class="search">
                <input type="text" id="searchText" placeholder="검색어를 입력하세요(축제/행사 명)">
                <span>|</span>
                <button type="submit">
                    <i class="fa-solid fa-magnifying-glass"></i>
                </button>
            </div>
            <div class="select">
                <button class="selectDate">
                    <i class="fa-regular fa-calendar"></i>
                    <div>날짜</div>
                    <i class="fa-solid fa-angle-down"></i>
                </button>
                <input type="date" class="inputDate" style="display: none;">
                <button class="selectArea">
                    <i class="fa-solid fa-location-dot"></i>
                    <div>지역</div>
                    <i class="fa-solid fa-angle-down"></i>
                </button>
                <button class="selectArea">
                    <i class="fa-regular fa-folder"></i>
                    <div>카테고리</div>
                    <i class="fa-solid fa-angle-down"></i>
                </button>
                <button class="selectRefresh">
                	<i class="fa-solid fa-arrows-rotate"></i>
                </button>
            </div>
            <div class="duration">
                <button># 진행중</button>
                <button># 진행예정</button>
            </div>
            <div class="fastivallist">
                <div class="fastivalitem">
                    <div class="itemImg">
                        <div class="hiddenItem">
                            <div>충청남도 아산시</div>
                            <div>2024.09.16~2024.09.30</div>
                            <button>바로가기</button>
                        </div>
                    </div>
                    <div>A 축제</div>
                </div>
                <div class="fastivalitem">
                    <div class="itemImg">
                        <div class="hiddenItem">
                            <div>충청남도 천안시</div>
                            <div>2024.09.16~2024.09.30</div>
                            <button>바로가기</button>
                        </div>
                    </div>
                    <div>B 축제</div>
                </div>
                <div class="fastivalitem">
                    <div class="itemImg">
                        <div class="hiddenItem">
                            <div>충청남도 보령시</div>
                            <div>2024.09.16~2024.09.30</div>
                            <button>바로가기</button>
                        </div>
                    </div>
                    <div>C 축제</div>
                </div>
                <div class="fastivalitem">
                    <div class="itemImg">
                        <div class="hiddenItem">
                            <div>충청남도 공주시</div>
                            <div>2024.09.16~2024.09.30</div>
                            <button>바로가기</button>
                        </div>
                    </div>
                    <div>D 축제</div>
                </div>
            </div>
            <div class="fastivalNonelist">
                <p>검색 결과가 없습니다.</p>
                <p>다시 검색해 주세요.</p>
            </div>
            <div class="recommend">
                <div class="recTitle">이런 축제는 어때요?</div>
                <div class="recList">
                    <div class="recItemImg">
                        <div class="recItemText">
                            <div>A 축제</div>
                            <div>2024.09.16~2024.09.30</div>
                            <div>충청남도 천안시</div>
                        </div>
                        <button>
                            <i class="fa-solid fa-arrow-right"></i>
                        </button>
                    </div>
                    <div class="recItemImg">
                        <div class="recItemText">
                            <div>B 축제</div>
                            <div>2024.09.16~2024.09.30</div>
                            <div>충청남도 아산시</div>
                        </div>
                        <button>
                            <i class="fa-solid fa-arrow-right"></i>
                        </button>
                    </div>
                    <div class="recItemImg">
                        <div class="recItemText">
                            <div>C 축제</div>
                            <div>2024.09.16~2024.09.30</div>
                            <div>충청남도 보령시</div>
                        </div>
                        <button>
                            <i class="fa-solid fa-arrow-right"></i>
                        </button>
                    </div>
                </div>
            </div>
        </div>
    </div>

    <script>
	    $(function() {
	        $('.selectDate').click(function() {
	            $('.inputDate').trigger('click'); // 날짜 선택 창 띄우기
	        });
	    });
    </script>
</body>
</html>