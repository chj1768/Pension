<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<title>예약하러 가기</title>
</head>
<body>
<% String id = (String)session.getAttribute("id");
	if(id==null){ %>
<script>
	alert('회원만 예약할 수 있습니다. 로그인 해주세요.');
	history.go(-1);
</script>
<% }else {%>
<center><a href="reservation/calendar.html">예약하러 가기</a></center>
<%} %>
</body>
</html>