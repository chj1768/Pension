<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
 <%@ page import="java.util.*" %>
<% String id = (String)session.getAttribute("id"); 
	if(id==null){		
%> 
<script>
 alert("회원만 이용 가능합니다.로그인을 해주세요.");
 history.go(-1);
</script>
 <%} else{%>
<!DOCTYPE html>
<html>
<head>
    <title>회원님 안녕하세요</title>
    <!-- 본문에서는 다루지 않은 코드입니다. 부록 A에서 살펴보는 플러그입니다. -->
    <!-- 구 버전의 인터넷 익스플로러에서 HTML5 태그를 인식하게 합니다. -->
    <!--[if lt IE 9]>
    <script src="http://html5shiv.googlecode.com/svn/trunk/html5.js"></script>
    <![endif]-->
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
            
                <li><a href="logoutForm.jsp">Home</a></li>
                <li><a href="../index.jsp">Logout</a></li>
                <li><a href="../member/template.jsp">MyPage</a></li> 
            </ul>
        </nav>
	<div id="menu" >
		<ul>
			<li><a href = "../guide.jsp" name="title">사이트안내</a>
				<ul>
					<li style="white-space:nobr;"><a href="../intro.jsp">소개의 글</a></li>
					<li><a href="../direction.jsp">찾아오시는 길</a></li>
				</ul>
			</li>
			<li><a href="../room.jsp">방소개</a>
				<ul>
					<li><a href="../room1.jsp">은은한 방</a></li>
					<li><a href="../room2.jsp">편안한 방</a></li>
					<li><a href="../room3.jsp">최고의 방</a></li>
				</ul>
			</li>
			<li><a href="../board/list.jsp">커뮤니티</a>
				<ul>
					<li><a href="../board/list.jsp">Q&A</a></li>
				</ul>
			</li>
			<li><a href="../tour.jsp">관광지</a>
				<ul>
					<li><a href="../tour1.jsp">엘리시안강촌</a></li>
					<li><a href="../tour2.jsp">자라섬</a></li>
					<li><a href="../tour3.jsp">남이섬</a></li>
				</ul>
			</li>
		</ul>
	</div>
        
	</header>
	
	



   	<hr/>
    <aside id="aside_left">
    	<center>
		<%=session.getAttribute("id") %>님<br />
		환영합니다^^<br />
		<a href="logoutProc.jsp"><img src="image/logout.png" width="90px" height="40px" border="0"></a>
 		<br />
		<a href="../member/template.jsp">내 정보보기</a> </td>
		</center>
	</aside>
 
    <footer id="main_footer">
        <h3>  컴퓨터과학부 잘되겠죠 : 1312971 허예은 / 1313544 최현지 / 1312014 안주림</h3>
    </footer>
</body>
</html>
<%} %>
