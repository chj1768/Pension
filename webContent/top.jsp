<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<title>Insert title here</title>
<!-- CSS 파일 링크 코드 삽입 -->
<link href="websys.css" rel="stylesheet" />
</head>
<body>
    <header id="main_header">
        <hgroup id="title" align="center">
        
            <p>GreenHill</p>

			<p id="addr">
			&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
			www.greenhill.com</p>
			
        </hgroup>
        
        <nav id="top">
            <ul>
                <li><a href="index.jsp">Home</a></li>
                <li><a href="log/loginForm.jsp">Login</a></li>
                <li><a href="member/regFormImpl.jsp">Join</a></li>
                <li><a href="log/logoutForm.jsp">MyPage</a></li> 
            </ul>
        </nav>
	<div id="menu" >
		<ul>
			<li><a href = "guide.jsp" name="title">사이트안내</a>
				<ul>
					<li style="white-space:nobr;"><a href="intro.jsp">소개의 글</a></li>
					<li><a href="direction.jsp">찾아오시는 길</a></li>
				</ul>
			</li>
			<li><a href="room.jsp">방 소개 및 예약</a>
				<ul>
					<li><a href="room1.jsp">은은한 방</a></li>
					<li><a href="room2.jsp">편안한 방</a></li>
					<li><a href="room3.jsp">최고의 방</a></li>
				</ul>
			</li>
			<li><a href="board/list.jsp">커뮤니티</a>
				<ul>
					<li><a href="board/list.jsp">Q&A</a></li>
				</ul>
			</li>
			<li><a href="tour.jsp">관광지</a>
               <ul>
                  <li><a href="tour1.jsp">엘리시안강촌</a></li>
                  <li><a href="tour2.jsp">자라섬</a></li>
                  <li><a href="tour3.jsp">남이섬</a></li>
               </ul>
            </li>
		</ul>
	</div>
        
	</header>
	
	



   	<hr/>
</body>
</html>