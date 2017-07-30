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
			<img id="tourname" src="image/tour2.png" width='270' height='130' />
			<br/>
		</p>			
		<center>
		<img id="tourimg" src="image/tour2_1.jpg" width='400' height='300'/>
		<img id="tourimg" src="image/tour2_2.PNG" width='400' height='300'/>
		</center>
		<br/>
		<div id="tourdetail">
			<center><span style="color:#CE723D;"><h3>펜션에서 차량으로 9분 거리</h3></span>
			<p><br/>주소 : 경기도 가평군 가평읍 답전리 1-1<br/>
			전화번호 : 031-582-3002<br/><br/></center>
			자라섬은 북한강에 떠 있는 하나의 섬으로 약 20여만평의 크기이며 섬 가장자리로는 큰 돌과 잔자갈로 이루어져 있고 중앙 부위는 모래와 흙으로 뒤덮여 있다.<br/>
			중앙부위에는 큰 미류나무들과 버들가지 등 자연 수목원이 있으며 강가 수변도로와 해바라기 광장, 들꽃광장, 코스모스 등 수많은 꽃과 나무로 이루어진 자연 휴양지이다.<br/>
			자라섬은 마치 생긴 모양이 자라의 모양을 하고 있으며 비가 오면 물이 불어 섬이 약간 잠기었다가 나타난다 하여 붙여진 이름이기도 하다. 
			또한 자라섬은 가평군에서 지명 위원회까지 열어 지었을 정도로 유래 깊은 이름이다.<br/>
			</p>			
		</div>
	</div>
    
    
    
    
    
</body>
</html>