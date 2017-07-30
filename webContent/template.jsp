<%@ page language="java" contentType="text/html; charset=utf-8"
 pageEncoding="utf-8"%>
 <%
 String top = (String)request.getAttribute("top");
 String left = (String)request.getAttribute("left");
 String right = (String)request.getAttribute("right");
 String bottom = (String)request.getAttribute("bottom");
 %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01
 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<title>안녕하세요 그린힐입니다.^^</title>
</head>
<body>
<table width="1400" height="650">
  <tr>
   <td colspan="2" width="100%" height="15%">
    <jsp:include page="<%=top %>"/>
   </td>
  </tr>
  <tr>
   <td width="20%" height="70%">
   <jsp:include page="<%=left%>"/>
   </td>
   <td width="80%" height="70%">
   <jsp:include page="<%=right%>"/>
   </td>
  </tr>
  <tr>
   <td colspan="2" width="100%" height="15%">
   <jsp:include page="<%=bottom %>"/>
   
   </td>
  </tr>
 </table>
</body>
</html>