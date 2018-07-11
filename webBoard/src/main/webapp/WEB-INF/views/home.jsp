<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
<%@ page session="false" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<html>
<head>
	<title>Home</title>
	 <script src="http://code.jquery.com/jquery-latest.min.js"></script>
	<script>
		$(document).ready(function(){
			$("#btnWrite").click(function(){
				//글작성 페이지 이동
				location.href="writeBoard.do"
			}); 
			
			$("#boardTitle").click(function(){
				var url = ${row.bno};
				alert(url);
			});
		});
	</script>
	
</head>
	<jsp:include page="ScriptCss.jsp"/>
<body>
<div class="container">
	<h1>
		GitJunBoard!
	</h1>
	<button type="button" class="btn btn-primary" id="btnWrite">글쓰기</button>
	<label></label> 
</div>
<div class="container">
<form id="frmDetail">
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
</form>
</div>

</body>
</html>
