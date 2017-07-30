<%@ page language="java" contentType="text/html; charset=utf-8"
 pageEncoding="utf-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<script type="text/javascript">
function chk(){
 var req = document.form.req.checked;
 var num = 0;
 if(req == true){
  num = 1;
 }
 if(num==1){
  document.form.submit();
 }else{
  alert("개인정보 약관에 동의하셔야 합니다.");
 }
}
function nochk(){
 alert("동의하지 않으면 가입하실 수 없습니다");
 return false;
}
function home(){
	
	location.href="../index.jsp";
}
</script>
<link href="style/memberStyle.css" rel="stylesheet" type="text/css"/>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<title>회원가입 창</title>
</head>
<body>
<form action="regFormImpl2.jsp" name="form" method="post">
 <table width="1400" height="650">
  <tr>
   <td width="100%" height="10%"><span style="padding-left: 160px"><img
    src="../log/image/mainlogo.PNG" width="200" height="60" border="0"
    align="middle" onclick="home()"></span>&nbsp;&nbsp;&nbsp;&nbsp;회원가입
   </td>
  </tr>
  <tr>
   <td height="15%"><span style="padding-left: 160px">
   <img
    src="image/btn4.png" width="120" height="70" border="0"> <img
    src="image/btn5.png" width="120" height="70" border="0"> <img
    src="image/btn7.png" width="120" height="70" border="0">
   </span>
   </td>
  </tr>
  <tr>
   <td height="60%" align="center">
   <hr><br>
   <p align="left">
   <span style="padding-left: 160px">
   <b>Green Hill 약관동의</b></span>
   </p>
   <br>
   <textarea
     rows="20" cols="150">가. 수집하는 개인정보의 항목첫째, 회사는 회원가 입, 원활한 고객상담, 각종 서비스의 제공을 위해 최초 회원가입 당시 아래와 같은 최소한의 개인정보를 필수항목으로 수집하고 있습니다.
회원가입
- 이름, 생년월일, 성별, 아이디, 비밀번호, 별명, 연락처(메일주소, 휴대폰 번호 중 선택), 가입인증정보
만14세 미만 아동 회원가입 
- 이름, 생년월일, 성별, 법정대리인 정보, 아이디, 비밀번호, 연락처 (메일주소, 휴대폰 번호 중 선택), 가입인증정보
단체아이디 회원가입 
- 단체아이디, 회사명, 대표자명, 대표 전화번호, 대표 이메일 주소, 단체주소, 관리자 아이디, 관리자 연락처, 관리자 부서/직위
- 선택항목 : 대표 홈페이지, 대표 팩스번호
둘째, 서비스 이용과정이나 사업처리 과정에서 아래와 같은 정보들이 자동으로 생성되어 수집될 수 있습니다.
- IP Address, 쿠키, 방문 일시, 서비스 이용 기록, 불량 이용 기록
셋째, 네이버 아이디를 이용한 부가 서비스 및 맞춤식 서비스 이용 또는 이벤트 응모 과정에서 해당 서비스의 이용자에 한해서만 개인정보 추가 수집이 발생할 수 있으며, 이러한 경우 별도의 동의를 받습니다. 
넷째, 성인컨텐츠, 유료/게임 등 일부 서비스 이용시 관련 법률 준수를 위해 본인인증이 필요한 경우, 아래와 같은 정보들이 수집될 수 있습니다. 
- 이름, 생년월일, 성별, 중복가입확인정보(DI), 암호화된 동일인 식별정보(CI), 휴대폰 번호(선택), 아이핀 번호(아이핀 이용시), 내/외국인 정보
다섯째, 유료 서비스 이용 과정에서 아래와 같은 결제 정보들이 수집될 수 있습니다. 
- 신용카드 결제시 : 카드사명, 카드번호 등
- 휴대전화 결제시 : 이동전화번호, 통신사, 결제승인번호 등
- 계좌이체시 : 은행명, 계좌번호 등
- 상품권 이용시 : 상품권 번호
나. 개인정보 수집방법회사는 다음과 같은 방법으로 개인정보를 수집합니다. 
- 홈페이지, 서면양식, 팩스, 전화, 상담 게시판, 이메일, 이벤트 응모, 배송요청
- 협력회사로부터의 제공 
- 생성정보 수집 툴을 통한 수집
   </textarea>
   <br><br>
   <input type="checkbox" name="req"> 개인정보 수집 및 이용에 동의합니다. 
   <br>
   <hr>
   </td>
  </tr>
  <tr>
   <td align="center" valign="top">
    <img src="image/btn1.png" width="100" height="50" onclick="chk()">&nbsp;&nbsp;&nbsp;
    <img src="image/btn2.png" width="100" height="50" onclick="nochk()">    
   </td>
  </tr>
 </table>
</form>
</body>
</html>
