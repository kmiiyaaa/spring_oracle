<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>글 내용 보기</title>
</head>
<body>

	<h2> 글 내용 보기 </h2> <!-- 바로 수정까지 하는 경우  연습만 -->
	<hr>
	<form action="boardModify">
		
		제목 : <input type="text" name="btitle" value="${boardDto.btitle }"><br><br>
		내용 : <textarea rows="10" cols="45" name="bcontent" >${boardDto.bcontent }</textarea><br><br>
		글쓴이 : <input type="text" name="membername" value="${boardDto.memberDto.membername }" readonly="readonly"><br><br>
		조회수 : ${boardDto.bhit }<br><br>
		등록일 : <fmt:formatDate value="${boardDto.bdate }" pattern="yyyy-MM-dd" /><br><br>
		<input type="hidden" name="bnum" value="${boardDto.bnum }">
		<input type="submit" value="수정하기">
		<input type="button" value="글목록" onclick=>

</body>
</html>