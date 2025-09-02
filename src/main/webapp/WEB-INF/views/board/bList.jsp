<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<h2>간이 글 리스트</h2>
	<hr>
	<c:forEach items="${boardList }" var="boardList" >
		${boardList.rnum }/${boardList.btitle }/${boardList.bcontent }/${boardList.bwriter }/${boardList.bhit } /${boardList.bdate }<br><br>
	</c:forEach>
</body>
</html>