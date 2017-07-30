<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<%@ page import="my.member.MemberDao" %>
<% request.setCharacterEncoding("utf-8"); %>
<jsp:useBean id="vo" class="my.member.MemberVo"/>
<jsp:setProperty property="*" name="vo"/>
<%
 String id = (String)session.getAttribute("id");
 int rst = 0;
 MemberDao dao = new MemberDao();
 rst = dao.updateMember(id,vo);
%>
<%if(rst>0){%>
<script type="text/javascript">
alert("정보 수정 완료");
location.href="../showinfo.jsp";
</script>
<%}else{%>
<script type="text/javascript">
alert("정보 수정 오류");
history.go(-1);
</script>
<%}%>
