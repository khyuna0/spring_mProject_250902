<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html lang="ko">
<head>
  <meta charset="UTF-8">
  <title>예약 확인</title>
  <link rel="stylesheet" href="<c:url value='/resources/css/style.css'/>" />
</head>
<body>
  <!-- 공통 헤더 -->
  <jsp:include page="/WEB-INF/views/include/header.jsp" />

  <c:choose>
    <c:when test="${not empty reservation}">
      <div class="container">
        <h2 class="form-title">예약 확인</h2>
        <div class="form-card">
          <div class="form-row">
            <label>예약 번호</label>
            <div>${reservation.rid}</div>
          </div>

          <div class="form-row">
            <label>예약자 아이디</label>
            <div>${reservation.memberid}</div>
          </div>

          <div class="form-row">
            <label>예약자 성명</label>
            <div>${reservation.membername}</div>
          </div>

          <div class="form-row">
            <label>예약 지점</label>
            <div>${reservation.reservationDto.rlocation}</div>
          </div>

          <div class="form-row">
            <label>예약 호실</label>
            <div>${reservation.reservationDto.r_room}</div>
          </div>

          <div class="form-row">
            <label>예약 날짜</label>
            <div>${reservation.reservationDto.rdate}</div>
          </div>

          <div class="form-row">
            <label>예약 시간</label>
            <div>${reservation.reservationDto.rtime}</div>
          </div>
        </div>
      </div>
    </c:when>

    <c:otherwise>
      <script>
        alert("예약이 없습니다!");
        location.href = "<c:url value='/index' />";
      </script>
    </c:otherwise>
  </c:choose>

  <!-- 공통 푸터 -->
  <jsp:include page="/WEB-INF/views/include/footer.jsp" />
</body>
</html>
