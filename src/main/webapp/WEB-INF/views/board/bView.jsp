<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html lang="ko">
<meta charset="UTF-8" />
<meta name="viewport" content="width=device-width, initial-scale=1" />
<link rel="stylesheet" href="<c:url value='/resources/css/style.css'/>" />
<!-- 공통 헤더 -->
<jsp:include page="/WEB-INF/views/include/header.jsp" />


<div class="container">
  <h2 class="form-title">글 상세보기</h2>

  <div class="board-view-card">
    <c:choose>

      <c:when test="${not empty sessionScope.sessionId and sessionScope.sessionId eq boardDto.bwriter}">
        <form action="boardModify" method="post" class="form">
          <input type="hidden" name="bnum" value="${boardDto.bnum}">

          <div class="form-row">
            <label>글 제목</label>
            <input type="text" class="input" name="btitle" value="${boardDto.btitle}">
          </div>

          <div class="form-row">
            <label>글 내용</label>
            <textarea class="input" rows="10" name="bcontent">${boardDto.bcontent}</textarea>
          </div>

          <div class="form-row">
            <label>글 작성자 아이디</label>
            <div>${boardDto.bwriter}</div>
          </div>

          <div class="form-row">
            <label>글 조회수</label>
            <div>${boardDto.bhit}</div>
          </div>

          <div class="form-row">
            <label>글 등록일</label>
            <div>${boardDto.bdate}</div>
          </div>

          <div class="form-actions">
            <input type="submit" value="수정" class="btn btn-primary">
            <a href="<c:url value='/board/bList'/>" class="btn">목록</a>
            <a href="<c:url value='/board/bDelete?bnum=${boardDto.bnum}'/>" class="btn">삭제</a>
          </div>
        </form>
      </c:when>

      <c:otherwise>
        <div class="form-row">
          <label>글 제목</label>
          <input type="text" class="input" name="btitle" value="${boardDto.btitle}" readonly>
        </div>

        <div class="form-row">
          <label>글 내용</label>
          <textarea class="input" rows="10" name="bcontent" readonly>${boardDto.bcontent}</textarea>
        </div>

        <div class="form-row">
          <label>글 작성자 아이디</label>
          <div>${boardDto.bwriter}</div>
        </div>

        <div class="form-row">
          <label>글 조회수</label>
          <div>${boardDto.bhit}</div>
        </div>

        <div class="form-row">
          <label>글 등록일</label>
          <div>${boardDto.bdate}</div>
        </div>

        <div class="form-actions">
          <a href="<c:url value='/board/bList'/>" class="btn">목록</a>
        </div>
      </c:otherwise>
    </c:choose>
  </div>
</div>

<!-- 공통 푸터 -->
<jsp:include page="/WEB-INF/views/include/footer.jsp" />
