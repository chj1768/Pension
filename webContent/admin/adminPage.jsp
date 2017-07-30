<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<%
 request.setAttribute("top", "menu.jsp");
 request.setAttribute("center","center.jsp");
 request.setAttribute("bottom", "bottom.jsp");
%>
<jsp:forward page="template.jsp"/>