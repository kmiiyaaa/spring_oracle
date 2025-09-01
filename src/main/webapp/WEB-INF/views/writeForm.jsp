<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<!--  로그인 하지 않은 경우 login페이지로 강제 이동 -->
	<c:if test="${empty sessionScope.sessionId }">
		<c:redirect url="login" />
	</c:if>

	<h2>게시판글쓰기</h2>
	<hr>
	<form action="bwriteOk">
		글제목 : <input type="text" name="btitle" size="50"><br><br>
		글내용 :<textarea rows="10" cols="30" name="bcontent"></textarea><br><br>
		글쓴이 : <<input type="text" value="sessionScope.sessionId"  name="bwriter" readonly="readonly"><br><br>
		<input type="submit" value="글쓰기">
	</form>
</body>
</html>