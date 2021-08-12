<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<link rel="stylesheet" type="text/css" href="/jsp_leopard/css/join.css">
<meta charset="UTF-8">
<title>회원가입 완료</title>
 <%@ include file="../include/header.jsp" %>
  </head>
   <body>
   <div class="join__ok">
       <div class="join__ok__top">
            <ul>
            	<li><img src="../images/success.png">
                <li><p>회원가입완료!</p></li>
                <li><p>홍길동님, 레오파드(LEOPARD)의 회원이 되신것을 환영합니다.</p>
                <p>로그인 후 사용해주세요.</p></li>
            </ul>
        </div>
   	<div class="join__ok__button">
        <input type="button" value="로그인 화면으로" id="logingo" onclick="location.href='/jsp_leopard/user/login.jsp'">
        <input type="button" value="메인으로" id="maingo" onclick="location.href='/jsp_leopard/index.jsp'">
   	</div>
   </div>
    <%@ include file="../include/header.jsp" %>
  </body>

  
</html>