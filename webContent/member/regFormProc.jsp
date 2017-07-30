 <%request.setCharacterEncoding("utf-8"); %>
<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
    <jsp:useBean id="dao" class="my.member.MemberDao"/>
    <jsp:useBean id="vo" class="my.member.MemberVo"/>
 <jsp:setProperty property="*" name="vo"/>

<%
 int rst = 0;
 rst = dao.insertMember(vo);
 if(rst>0){
%>
<script type="text/javascript">
location.href="regSuccess.jsp";
</script>
<%}else{ %>
<script type="text/javascript">
alert("회원가입 실패");
history.go(-1);
</script>
<%} %>
