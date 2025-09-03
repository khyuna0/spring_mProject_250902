<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html lang="ko">
<head>
  <meta charset="UTF-8" />
  <title>로그인</title>
  <!-- 기본 스타일 + 로그인 전용 스타일 -->
  <link rel="stylesheet" href="<c:url value='/resources/css/style.css'/>" />
</head>
<body>
  <!-- 헤더 -->
  <jsp:include page="/WEB-INF/views/include/header.jsp" />


  <main class="container">
    <section class="login-card">
      <h1 class="login-title">로그인</h1>

      <form action="<c:url value='/loginOk'/>" method="post" class="login-form" novalidate>
        <div class="login-row">
          <label for="memberid">아이디</label>
          <input id="memberid" name="memberid" type="text"
                 class="login-input" required autocomplete="username"
                 placeholder="아이디 입력" />
        </div>

        <div class="login-row">
          <label for="memberpw">비밀번호</label>
          <input id="memberpw" name="memberpw" type="password"
                 class="login-input" required autocomplete="current-password"
                 placeholder="비밀번호 입력" />
        </div>

        <div class="login-actions">
          <button type="submit" class="btn btn-primary">로그인</button>
          <a class="btn btn-outline" href="<c:url value='/'/>">취소</a>
        </div>

        <p class="login-helper">
          계정이 없나요?
          <a href="<c:url value='/joinForm'/>">회원가입</a>
        </p>
      </form>
    </section>
  </main>

  <!-- 푸터 -->
<jsp:include page="/WEB-INF/views/include/footer.jsp" />
</body>
</html>
