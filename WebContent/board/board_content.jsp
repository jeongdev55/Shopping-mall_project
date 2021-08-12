<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
   <%@ include file="../include/header.jsp" %>
   <link rel="stylesheet" type="text/css" href="../css/board.css">
    <title>Document</title>
</head>
<body>
<div class="container">
        <div class="content_div">
        <h2 class="main_text">제목: <label>문의합니다.</label></h2>
        
    <table class="content_table">
        <tr>
            <td colspan="2">작성자: <label>홍길동</label></td>
        </tr>
        <tr>
            <td colspan="2">조회수: <label>0</label></td>
        </tr>
        <tr>
            <th class="title">내용</th>
            <td class="table_text"><textarea name="content" class="inputarea" cols="60" rows="10" ></textarea></td>
        </tr>
        <tr>
            <td colspan="2">작성일자: <label>2021-08-09 15:05</label></td>
        </tr>
            <tr class="writer_botton">
                <td colspan="2">
                <input type="button" value="글목록" class="table_button" onclick="location.href='./board_list.jsp'">
                <input type="button" value="수정" class="table_button" onclick="location.href='./board_modify.jsp'">
                <input type="button" value="삭제" class="table_button" onclick="#">
                <input type="button" value="새글쓰기" class="table_button" onclick="location.href='./board_write.jsp'">
            </td>
            </tr>
            
    </table>
    </div>
</div>
    <%@ include file="../include/footer.jsp" %>
  </body>
  
</html>