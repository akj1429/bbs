<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
<%@ page session="false" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<html>
<head>
	<title>Home</title>
	 <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
	<script type="text/javascript">
		$(document).ready(function(){
			$('#btnWrite').click(function(){
				document.location.href="writeBoard.do";
			});
			
			
		});
	</script>
</head>
	<jsp:include page="ScriptCss.jsp"/>
<body>   
<div class="container">
	<div class="board-top">
		<h1>
			GitJunBoard!
		</h1>
		<div class="board-login">
			<input type="button" id="btnLogin" value="로그인">
		</div>
	</div>
	<br>
	<button type="button" class="btn btn-primary" id="btnWrite" >글쓰기</button>
</div>
	<br> 
<div class="container">
	<table id="dataTbl" class="table table-striped table-hover">
		<tr>
			<td>번호</td>
			<td>제목</td>
			<td>글쓴이</td>
			<td>작성시간</td>
			<td>조회수</td>
		<tr> 
			<c:forEach var="row" items="${boardList}">
				<tr> 
					<td>${row.bno}</td> 
					<td><a href="boardDetail.do?bno=${row.bno}"> ${row.title}</a></td>
					<td>${row.writer}</td>
					<td>
						<fmt:formatDate value="${row.regdate}" pattern="MM-dd HH::mm"/>
					</td>
					<td>${row.viewcnt}</td>
				</tr>
			</c:forEach>
	</table> 
</div>

<form name="frm" action="searchList.do" method="get">
	<div class="container">
		<select class="selectSearch">
			<option value="title" id="sctTitle"><c:if test="${board.type eq 'title'}">selected="selected"</c:if> 제목</option>
			<option value="writer" id="sctWriter"><c:if test="${board.type eq 'writer'}">selected="selected"</c:if>작성자</option>
		</select>
			<input class="selectSearch" type="text" name="search" id="search" value="" >
			<input type="button" id="btnSearch" value="검색">
	</div>
</form>

</body>
</html>
