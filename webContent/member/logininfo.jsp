<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<title>내 정보보기</title>

<script type="text/javascript">
 function loginchk() {
  var regx = /^[a-zA-Z0-9]*$/;
  var id = document.form.id.value;
  var pass = document.form.pass.value;
  if (id.length == 0 || id == null) {
   alert("아이디를 입력하시오");
   document.form.id.focus();
   return;
  }
  if (!regx.test(id)) {
   alert("아이디는 영어, 숫자만 입력가능합니다.");
   document.form.id.focus();
   return false;
  }
  if (pass.length < 6 || pass == null) {
   alert("비밀번호는 6글자이상입니다^^");
   document.form.pass.focus();
   return;
  }
  if (!regx.test(pass)) {
   alert("비밀번호는 영어, 숫자만 입력가능합니다.");
   document.form.pass.focus();
   return false;
  }
  document.form.submit();
 }
</script>
</head>
<body>
<form action="logininfoProc.jsp" method="post" name="form">
<table >
   <tr>
    <td ><br><b>아이디 : </b><input type="text" size="10" maxlength="15" name="id" class="inputid" value="<%=(String)session.getAttribute("id")%>" readonly="readonly">&nbsp;
      <br><br>
      <b>비밀번호 : </b><input type="password" size="10" maxlength="15" name="pass" class="inputpass"><br><br>
      <img src="../log/image/loginbutton.png" width="70" height="40" onclick="loginchk()" border="0" >
    </td>
   </tr>
</table>
</form>
</body>
</html>