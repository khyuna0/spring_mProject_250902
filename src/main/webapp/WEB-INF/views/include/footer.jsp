<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<link rel="stylesheet" href="<c:url value='/resources/css/style.css'/>" />

<footer class="footer">
  <div class="footer-inner">
    <!-- 좌측: 사이트 정보 -->
    <div class="footer-info">
      <p>&copy; <c:out value="${pageContext.request.serverName}"/> 스터디룸 예약</p>
      <p>
        <a href="<c:url value='/policy'/>">이용약관</a> ·
        <a href="<c:url value='/privacy'/>">개인정보처리방침</a>
      </p>
    </div>
  </div>
</footer>
