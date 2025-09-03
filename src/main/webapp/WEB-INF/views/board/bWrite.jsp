<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html lang="ko">
<meta charset="UTF-8" />
<meta name="viewport" content="width=device-width, initial-scale=1" />
<link rel="stylesheet" href="<c:url value='/resources/css/style.css'/>" />
<!-- 공통 헤더 -->
<jsp:include page="/WEB-INF/views/include/header.jsp" />


<c:if test="${empty sessionScope.sessionId}">
  <script>
    alert("로그인 후 글쓰기 가능합니다.");
    location.href = "<c:url value='/login'/>";
  </script>
</c:if>

<div class="container">
  <h2 class="form-title">게시판 글쓰기</h2>

  <form action="bWriteOk" method="post" class="form-card">
    <div class="form-row">
      <label>글 제목</label>
      <input type="text" name="btitle" class="input" required>
    </div>

    <div class="form-row">
      <label>글 내용</label>
      <textarea name="bcontent" rows="10" class="input" required></textarea>
    </div>

    <div class="form-row">
      <label>글쓴이</label>
      <input type="text" name="bwriter" value="${sessionScope.sessionId}" class="input" readonly>
    </div>

    <div class="form-actions">
      <input type="submit" value="글쓰기" class="btn btn-primary">
      <a href="<c:url value='/board/bList'/>" class="btn">목록</a>
    </div>
  </form>
</div>

<!-- 공통 푸터 -->
<jsp:include page="/WEB-INF/views/include/footer.jsp" />
