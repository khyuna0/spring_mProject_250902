<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html lang="ko">
<head>
  <meta charset="UTF-8" />
  <meta name="viewport" content="width=device-width, initial-scale=1" />
  <title>스터디룸 예약 시스템</title>
  <!-- 외부 CSS -->
  <link rel="stylesheet" href="<c:url value='/resources/css/style.css'/>" />
</head>
<body>
  <!-- 공통 헤더 -->
  <jsp:include page="/WEB-INF/views/include/header.jsp" />

  <main class="container">
    <!-- 히어로 -->
    <section class="hero">
      <h1>스터디룸 예약 시스템</h1>
      <p>간편하게 스터디룸을 예약하고, 편리하게 이용하세요.</p>
      <div class="cta">
        <a class="btn btn-primary" href="<c:url value='/reservation/reservationForm'/>">예약하기</a>
        <a class="btn btn-outline" href="<c:url value='/reservation/check'/>">예약 확인</a>
      </div>
    </section>

    <!-- 안내 카드 -->
    <section class="menu-grid" aria-label="서비스 안내">
      <article class="card">
        <div class="card-thumb" aria-hidden="true"></div>
        <h3>간편 예약</h3>
        <p>온라인에서 몇 번의 클릭만으로 원하는 시간대와 지점을 예약하세요.</p>
        <a class="btn btn-small" href="<c:url value='/reservation/reservationForm'/>">바로가기</a>
      </article>

      <article class="card">
        <div class="card-thumb" aria-hidden="true"></div>
        <h3>예약 확인</h3>
        <p>내 예약 내역을 조회하고, 필요하다면 변경·취소할 수 있습니다.</p>
        <a class="btn btn-small" href="<c:url value='/reservation/check'/>">확인하기</a>
      </article>

      <article class="card">
        <div class="card-thumb" aria-hidden="true"></div>
        <h3>회원 관리</h3>
        <p>회원 가입 및 로그인으로 더 편리한 예약 서비스를 이용하세요.</p>
        <a class="btn btn-small" href="<c:url value='/login'/>">로그인</a>
      </article>
    </section>
  </main>

	
	<!-- 오시는 길 섹션 -->
	<section class="map-section">
	  <h4>오시는 길</h4>
	  <div id="map" class="map-box"></div>
	</section>
	
	<!-- 공통 푸터 -->
	<jsp:include page="/WEB-INF/views/include/footer.jsp" />
	
	<!-- Kakao Map API -->
	<script type="text/javascript" src="//dapi.kakao.com/v2/maps/sdk.js?appkey=affafb90e4e716eb5f86478a311a419b"></script>
	<script>
	  var container = document.getElementById('map');
	  var options = {
	    center: new kakao.maps.LatLng(37.5577706, 126.9440849), // 기본 위치
	    level: 3
	  };
	  var map = new kakao.maps.Map(container, options);
	</script>

</body>
</html>
