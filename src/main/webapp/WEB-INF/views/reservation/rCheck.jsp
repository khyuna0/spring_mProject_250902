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
    <c:when test="${not empty memberDto.reservationlist}">
      <div class="container">
        <h2 class="form-title">예약 목록</h2>
        <div class="board-card">
          <table class="board-table">
            <thead>
              <tr>
                <th>예약 번호</th>
                <th>예약자 아이디</th>
                <th>예약자 성명</th>
                <th>예약 지점</th>
                <th>예약 호실</th>
                <th>예약 날짜</th>
                <th>예약 시간</th>
              </tr>
            </thead>
            <tbody>
              <c:forEach var="res" items="${memberDto.reservationlist}">
                <tr>
                  <td>${res.rid}</td>
                  <td>${res.memberid}</td>
                  <td>${memberDto.membername}</td>
                  <td>${res.rlocation}</td>
                  <td>${res.r_room}</td>
                  <td>${res.rdate}</td>
                  <td>${res.rtime}</td>
                </tr>
              </c:forEach>
            </tbody>
          </table>
        </div>
      </div>
    </c:when>

    <c:otherwise>
      <script>
        alert("예약이 없습니다!");
        location.href = "<c:url value='/reservation/reservationForm' />";
      </script>
    </c:otherwise>
  </c:choose>

  <!-- 공통 푸터 -->
  <jsp:include page="/WEB-INF/views/include/footer.jsp" />
</body>
</html>
