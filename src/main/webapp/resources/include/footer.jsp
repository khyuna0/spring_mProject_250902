<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<footer class="footer">
  <p>&copy; <c:out value="${pageContext.request.serverName}"/> Cafe Kiosk</p>
  <p>
    <a href="<c:url value='/policy'/>">이용약관</a> ·
    <a href="<c:url value='/privacy'/>">개인정보처리방침</a>
  </p>
</footer>