<%@ page language="java" contentType="text/html; charset=utf-8"
pageEncoding="utf-8"%>
<%
	session.invalidate();


request.setAttribute("top", "top.jsp");

/*else{
request.setAttribute("top", "/log/logoutForm.jsp");
}*/
if(request.getAttribute("left")==null){
request.setAttribute("left", "left.jsp");
}
if(request.getAttribute("right")==null){
request.setAttribute("right", "/right.jsp");
}
request.setAttribute("bottom", "/bottom.jsp");
%>
<!-- CSS 파일 링크 코드 삽입 -->
<link href="websys.css" rel="stylesheet" />
<jsp:forward page="template.jsp"/>
