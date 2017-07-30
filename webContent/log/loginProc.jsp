<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<%@ page import="my.member.MemberDao" %>
 <%
     
     int rst = 0;
     MemberDao dao = new MemberDao();
     request.setCharacterEncoding("utf-8");
     String id = (String)request.getParameter("id");
     String pass = (String)request.getParameter("pass");
     rst = dao.loginCheck(id, pass);
    %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01
 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<title>로그인</title>
</head>
<body>

<%
 if(rst == 2){
  session.setAttribute("id", id);
  session.setAttribute("pass", pass);
session.setMaxInactiveInterval(60*60);
%>
<jsp:forward page="logoutForm.jsp" />

<%  }else if(rst == 1){ %>
<script type="text/javascript">
alert("비밀번호 틀렸습니다");
history.go(-1);
</script>
<%  }else{ %>
<script type="text/javascript">
alert("존재하지 않는 계정입니다.");
history.go(-1);
</script>
<%  } %>
</body>
</html>
