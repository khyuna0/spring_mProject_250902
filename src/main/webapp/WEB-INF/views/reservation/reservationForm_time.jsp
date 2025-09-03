<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<!-- 예약 시간 -->
	<div class="form-row">
	  <label for="rtime">예약 시간</label>
	  <select id="rtime" name="rtime" class="input" required>
	    <c:if test="${not empty availableTimes}">
	      <c:forEach var="time" items="${availableTimes}">
	        <option value="${time}">${time}</option>
	      </c:forEach>
	    </c:if>
	  </select>
	</div>
	
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