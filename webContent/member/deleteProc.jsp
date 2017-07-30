 <%request.setCharacterEncoding("utf-8"); %>
<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
 <%@ page import="my.member.MemberDao" %>
    
<%
 int rst = 0;
 MemberDao dao = new MemberDao();
 String id = (String)request.getParameter("id");
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
<%session.invalidate();%>
location.href="../index.jsp";
</script>
<% }%>

