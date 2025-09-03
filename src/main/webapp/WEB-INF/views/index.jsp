<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html lang="ko">
<head>
  <meta charset="UTF-8" />
  <meta name="viewport" content="width=device-width, initial-scale=1" />
  <title>카페 키오스크(가칭)</title>
  <!-- 외부 CSS -->
  <link rel="stylesheet" href="<c:url value='/resources/css/style.css'/>" />
</head>
<body>
  <!-- 공통 헤더 -->
<jsp:include page="/WEB-INF/views/include/header.jsp" />


  <main class="container">
    <!-- 히어로 -->
    <section class="hero">
      <h1>카페 키오스크(가칭)</h1>
      <p>손쉬운 주문, 빠른 픽업</p>
      <div class="cta">
        <a class="btn btn-primary" href="<c:url value='/order'/>">주문 시작</a>
        <a class="btn btn-outline" href="<c:url value='/login'/>">로그인</a>
      </div>
    </section>

    <!-- 간단 메뉴 카드 샘플 -->
    <section class="menu-grid" aria-label="대표 메뉴">
      <article class="card">
        <div class="card-thumb" aria-hidden="true"></div>
        <h3>아메리카노</h3>
        <p>진한 에스프레소와 물</p>
        <a class="btn btn-small" href="<c:url value='/order?item=americano'/>">담기</a>
      </article>

      <article class="card">
        <div class="card-thumb" aria-hidden="true"></div>
        <h3>카페라떼</h3>
        <p>부드러운 우유의 밸런스</p>
        <a class="btn btn-small" href="<c:url value='/order?item=latte'/>">담기</a>
      </article>

      <article class="card">
        <div class="card-thumb" aria-hidden="true"></div>
        <h3>크루아상</h3>
        <p>겉바속촉 버터 향</p>
        <a class="btn btn-small" href="<c:url value='/order?item=croissant'/>">담기</a>
      </article>
    </section>
  </main>

  <!-- 공통 푸터(pooter) -->
<jsp:include page="/WEB-INF/views/include/footer.jsp" />
</body>
</html>
