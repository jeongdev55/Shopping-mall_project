<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<html>
<head>
<link rel="stylesheet" type="text/css" href="../css/board.css">  
</head>
<body>
	<%@ include file="../include/header.jsp" %>
	<div class="container">	
	<h1>문의 게시판</h1>
		<table class="board_table">
		<tr class="table_top">
			<th class="top1">글 번호</th>
			<th class="top2">작성자</th>
			<th class="top3">제목</th>
			<th class="top4">날짜</th>
			<th class="top5">조회수</th>		
		</tr>
        
		<tr class="table_content">
			<td>01</td>
			<td><a href="./board_content.jsp">홍길동</a></td>
			<td>문의합니다.</td>
			<td>2021-08-09 15:05</td>
			<td>0</td>			
		</tr>
		
		<tr class="table_content">
			<td>01</td>
			<td>홍길동</td>
			<td>문의합니다.</td>
			<td>2021-08-09 15:05</td>
			<td>0</td>			
		</tr>
		
		<tr class="table_content">
			<td>01</td>
			<td>홍길동</td>
			<td>문의합니다.</td>
			<td>2021-08-09 15:05</td>
			<td>0</td>			
		</tr>
	
		<tr class="table_content">
			<td>01</td>
			<td>홍길동</td>
			<td>문의합니다.</td>
			<td>2021-08-09 15:05</td>
			<td>0</td>			
		</tr>
		
		<tr class="table_content">
			<td>01</td>
			<td>홍길동</td>
			<td>문의합니다.</td>
			<td>2021-08-09 15:05</td>
			<td>0</td>			
		</tr>
        <tr>
            <td colspan="5">
                <form action="#" class="table_form" >
                  <div class="">
                    <select name="kind" class = "table_select">
                        <option value = "title">제목</option>
                        <option value = "content">내용</option>
                        <option value = "writer">이름</option>								
                    </select>
                    <input type="text" name="search" placeholder=" 검색" class="table_search" >
                      <input type="submit" value="검색" class="table_button table_search">
                    <input type="button" value="글 작성" class="table_button table_search" onclick="location.href='./board_write.jsp'">
                  </div>
                </form> 
            </td>
        </tr>
		</table>
	</div>
	
    <%@ include file="../include/footer.jsp" %>     
</body>
</html>