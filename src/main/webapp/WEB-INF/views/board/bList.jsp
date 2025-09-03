<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html lang="ko">
<meta charset="UTF-8" />
<meta name="viewport" content="width=device-width, initial-scale=1" />
<link rel="stylesheet" href="<c:url value='../resources/css/style.css'/>" />
<!-- 공통 헤더 -->
<jsp:include page="/WEB-INF/views/include/header.jsp" />


<div class="container">
  <h2 class="form-title">글 목록</h2>
  <p>총 글 개수 : ${count}</p>

  <div class="card">
    <table class="board-table">
      <thead>
        <tr>
          <th>번호</th>
          <th>제목</th>
          <th>내용</th>
          <th>작성자</th>
          <th>조회수</th>
          <th>작성일</th>
        </tr>
      </thead>
      <tbody>
      
        <c:forEach items="${boardList}" var="boardList">
          <tr>
            <td>${boardList.rnum}</td>
            <td>
              <a href="<c:url value='/board/bView?bnum=${boardList.bnum}'/>">
                ${boardList.btitle}
              </a>
            </td>
            <td>${boardList.bcontent}</td>
            <td>${boardList.bwriter}</td>
            <td>${boardList.bhit}</td>
            <td>${boardList.bdate}</td>
          </tr>
        </c:forEach>
        
      </tbody>
    </table>
  </div>

  <!-- 페이징 -->
  <div class="pagination">
    <c:if test="${startPage > 0}">
      <a href="<c:url value='/board/bList?page=${startPage-1}'/>">이전</a>
    </c:if>

    <c:forEach var="p" begin="${startPage }" end="${endPage}">
      <a href="<c:url value='/board/bList?page=${p}'/>"
         class="${p == page ? 'active' : ''}">${p}</a>
    </c:forEach>

    <c:if test="${endPage < totalPage}">
      <a href="<c:url value='/board/bList?page=${endPage+1}'/>">다음</a>
    </c:if>
  </div>
</div>

<!-- 공통 푸터 -->
<jsp:include page="/WEB-INF/views/include/footer.jsp" />

