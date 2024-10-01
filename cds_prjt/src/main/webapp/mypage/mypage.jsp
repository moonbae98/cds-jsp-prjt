<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
    <!DOCTYPE html>
    <html>

    <head>
        <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <title>마이페이지</title>
        <link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/mypage/mypage.css">
    </head>

    <body>
        <button class="mainicon" id="openModalBtn">
            <img src="mypageicon.png" alt="마이페이지 아이콘">
        </button>

        <!-- 메인 마이페이지 -->
        <!-- 모달 박스 -->
        <div class="mypagemodal" id="myModal">
            <div class="mypagemain">
                <!-- 상단 -->
                <div class="mypagemain-top">
                    <h2>마이페이지</h2>
                    <span id="closeModalBtn" style="cursor: pointer;">&times;</span>
                </div>
                <hr class="hr1">
                <!-- 중단1 -->
                <div class="mypagemain-middle1">
                    <div>
                        <img src="mypage내사진.jpg" alt="마이페이지 내사진">
                    </div>
                    <p>김문배 님</p>
                    <button id="infoBtn">내 정보</button>
                </div>

                <!-- 중단2(아이콘 버튼들) -->
                <div class="mypagemain-middle-icon1">
                    <div>
                        <button id="likeBtn"><img src="좋아요.png" alt="좋아요"></button>
                        <p>좋아요/찜</p>
                    </div>
                    <div>
                        <button id="cartBtn"><img src="장바구니.png" alt="장바구니"></button>
                        <p>장바구니</p>
                    </div>
                    <div>
                        <button id="paymentBtn"><img src="결제내역.png" alt="결제내역"></button>
                        <p>결제 및/<br>예약확인</p>
                    </div>
                </div>

                <div class="mypagemain-middle-icon2">
                    <div>
                        <button id="couponBtn"><img src="쿠폰.png" alt="쿠폰"></button>
                        <p>쿠폰함</p>
                    </div>
                    <div>
                        <button id="queryBtn"><img src="문의내역.png" alt="문의하기"></button>
                        <p>문의하기</p>
                    </div>
                    <div>
                        <button id="postBtn"><img src="작성내역.png" alt="작성내역"></button>
                        <p>작성내역</p>
                    </div>
                </div>

                <div class="mypagemain-low">
                    <!-- 하단(로그아웃 버튼) -->
                    <button>로그아웃</button>
                </div>
            </div>

            <!-- 표시할 div들 -->
            <!-- 내 정보 -->
            <div id="infoDiv" class="mypagemyinfo">
                <div class="mypagemyinfo-top">
                    <h3>회원정보</h3>
                    <hr>
                    <div>
                        <img src="mypage내사진.jpg" alt="마이페이지 내사진">
                    </div>
                    <p>김문배</p>
                </div>

                <div class="mypagemyinfo-middle">
                    <input type="text" placeholder="  이름">
                    <input type="text" placeholder="  이메일">
                    <input type="text" placeholder="  아이디" readonly>
                    <input type="text" placeholder="  비밀번호">
                    <input type="text" placeholder="  비밀번호확인">
                    <input type="text" placeholder="  연락처">
                    <input type="text" placeholder="  주소">
                </div>
                <div class="mypagemyinfo-low">
                    <button>정보수정</button>
                    <button>회원탈퇴</button>
                </div>
            </div>
            <!-- 좋아요 / 찜 -->
            <div id="likeDiv" style="display: none; background-color: orange; width: 500px; height: 500px;">
                <h3>좋아요/찜</h3>
                <p>좋아요 및 찜 목록이 여기에 표시됩니다.</p>
            </div>
            <!-- 장바구니 -->
            <div id="cartDiv" class="mypagecart">
                <div class="mypagecart-top">
                    <h3>장바구니</h3>
                </div>
                <hr>
                <div class="mypagecart-body">
                    <input type="checkbox">
                    <p>함경도 평양냉면 얌얌</p>
                </div>

            </div>
            <!-- 결제 예약 -->
            <div id="paymentDiv" style="display: none; background-color: green; width: 500px; height: 500px;">
                <h3>결제 및 예약 확인</h3>
                <p>결제 내역 및 예약 확인 정보가 여기에 표시됩니다.</p>
            </div>
            <!-- 쿠폰 -->
            <div id="couponDiv" class="mypagecoupon">
                <div class="mypagecoupon-top">
                    <h3>쿠폰함</h3>
                </div>
                <hr>
                <div class="mypagecoupon-middle">
                    <h2>텅</h2>
                    <p>보유하신 쿠폰이 없습니다...</p>
                </div>
            </div>
            <!-- 문의 -->
            <div id="queryDiv" style="display: none; background-color: blue; width: 500px; height: 500px;">
                <h3>문의하기</h3>
                <p>문의 내역이 여기에 표시됩니다.</p>
            </div>
            <!-- 작성 -->
            <div id="postDiv" style="display: none; background-color: purple; width: 500px; height: 500px;">
                <h3>작성내역</h3>
                <p>작성한 내용이 여기에 표시됩니다.</p>
            </div>
        </div>

        <script>
            // 모달 엘리먼트와 버튼 가져오기
            const modal = document.getElementById('myModal');
            const openModalBtn = document.getElementById('openModalBtn');
            const closeModalBtn = document.getElementById('closeModalBtn');

            // 각 버튼과 div 요소 가져오기
            const infoBtn = document.getElementById('infoBtn');
            const likeBtn = document.getElementById('likeBtn');
            const cartBtn = document.getElementById('cartBtn');
            const paymentBtn = document.getElementById('paymentBtn');
            const couponBtn = document.getElementById('couponBtn');
            const queryBtn = document.getElementById('queryBtn');
            const postBtn = document.getElementById('postBtn');

            const infoDiv = document.getElementById('infoDiv');
            const likeDiv = document.getElementById('likeDiv');
            const cartDiv = document.getElementById('cartDiv');
            const paymentDiv = document.getElementById('paymentDiv');
            const couponDiv = document.getElementById('couponDiv');
            const queryDiv = document.getElementById('queryDiv');
            const postDiv = document.getElementById('postDiv');

            // 모달 열기
            openModalBtn.addEventListener('click', () => {
                modal.style.display = 'flex';
            });

            // 모달 닫기 (닫기 버튼 클릭 시)
            closeModalBtn.addEventListener('click', () => {
                modal.style.display = 'none';
                hideAllDivs(); // 모달을 닫을 때 모든 div 숨기기
            });

            // 모달 외부 클릭 시 닫기
            window.addEventListener('click', (e) => {
                if (e.target == modal) {
                    modal.style.display = 'none';
                    hideAllDivs(); // 모달을 닫을 때 모든 div 숨기기
                }
            });

            // 버튼 클릭 시 div 표시
            infoBtn.addEventListener('click', () => {
                hideAllDivs();
                modal.querySelector('.mypagemain').style.display = 'none'; // 마이페이지 내용 숨기기
                infoDiv.style.display = 'block'; // 내정보 div 보이기
            });

            likeBtn.addEventListener('click', () => {
                hideAllDivs();
                modal.querySelector('.mypagemain').style.display = 'none'; // 마이페이지 내용 숨기기
                likeDiv.style.display = 'block'; // 좋아요찜 div 보이기
            });

            cartBtn.addEventListener('click', () => {
                hideAllDivs();
                modal.querySelector('.mypagemain').style.display = 'none'; // 마이페이지 내용 숨기기
                cartDiv.style.display = 'block'; // 장바구니 div 보이기
            });

            paymentBtn.addEventListener('click', () => {
                hideAllDivs();
                modal.querySelector('.mypagemain').style.display = 'none'; // 마이페이지 내용 숨기기
                paymentDiv.style.display = 'block'; // 결제 div 보이기
            });

            couponBtn.addEventListener('click', () => {
                hideAllDivs();
                modal.querySelector('.mypagemain').style.display = 'none'; // 마이페이지 내용 숨기기
                couponDiv.style.display = 'block'; // 쿠폰함 div 보이기
            });

            queryBtn.addEventListener('click', () => {
                hideAllDivs();
                modal.querySelector('.mypagemain').style.display = 'none'; // 마이페이지 내용 숨기기
                queryDiv.style.display = 'block'; // 문의하기 div 보이기
            });

            postBtn.addEventListener('click', () => {
                hideAllDivs();
                modal.querySelector('.mypagemain').style.display = 'none'; // 마이페이지 내용 숨기기
                postDiv.style.display = 'block'; // 작성내역 div 보이기
            });

            // 모든 div 숨기기
            function hideAllDivs() {
                infoDiv.style.display = 'none';
                likeDiv.style.display = 'none';
                cartDiv.style.display = 'none';
                paymentDiv.style.display = 'none';
                couponDiv.style.display = 'none';
                queryDiv.style.display = 'none';
                postDiv.style.display = 'none';
            }
        </script>
    </body>

    </html>