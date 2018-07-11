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
</head>
	<jsp:include page="ScriptCss.jsp"/>
<body>

<h2>게시글</h2>
	<form name="frm" method="post">
		<div>
			작성일자 : <fmt:formatDate value="${dto.regdate}" pattern="yyyy-MM-dd HH:mm"/>
		</div>
		<div>
			조회수 : ${dto.viewcnt}
		</div>
		<div>
			제목 <input name="title" id="title" size="80" value="${dto.title }" placeholder="제목입력">
		</div>
		<div>
			내용 <textarea name="content" id="content" rows="4" cols="80" placeholder="내용입력">${dto.content }</textarea>
		</div>
		<div>
			작성자 : <input name="writer" id="writer" value="${dto.writer }" placeholder="이름 입력">
		</div>
		
		<button type="button" id="btnUpdate">수정</button>
		<button type="button" id="btnDelete">삭제</button>
	</form>
	
</body>
</html>
