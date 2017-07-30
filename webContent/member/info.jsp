<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
    <%@ page import="my.member.MemberDao, my.member.MemberVo" %>
    <%
     MemberDao dao = new MemberDao();
     String id = (String)session.getAttribute("id");
     MemberVo vo = dao.selectMember(id);
    %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<title>Insert title here</title>
<style type="text/css">
b{
 color:#0054FF;
}
</style>
</head>
<body>
<p align="center">
<table width="900" height="650" style="margin-left: 190px;">
  <tr>
   <td align="center" valign="top" colspan="2">
   <br>
   <p align="left"  style="padding-left:160px">
   <b color="white">내 정보보기</b>
   <br><hr>
   <br><br>
   </td>
  </tr>
  <tr>
   <td width="80" bgcolor="#CEF279">
   <b>ID : </b>
   </td>
   <td><%=vo.getId()%>
   </td>
  </tr>
  <tr>
   <td bgcolor="#CEF279">
   <b>이름 : </b>
   </td>
   <td>
   <%=vo.getName()%>
   </td>
  </tr>
  <tr>
   <td bgcolor="#CEF279">
   <b>이메일 : </b>
   </td>
   <td>
   <%=vo.getEmail1()%>@<%=vo.getEmail2() %>
   </td>
  </tr>
  <tr>
   <%if(vo.getSent().equals("ok")){ %>
   <td bgcolor="#CEF279"><b>수신 여부 : </b></td><td>수신함</td></tr>
   <%}else{ %>
   <td bgcolor="#CEF279"><b>수신 여부 : </b></td><td>수신안함</td></tr>
   <%} %>
  <tr>
   <td bgcolor="#CEF279">
   <b>휴대폰 : </b>
   </td>
   <td>
   <%=vo.getPh1() %>
     - <%=vo.getPh2() %> -
      <%=vo.getPh3() %>
   </td>
  </tr>
  <tr>
   <td bgcolor="#CEF279">
   <b>성별 : </b>
   </td>
   <td>
   <%if(vo.getGender().equals("남자")){ %>
   남자
   <%}else{ %>
   여자
   <%} %>
   </td>
  </tr>
  <tr>
   <td bgcolor="#CEF279">
   <b>생년월일 : </b>
   </td>
   <td>
   <%=vo.getBirth1() %>년&nbsp;
     <%=vo.getBirth2() %>월&nbsp;
     <%=vo.getBirth3() %>일
   </td>
  </tr>
  <tr>
   <td bgcolor="#CEF279">
   <b>주소 : </b>
   </td>
   <td>
   <%=vo.getAddress() %>
   </td>
  </tr>
  <tr>
   <td align="center" colspan="2">
   <hr><br>
    <img src="image/updatebtn.png" width="100px" height="60px" onclick="javascript:location.href='ready/readyupdate.jsp'">
   </td>
  </tr>
 </table>
 </p>
</body>
</html>

