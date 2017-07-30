<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
    <title>잘되겠조</title>
    <link href='http://fonts.googleapis.com/css?family=Henny+Penny' rel='stylesheet' type='text/css'>	
<script type="text/javascript">
function view(x,y,z){
	  newin=window.open('',y,z);
	  newin.document.write("<head><title> View Image</title></head><body background='"+x+"' onclick='self.close()' style='cursor:hand'>");
	 }
</script>
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
    
    
    
    
    
    <div class = "intro">
		<img id="gimage" src="image/intro.png" width='370' height='130' />
		<img class="exterior" src="image/intro_1.JPG"/>
		<div class="int1">
			<p>저희 GreenHill은 지리적으로 가평에 가까이 취치하고 있으며 강원도 춘천류의 깊은 산과 고즈넉한 호반 분위기의 북한 강을 바라볼 수 있도록 자리잡고 있습니다.
			그래서 펜션 내부에 있어도 자연 안에 들어와 있다고 느끼 실 수 있도록 창문을 최대한 크게 살려 자연 풍광을 끌어 오며, 내외장재를 같게 하여 일체감을 주었습니다.<br/><br/></p>
			
			<center><img src="image/intro_2.png" width='600' height='180'/></center>
		</div>
	</div>
    
    
    
    
    
</body>
</html>