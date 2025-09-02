<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>   
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %> 
<!DOCTYPE html>
<html lang="ko">
<head>
  <meta charset="UTF-8">
  <title>심플 게시판</title>
  <link rel="stylesheet" href="resources/css/board.css">
</head>
<body>

  <div class="board-container">
    <h2>📋 자유 게시판</h2>

  <table border="1" cellspacing="0" cellpadding="0">
		<tr>
			<th>번호</th>
			<th>제목</th>
			<th>아이디</th>
			<th>글쓴이</th>
			<th>조회수</th>
			<th>등록일</th>
			<th>삭제</th>
		</tr>
		
		<c:forEach items="${boardList }" var="board" varStatus="status">
		<tr>
			<td>${boardCount - status.index }</td>
			<td>
			<a href="contentView?bnum=${board.bnum}">${board.btitle }</a>
			</td>
			<td>${board.bwriter }</td>
			<td>${board.memberDto.membername }</td>
			<td>${board.bhit }</td>
			<td>				
				${board.bdate }			
			</td>
			<td>
				<input type="button" value="삭제" onclick="javascript:window.location.href='boarddelete?bnum=${board.bnum}'">
			</td>
		</tr>
		</c:forEach>
		
		<input type="button" value="글쓰기" onclick="javascript:window.location.href='bwrite'">

    <!-- 페이징 -->
    <div class="pagination">
      <a href="#" class="first">«</a>
      <a href="#" class="prev">‹</a>
      <a href="#" class="page active">1</a>
      <a href="#" class="page">2</a>
      <a href="#" class="page">3</a>
      <a href="#" class="page">4</a>
      <a href="#" class="page">5</a>
      <a href="#" class="next">›</a>
      <a href="#" class="last">»</a>
    </div>
  </div>

</body>
</html>