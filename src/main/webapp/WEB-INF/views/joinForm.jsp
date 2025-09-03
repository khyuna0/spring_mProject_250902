<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html lang="ko">
<head>
  <meta charset="UTF-8" />
  <title>회원가입</title>
  <link rel="stylesheet" href="<c:url value='/resources/css/style.css'/>" />
</head>
<body>
  <!-- 헤더 -->
<jsp:include page="/WEB-INF/views/include/header.jsp" />


  <main class="container">
    <section class="form-card">
      <h1 class="form-title">회원가입</h1>

      <form action="joinOk" method="post" class="form" novalidate>
        <div class="form-row">
          <label for="memberid">아이디</label>
          <input id="memberid" name="memberid" type="text"
                 class="input" required maxlength="20"
                 autocomplete="username" placeholder="영문/숫자 4~20자" />
        </div>

        <div class="form-row">
          <label for="memberpw">비밀번호</label>
          <input id="memberpw" name="memberpw" type="password"
                 class="input" required minlength="6"
                 autocomplete="new-password" placeholder="6자 이상" />
        </div>

        <div class="form-row">
          <label for="membername">이름</label>
          <input id="membername" name="membername" type="text"
                 class="input" required placeholder="실명 입력" />
        </div>

        <div class="form-row">
          <label for="memberage">나이</label>
          <input id="memberage" name="memberage" type="number"
                 class="input" min="0" max="120" step="1" required placeholder="예: 23" />
        </div>

        <div class="form-row">
          <label for="memberemail">이메일</label>
          <input id="memberemail" name="memberemail" type="email"
                 class="input" required autocomplete="email" placeholder="name@example.com" />
        </div>

        <div class="form-actions">
          <button type="submit" class="btn btn-primary">회원가입</button>
          <a class="btn btn-outline" href="<c:url value='/'/>">취소</a>
        </div>
      </form>
    </section>
  </main>

  <!-- 푸터 -->
<jsp:include page="/WEB-INF/views/include/footer.jsp" />
</body>
</html>
