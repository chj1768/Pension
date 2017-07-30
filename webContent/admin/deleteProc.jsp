<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<%@ page import="my.member.MemberDao" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01
Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<%
 int rst = 0;
 String id = (String)request.getParameter("id");
 MemberDao dao = new MemberDao();
 rst = dao.DeleteMember(id);
%>
<% if(rst==0){%>
<script type="text/javascript">
alert("삭제 오류"); 
history.go(-1);
</script>
<% }else{ %>
<script type="text/javascript">
alert("삭제 성공");
location.href="memberForward.jsp";
</script>
<% }%>
