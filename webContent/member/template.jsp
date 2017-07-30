<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<%
 String memberBottom = (String)request.getAttribute("memberBottom");
 if(memberBottom==null){
  request.setAttribute("memberBottom", "memberView.jsp");
  memberBottom = (String)request.getAttribute("memberBottom");
 }
%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<style type="text/css">
a:LINK {
 text-decoration:none;
 color: #ffffff;
}
a:HOVER {
 text-decoration:none;
 color: #ffffff;
}
a:VISITED {
 text-decoration:none;
 color: #ffffff;
}
</style>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<title>마이페이지</title>
</head>
<body>
<table width="100%">
 <tr>
  <td colspan="2" height="30" bgcolor="#47C83E">
   &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<font color="white"><b></b></font>
  </td>
 </tr>
 <tr>
  <td colspan="2" height="30" bgcolor="#5D5D5D" align="center" style="padding-left: 150px;color: white">
  내 아이디 : <%=(String)session.getAttribute("id") %>
  &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
 <a href="../log/logoutForm.jsp">홈으로 이동</a>
  </td>
 </tr>
 <tr>
  <td width="20%" align="center" valign="top">
   <jsp:include page="memberMenu.jsp"/>
  </td>
  <td width="80%" align="center">
   <jsp:include page="<%=memberBottom %>"/>
  </td>
 </tr>
</table>
</body>
</html>
