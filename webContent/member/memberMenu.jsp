<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<% String id = (String)session.getAttribute("id"); %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<title>메뉴</title>
<style type="text/css">
a:link {
 text-decoration: none;
 color: #000000;
}
a:visited {
 text-decoration: none;
 color: #000000;
}
a:hover {
 text-decoration: none;
 color: #000000;
}
td{
 padding-left: 10px;
 height:30px;
}
</style>
</head>
<body>
<table>
 <tr>
  <td  align="center">
   <a href="readyinfo.jsp">내 정보보기</a>
  </td>
 </tr>
 <% if(id.equals("root")){ %>
 <tr>
  <td align="center">
   <a href="../admin/adminPage.jsp">관리자 페이지</a>
  </td>
 </tr>
 <% }else{ %>
  <tr>
  <td align="center">
   <a href="readydel.jsp">회원 탈퇴</a>
  </td>
 </tr>
 <%} %>
</table>
</body>
</html>