<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<jsp:useBean id="dao" class="my.member.MemberDao"/>
<%
 int rst = 0;
 String id = (String)request.getParameter("id");
 rst = dao.idCheck(id);
%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01
 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<title>아이디 중복 확인</title>
<script language="javascript">

function chk(id){
opener.form.id.value = id;
self.close();
}

</script>
</head>
<body>
<%
if(rst == 1){
%>
아이디가 이미 존재합니다.<br />
<form method= "post" action="idCheck.jsp">
다른 ID를 입력해주세요 
<input type="text" name="id" size="20" ><br>
<input type="submit" value="확인">
</form>
<%}else{ %>
사용 가능한 아이디입니다.
<a href = "javascript:chk('<%=id%>');">[확인]</a><br>
<%} %>
</body>
</html>