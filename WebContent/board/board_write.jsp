<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
   <%@ include file="../include/header.jsp" %>
   <link rel="stylesheet" type="text/css" href="../css/board.css">

<script type="text/javascript">
		function formCheck(){
			if(f.subject.value==""){
				alert("제목을 입력하세요");
				f.subject.focus();
				return false;
			}
			if(f.content.value==""){
				alert("글 내용을 입력하세요");
				f.content.focus();
				return false;
			}
			return true;
		}
</script>
    <title>Document</title>
</head>
<body>
    <div class=" container">
        <h1>게시글 등록</h1>
        <form name="f" action="#" method="post">
        <table class="board_write">
            <tr>
                <th class="title">이름</th>
                <td class="table_text"><input type="text" class="inputtext" size="15"></td>
            </tr>
            <tr>
                <th class="title">제목</th>
                <td class="table_text"><input type="text" name="subject" class="inputtext" placeholder="글제목" size="35"></td>
            </tr>
            <tr>
                <th class="title">내용</th>
                <td class="table_text"><textarea name="content" class="inputarea" cols="60" rows="10" placeholder="게시글 내용을 입력하세요." ></textarea></td>
            </tr>
            <tr class="writer_botton">
                <td colspan="2">
                <input type="button" value="등록" onclick="formCheck()" class="table_button">
                <input type="reset" value="취소" class="table_button">
                <input type="button" value="글목록" class="table_button" onclick="location.href='./board_list.jsp'"></td>
            </tr>
    </table>
</form>
</div>
    <%@ include file="../include/footer.jsp" %>
  </body>
  
</html>