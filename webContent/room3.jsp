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
    
    
	
	
	<div id="detail">
		<div>
			<img class="img" src="image/room3_1.PNG" style="display : inline;" width=310px height=270px/>
			<img class="img" src="image/room3_2.PNG" style="display : inline;" width=310px height=270px/>
			<img class="img" src="image/room3_3.PNG" style="display : inline;" width=310px height=270px/>
			<img class="img" src="image/room3_4.PNG" style="display : inline;" width=310px height=270px/>
			<img class="img" src="image/room3.png" style="display : inline;" width=310px height=270px/>
			<img class="img" src="image/room3_5.PNG" style="display : inline;" width=310px height=270px/>
			<img class="img" src="image/room3_6.PNG" style="display : inline;" width=310px height=270px/>
			<img class="img" src="image/room3_7.PNG" style="display : inline;" width=310px height=270px/>
			<img class="img" src="image/room3_8.PNG" style="display : inline;" width=310px height=270px/>
			<br/>
		</div>
		<div id="dr1">
			<p>넓은 벽면 정면 창으로 아름다운 북한강을 바라보게 되는 넓은 공간을 가지고 있으며 복층구조에 오픈된 강전망의 월풀 스파 욕조로 피로를 풀 수 있습니다. 
			심플한 레드 컬러를 포인트로 하고 있습니다.<br/><br/></p>			
			<hr><br/>
			<h3>Style</h3>
			<p>Duplex rooms 25평 / 기준인원 2인 / 최대인원 3인</p><br/>
			<h3>Rooms Rates</h3>
			<p>비수기 평일: 17만원	비수기 금요일: 19만원	비수기 주말: 25만원<br/>
			성수기 평일: 19만원	성수기 금요일: 21만원	성수기 주말: 27만원</p><br/>
			<h3>Details</h3>
			<p>강전망 월풀 욕조(1600*840*570), 42 인치 Pdp, Olleh TV, 벽난로,  쇼파, 카우치쇼파배드 1개, 씽크, 전기쿡탑,
			냉장고, 전자레인지, 토스터, 전기밥솥, 냄비, 후라이팬, 식기, 수저, 주방기기, 전기포트, 와인잔, 샴푸, 린스, 치약, 칫솔, 바디샤워, 타올, 
			샤워스폰지, 헤어드라이어, AIR-Conditioner, 제습공기청정기, 우쿠렐레</p>
		</div>
	</div>
    
    
    
    
    
</body>
</html>