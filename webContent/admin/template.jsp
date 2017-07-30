<%@ page language="java" contentType="text/html; charset=utf-8"
 pageEncoding="utf-8"%>
<%
 String top = (String)request.getAttribute("top");
 String center = (String)request.getAttribute("center");
 String bottom = (String)request.getAttribute("bottom"); 
%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<% String id = (String)session.getAttribute("id");
if(!id.equals("root")){ %>
<script type="text/javascript">
 alert('관리자만 접근할 수 있습니다.');
 history.go(-1);
</script>
<%}%>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<title>관리자 페이지</title>
</head>
<body>
<h1>관리자 페이지입니다.</h1><br>
<table width="1400" height="650">
  <tr>
   <td width="100%" height="15%">
    <jsp:include page="<%=top %>"/>
   </td>
  </tr>
  <tr>
   <td height="500%" valign="top">
    <jsp:include page="<%=center %>"/>
   </td>
  </tr>
  <tr>
   <td height="15%">
   <jsp:include page="<%=bottom %>"/>
   </td>
  </tr>
 </table>
</body>
</html>