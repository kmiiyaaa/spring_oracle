<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	게시판 글목록
	<hr>
	<table border="1">
		<tr>
			<th>번호</th>
			<th>제목</th>
			<th>아이디</th>
			<th>글쓴이</th>
			<th>조회수</th>
			<th>등록일</th>
			<th>삭제</th>
		</tr>
		
		<c:forEach items="${boardList} var="board" varstatus="status">
		<tr>
			<td>${board.bnum }</td>
			<td>${board.btitle }</td>
			<td>${board.bwriter }</td>
			<td>${board.memberDto.membername }</td>
			<td>${board.hit }</td>
			<td>${board.bdate }</td>
			<td>
				<input type="button" value="삭제" onclick="javascript:window.location.href='boardDelete?bnum=${board.bnum}'">
			</td>
		</tr>
		</c:forEach>
	</table>
	<hr>
	<input type="button" value="글쓰기" onclick="javascript:window.location.href='bwrite'">

</body>
</html>