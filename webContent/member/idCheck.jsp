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
<title>���̵� �ߺ� Ȯ��</title>
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
���̵� �̹� �����մϴ�.<br />
<form method= "post" action="idCheck.jsp">
�ٸ� ID�� �Է����ּ��� 
<input type="text" name="id" size="20" ><br>
<input type="submit" value="Ȯ��">
</form>
<%}else{ %>
��� ������ ���̵��Դϴ�.
<a href = "javascript:chk('<%=id%>');">[Ȯ��]</a><br>
<%} %>
</body>
</html>