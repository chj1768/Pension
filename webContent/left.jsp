<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<script type="text/javascript">
function loginchk(){
 var regx = /^[a-zA-Z0-9]*$/;
 var id = document.form.id.value;
 var pass = document.form.pass.value;
 if (id.length == 0 || id == null) {
  alert("아이디를 입력하시오");
  document.form.id.focus();
  return;
 }
 if (!regx.test(id)){
  alert("아이디는 영어, 숫자만 입력가능합니다.");
  document.form.id.focus();
  return false;
 }
 if (pass.length < 6 || pass == null) {
  alert("비밀번호는 6글자이상입니다^^");
  document.form.pass.focus();
  return;
 }
 if (!regx.test(pass)){
  alert("비밀번호는 영어, 숫자만 입력가능합니다.");
  document.form.pass.focus();
  return false;
 }
 document.form.submit();
}
</script>
<style type="text/css">

    nav #aside_left{
		font-family: a엄마의편지M;
		position:absolute;
		top: 320px;
		margin-top: 20px;
		float: left; 
		padding: 10px 10px 0 0;
		border:3px solid #BCE9B7;
		border-radius: 15px;
		
		background-color:white;
	}
	


</style>
<title>Insert title here</title>
</head>
<body>
<nav id="aside_left" align="right">
   <form action="log/loginProc.jsp" method="post" name="form"  align="left">
	      아이디 <br/><input type="text" maxlength="15" name="id" class="inputid"><br/>
	      비밀번호 <br/><input type="password" maxlength="15" name="pass" class="inputpass">&nbsp;&nbsp;<br/><br />
		<img src="log/image/loginbutton.png" width="70" height="40" align="middle" onclick="loginchk()"> | <a href="member/regFormImpl.jsp"><b>회원가입</b></a><br />
			<a href="Findidready.jsp"><b>아이디 찾기 </b></a>
			|<a href="Findpassready.jsp"><b>비밀번호 찾기</b></a>
		
   </form>
  </nav>
</body>
</html>