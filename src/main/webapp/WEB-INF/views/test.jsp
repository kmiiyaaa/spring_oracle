<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<link rel="stylesheet" href="${pageContext.request.contextPath}/resouces/css/test.css"> <!-- css불러오기 -->
<title>외부 파일 불러오기</title>
</head>
<body>
	이미지불러오기
	<hr>
	<img src="${pageContext.request.contextPath}/resources/img/hello.png"> <!-- 이미지 불러오기 -->
	<!-- 이미지나 css앞에 ${pageContext.request.contextPath}/ 붙여서 안전하게 가져온다 -->

</body>
</html>