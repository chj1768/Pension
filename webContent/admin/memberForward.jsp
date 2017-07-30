<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01
Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<%
 request.setAttribute("top", "menu.jsp");
 request.setAttribute("center","memberlist.jsp");
 request.setAttribute("bottom", "bottom.jsp");
%>
<jsp:forward page="template.jsp"/>