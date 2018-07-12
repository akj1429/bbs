<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
<script src="http://code.jquery.com/jquery-latest.min.js"></script>
<script type="text/javascript">
	$(document).ready(function(){
		$("#btnSave").click(function(){
			var title = $("#title").val();
            var content = $("#content").val();
            var writer = $("#writer").val();
            if(title == ""){
                alert("제목을 입력하세요");  
                document.form1.title.focus();
                return;
            }
            if(content == ""){ 
                alert("내용을 입력하세요"); 
                document.form1.content.focus();
                return;
            }
            if(writer == ""){
                alert("이름을 입력하세요");
                document.frm.writer.focus();
                return;
            }
			document.frm.submit();
		});//btnSave
	});
</script>
</head>
<body>
	<h2>게시글 작성</h2>
	<form action="insert.do" name="frm" method="post">
		<div>
			제목 <input name="title" id="title" size="80" placeholder="제목입력">
		</div>
		<div>
			내용 <textarea name="content" id="content" rows="4" cols="80" placeholder="내용입력"></textarea>
		</div>
		<div>
			작성자 <textarea name="writer" id="writer" placeholder="작성자 입력"></textarea>
		</div> 
		<button type="button" id="btnSave">확인</button>
		<button type="reset">취소</button>
		<a href="home.do" id="list"><button class="btn btn-primary" >목록으로</button></a>
	</form>
</body>
</html>