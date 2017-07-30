<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01
Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<jsp:useBean id="dao" class="my.member.MemberDao"/>
<%
 if (request.getParameter("member") != null) {
  String memberlist[] = request.getParameterValues("member");
  for (int i = 0; i < memberlist.length; i++) {
   dao.DeleteMember(memberlist[i]);
  }
%>
<script type="text/javascript">
 alert("삭제되었습니다.");
 location.href="memberForward.jsp";
</script>
<%
 } else {
%>
<script type="text/javascript">

 alert("삭제할 계정을 선택하십시오");
 history.go(-1);
</script>
<%
 }
%>