<%@ page language="java" contentType="text/html; charset=utf-8"
 pageEncoding="utf-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<script type="text/javascript">
function deleteMember(){
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
  alert("비밀번호는 6글자이상입니다.");
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
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<title>deleteForm</title>
</head>
<body>
 <form action="deleteProc.jsp" method="post" name="form">
 <p>
 <table>
  <tr>
   <td  >
     <font color="black"><b>아이디 : </b></font><input type="text" name="id"
      value="<%=(String) session.getAttribute("id")%>"
      readonly="readonly"><br><br>
     <font color="black"><b>비밀번호 : </b></font><input type="password" name="pass"><br> <br>
   </td>
  </tr>
  <tr>
   <td style="color:#FFA7A7; padding-left:20px;" align="left">
    ※ 탈퇴할 시 주의사항<br>
     - 탈퇴할 시 해당 계정의 게시물이 전부 지워집니다.<br>
     - 탈퇴했을 시 다시 복구가 불가능하니, 신중하게 탈퇴해 주시기 바랍니다.<br>
   </td>
  </tr>
 </table>
 <br>
  <img src="image/deleteSubmit.png" width="90px" height="50px" onclick="deleteMember()">
 </form>
</body>
</html>