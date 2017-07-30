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
    
    
    
    
    
    <div class = "direct">
		<img id="gimage" src="image/direction.png" width='550' height='130' />
		<img class="map"src="image/direction_1.png" width='800' height='400'/>
		<div class = "dir1">
			<h3>*자가용을 이용하실 때</h3>
			<p>- 가평에서 오실 때 - 경강교와 춘성대교를 건너서 직진, 유턴 후 과적검문소를 지나 200미터 직진하시면 됩니다.<br/>
			- 춘천에서 오실 때 - 과적검문소를 지나 200미터 직진하시면 됩니다.</p><br/>
			<h3>*대중교통을 이용하실 때</h3>
			<p>버스 : 춘천행 시외버스를 타시고 약 1시간 40분 가량 오시다가 가평터미널에서 하차하세요. 전화주시면 픽업 운행합니다.<br/>
			전철 : 상봉역(7호선, 중앙선) -> 굴봉산역(55분 소요)</p><br/>
			<h3>*픽업 가능시간</h3>
			<p>최소 하루 전 예약에 의해서 가능<br/>
			pm4:30 : 가평역, pm4:35 : 가평터미널, pm4:40 : 굴봉산역</p><br/>
			<h3>*소요시간</h3>
			<p>가평에서 10분, 춘천역에서 15분, 청평에서 15분</p>
		</div>
	</div>
    
    
    
    
    
</body>
</html>