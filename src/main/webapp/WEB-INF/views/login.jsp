<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
 <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>회원 로그인</title>
</head>
<body>
	<h2>회원 로그인</h2>
	<hr>
	<form action="loginOk" method="post">
		아이디 :
		비밀번호 :
		<input type="submit" value="로그인">
	</form>
	<c:if test="${not empty error }">
		<h3 style="color:red;">다시 가입란을 작성 해주세요</h3>
	</c:if>

</body>
</html>