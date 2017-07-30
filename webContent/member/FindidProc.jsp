<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
    <% request.setCharacterEncoding("utf-8"); %>
    <jsp:useBean id="dao" class="my.member.MemberDao"/>
    <jsp:useBean id="vo" class="my.member.MemberVo"/>
    <jsp:setProperty property="*" name="vo"/>
<%
	
  String id = null;
  String email1=null;
  String email2 =null;
  String name=null;
 name = new String(request.getParameter("name"));
  email1=request.getParameter("email1");
  email2=request.getParameter("email2");

 id = dao.findid(name,email1,email2);
%>
<%if(id==null){ %>
<script type="text/javascript">
alert("존재하지 않은 계정입니다");
history.go(-1);
</script>
<%}else{%>
<script type="text/javascript">
alert("찾으시는 계정은 <%=id %> 입니다.");
location.href="../index.jsp";
</script>
<%}%>