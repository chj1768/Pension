<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
  <% request.setCharacterEncoding("UTF-8");%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<title>아이디 찾기</title>
<script type="text/javascript">
function findid(){
document.form1.submit();
}
</script>
<style type="text/css">
td{
 padding-left:10px;
}
</style>
</head>
<body>
<br>
<br>
<br>
<img src="member/image/Findidtitle.png" width="200px" height="80px" style="padding-left: 60px"><br><br>
<br><br>
<p align="center">
<form action="member/FindidProc.jsp" method="post" name="form1">
<table style="padding-left: 60px" width="550">
 <tr>
  <td align="center" bgcolor="gray">
   내 정보로 찾기
  </td>
 </tr>
 <tr>
  <td align="left">
  <br>
   이름 : <input type="text" name="name" size="15" maxlength="20">
  </td>
 </tr>
 <tr>
  <td align="left">
  <br>
 이메일 : <input type="text" name="email1" size="15" maxlength="20"> @ <input type="text" name="email2" size="15" maxlength="20">
  </td>
 </tr>
 <tr>
 
  <td align="center">
   
   <img src="member/image/Findid.png"width="90px" height="50px"  onclick="findid()">
  </td>
 </tr>
</table>
</form>
</body>
</html>