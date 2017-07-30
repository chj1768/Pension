<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
    <title>잘되겠조</title>
    <link href='http://fonts.googleapis.com/css?family=Henny+Penny' rel='stylesheet' type='text/css'>
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
                 <%if(session.getAttribute("id")==null){ %>
                <li><a href="index.jsp">Home</a></li>
                <li><a href="log/loginForm.jsp">Login</a></li>
                <li><a href="member/regFormImpl.jsp">Join</a></li>
                <li><a href="log/logoutForm.jsp">MyPage</a></li>
                <%}else{ %>
                <li><a href="log/logoutForm.jsp">Home</a></li>
                <li><a href="index.jsp">Logout</a></li>
                <li><a href="member/template.jsp">MyPage</a></li> 
                <%} %>
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
						<li><a href="board/list.jsp">후기</a></li>
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
    
    <aside id="aside_left">
		<%if(session.getAttribute("id")==null) {%>
		<center>
		비회원 님<br />
		환영합니다^^<br />
		</center>
		<%} else{ %>
		<center>
		<%=session.getAttribute("id") %>님<br />
		환영합니다^^<br />
		<a href="logoutProc.jsp"><img src="log/image/logout.png" width="90px" height="40px" border="0"></a>
 		<br />
		<a href="member/template.jsp">내 정보보기</a> </td>
		</center>
		<%} %>
	</aside>

 	<footer id="main_footer"> 	
        <h3>숙명여자대학교 컴퓨터과학부 잘되겠죠 : 1312971 허예은 / 1313544 최현지 / 1312014 안주림</h3>
    </footer>
    
    
	
	
	<div id="tour">
		<p>
			<img id="tourname" src="image/tour3.png" width='270' height='130' />
			<br/>
		</p>			
		<center>
		<img id="tourimg" src="image/tour3_1.PNG" width='400' height='300'/>
		<img id="tourimg" src="image/tour3_2.PNG" width='400' height='300'/>
		</center>
		<br/>
		<div id="tourdetail">
			<center><span style="color:#CE723D;"><h3>펜션에서 차량으로 10분 거리</h3></span>
			<p><br/>주소 : 강원도 춘천시 남산면 방하리 198<br/>
			전화번호 : 031-580-8114<br/><br/></center>
			북한강에 있는 강섬으로서 총 면적은 14여 만 평에 이른다.<br/>
			원래는 홍수 때에만 섬으로 고립되었으나, 청평댐의 건설로 완전한 섬을 이루게 되었다.<br/>
			남이 장군의 묘소가 있는 것에 연유하여 남이섬이라 부르게 되었다.<br/>
			넓은 잔디밭이 전개되어 있고 둘레에 밤나무숲이 무성하다.<br/>
			서울과 가까워 많은 관광객이 찾아든다.<br/>
			백자작나무길, 잣나무길, 메타 세콰이어길 등 운치있는 숲길이 명소이다. 드라마 겨울연가의 촬영장소로 알려져 있다.
			</p>			
		</div>
	</div>
    
    
    
    
    
</body>
</html>