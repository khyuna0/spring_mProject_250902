<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<link rel="stylesheet" href="<c:url value='/resources/css/style.css'/>" />

<header class="topbar">
  <!-- 브랜드명 -->
  <a class="brand" href="<c:url value='/index'/>">스터디룸 예약</a>

  <!-- 내비게이션 -->
  <nav aria-label="상단 메뉴">
    <ul class="menu">

      <c:choose>
       
        <c:when test="${empty sessionScope.sessionId }">
          <li><a href="<c:url value='/login'/>">로그인</a></li>
          <li><a href="<c:url value='/joinForm'/>">회원가입</a></li>
        </c:when>

        
        <c:otherwise>
          <li><a href="<c:url value='/logout'/>">로그아웃</a></li>
          <li><a href="<c:url value='/myPage'/>">마이페이지</a></li>
          <li><a href="<c:url value='/reservation/reservationForm'/>">예약하기</a></li>
          <li><a href="<c:url value='/reservation/rCheck'/>">예약 확인</a></li>
        </c:otherwise>
      </c:choose>

      <!-- 게시판 (공통 메뉴) -->
      <li><a href="<c:url value='/board/bList'/>">후기 게시판</a></li>
    </ul>
  </nav>
</header>
