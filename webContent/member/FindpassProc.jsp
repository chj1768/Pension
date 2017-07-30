<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
    <% request.setCharacterEncoding("utf-8"); %>    
    <jsp:useBean id="dao" class="my.member.MemberDao"/>
    <jsp:useBean id="vo" class="my.member.MemberVo"/>
    <jsp:setProperty property="*" name="vo"/>
<%
  String pass = null;
  String id=null;
// out.print(request.getParameter("name"));
id = request.getParameter("id");
 pass = dao.findpass(id);
%>
<%if(pass==null){ %>
<script type="text/javascript">
alert("해당 아이디와 일치하는 비밀번호가 없습니다.");
history.go(-1);
</script>
<%}else{%>
<script type="text/javascript">
alert("찾으시는 비밀번호는 <%=pass%> 입니다.");
location.href="../index.jsp";
</script>
<%}%>