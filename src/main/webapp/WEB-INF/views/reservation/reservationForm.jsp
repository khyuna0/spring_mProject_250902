<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html lang="ko">
<head>
  <meta charset="UTF-8" />
  <meta name="viewport" content="width=device-width, initial-scale=1" />
  <link rel="stylesheet" href="<c:url value='/resources/css/style.css'/>" />
  <title>스터디룸 예약</title>
	
	<c:if test="${empty sessionScope.sessionId}">
	  <script>
	    alert("로그인 상태에서만 예약 가능합니다.");
	    location.href = "<c:url value='/login'/>";
	  </script>
	</c:if>
	
  <!-- jQuery UI 달력 -->
  <link rel="stylesheet" href="//code.jquery.com/ui/1.13.2/themes/base/jquery-ui.css">
  <script src="https://code.jquery.com/jquery-3.6.0.min.js"></script>
  <script src="https://code.jquery.com/ui/1.13.2/jquery-ui.js"></script>
</head>
<body>

  <!-- 공통 헤더 -->
  <jsp:include page="/WEB-INF/views/include/header.jsp" />

  <div class="container">
    <h2 class="form-title">스터디룸 예약</h2>

    <form action="reserveOk" method="post" class="form-card">

      <!-- 예약자 아이디 -->
      <div class="form-row">
        <label for="memberid">예약자 아이디</label>
        <input type="text" class="input" id="memberid" name="memberid" value="${sessionScope.sessionId }" readonly="readonly" />
      </div>
	
	<!-- 예약 날짜 -->
	<div class="form-row">
	  <label for="rdate">예약 날짜</label>
	  <input type="text" class="input" id="rdate" name="rdate" required />
	</div>	
	
     <!-- 예약 지점 -->
	<div class="form-row">
	  <label for="rlocation">예약 지점</label>
	  <select id="rlocation" name="rlocation" class="input" required>
	    <option value=""> 지점을 선택하세요 </option>
	    <c:forEach var="loc" items="${locations}">
	      <option value="${loc}" ${loc == param.location ? 'selected' : ''}>${loc}</option>
	    </c:forEach>
	  </select>
	</div>
	
	
	<!-- 예약 호실 -->
	<div class="form-row">
	  <label for="r_room">예약 호실</label>
	  <select id="r_room" name="r_room" class="input" required>
		  <c:choose>
		    <c:when test="${not empty availableRooms}">
		    
		      <c:forEach var="entry" items="${roomsByLocation}" >
			        <c:forEach var="room" items="${entry.value}">
			          <option value="${room}">${room}</option>
			        </c:forEach>
     		 </c:forEach>
     		 
		    </c:when>  
		    <c:otherwise>
		      <option value="">예약 가능한 스터디룸이 없습니다</option>
		    </c:otherwise>
		  </c:choose>
		</select>
	</div>
	
	<!-- 예약 시간 -->
	<div class="form-row">
	  <label for="rtime">예약 시간</label>
	  <select id="rtime" name="rtime" class="input" required>
	  <c:choose>
	    <c:when test="${not empty availableTimes}">
	      <c:forEach var="time" items="${availableTimes}">
	        <option value="${time}">${time}</option>
	      </c:forEach>
	    </c:when>
	    <c:otherwise>
	      <option value="">예약 가능한 시간이 없습니다</option>
	    </c:otherwise>
	  </c:choose>
	</select>

	</div>

      <!-- 버튼 -->
      <div class="form-actions">
        <button type="submit" class="btn btn-primary">예약하기</button>
        <a href="<c:url value='/index'/>" class="btn">메인으로</a>
      </div>
    </form>
  </div>

  <!-- 공통 푸터 -->
  <jsp:include page="/WEB-INF/views/include/footer.jsp" />

  <script>
  // 달력 적용 (디자인만)
  $(function() {
    $("#rdate").datepicker({
      dateFormat: "yy-mm-dd",
      minDate: 0
    });
  });
	</script>

</body>
</html>
