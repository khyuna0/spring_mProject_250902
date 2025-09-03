<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html lang="ko">
<head>
  <meta charset="UTF-8">
  <title>마이페이지</title>
  <link rel="stylesheet" href="<c:url value='/resources/css/style.css'/>" />
</head>
<body>
  <!-- 헤더 -->
  <jsp:include page="/WEB-INF/views/include/header.jsp" />


  <main class="container">
    <section class="form-card">
      <h1 class="form-title">마이페이지</h1>

      <form action="<c:url value='/modifyOk'/>" method="post" class="form" novalidate>
        <div class="form-row">
          <label for="memberid">아이디</label>
          <input id="memberid" type="text" name="memberid" class="input"
                 value="${memberDto.memberid}" readonly="readonly" />
        </div>

        <div class="form-row">
          <label for="memberpw">비밀번호</label>
          <input id="memberpw" type="password" name="memberpw" class="input"
                 value="${memberDto.memberpw}" />
        </div>

        <div class="form-row">
          <label for="membername">이름</label>
          <input id="membername" type="text" name="membername" class="input"
                 value="${memberDto.membername}" />
        </div>

        <div class="form-row">
          <label for="memberage">나이</label>
          <input id="memberage" type="text" name="memberage" class="input"
                 value="${memberDto.memberage}" />
        </div>

        <div class="form-row">
          <label for="memberemail">이메일</label>
          <input id="memberemail" type="email" name="memberemail" class="input"
                 value="${memberDto.memberemail}" readonly="readonly" />
        </div>
        
         <div class="form-row">
          <label for="memberdate">가입 날짜</label>
          <input id="memberdate" type="text" name="memberdate" class="input"
                 value="${memberDto.memberdate}" readonly="readonly" />
        </div>

        <div class="form-actions">
          <button type="submit" class="btn btn-primary">정보 수정</button>
          <a class="btn btn-outline" href="<c:url value='/'/>">취소</a>
        </div>
      </form>
    </section>
  </main>

  <!-- 푸터 -->
<jsp:include page="/WEB-INF/views/include/footer.jsp" />
</body>
</html>
