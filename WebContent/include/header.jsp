<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>


	<link rel="stylesheet" type="text/css" href="/jsp_leopard/css/reset.css">
	<link rel="stylesheet" type="text/css" href="/jsp_leopard/css/header.css">

</head>
<body>
      
    <header id="header">
        <div class="top_nav_box">
            <h1 class="logo"><a href="/jsp_leopard/index.jsp"><img src="/jsp_leopard/images/logo2.png" alt=""></a></h1>
            <ul class="top_nav">
                <li class="login">
                	<a href="/jsp_leopard//user/join.jsp">Join</a>
               		<span class="point_event">
						<p class="point_text">2,000P</p>
					</span>
				</li>
                <li><a href="/jsp_leopard/user/login.jsp">Login</a></li>
                <li><a href="#">MYPAGE</a></li>
                <li><a href="#">CART</a></li>
            </ul>
			
            
        </div>
        <h1 class="tit"><a href="/jsp_leopard/index.jsp">LEOPARD</a></h1>
        <div class="gnb_box">
            <nav class="gnb">
            <ul class="left_gnb">
                <li><a href="">신상품</a></li>
                <li><a href="">당일배송</a></li>
                <li><a href="">베스트</a></li>
                <li><a href="">아우터</a></li>
                <li><a href="">상의</a></li>
                <li><a href="">하의</a></li>
                <li><a href="">가방</a></li>
            </ul>
            <ul class="right_gnb">
                <li><a href="/jsp_leopard/board/board_list.jsp">게시판</a></li>
                <li><a href="/jsp_leopard/board/faq.jsp">FAQ</a></li>
                <li><a href="/jsp_leopard/board/sevicenter.jsp">고객센터</a></li>
            </ul>
        </nav>
        </div>
        
    </header>
</body>
</html>