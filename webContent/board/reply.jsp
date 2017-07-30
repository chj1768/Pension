<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<%@ page import="java.sql.*"%>  
<script language = "javascript">  // 자바 스크립트 시작

function replyCheck()
  {
   var form = document.replyform;
   
   if( !form.name.value )   // form 에 있는 name 값이 없을 때
   {
    alert( "이름을 적어주세요" ); // 경고창 띄움
    form.name.focus();   // form 에 있는 name 위치로 이동
    return;
   }
   
   if( !form.password.value )
   {
    alert( "비밀번호를 적어주세요" );
    form.password.focus();
    return;
   }
   
  if( !form.title.value )
   {
    alert( "제목을 적어주세요" );
    form.title.focus();
    return;
   }
 
  if( !form.memo.value )
   {
    alert( "내용을 적어주세요" );
    form.memo.focus();
    return;
   }
 
  form.submit();
  }
 </script>
 
 <%
 	int idx = Integer.parseInt(request.getParameter("idx"));
 	int pg = Integer.parseInt(request.getParameter("pg"));
 	Class.forName("com.mysql.jdbc.Driver");
	String url = "jdbc:mysql://주소";
	String id = "아이디";
	String pass = "비밀번호";
	String title = "";
	
	try {
		
		
		Connection conn = DriverManager.getConnection(url,id,pass);
		Statement stmt = conn.createStatement();

		
		String sql = "SELECT TITLE FROM tableboard WHERE NUM=" + idx;
		ResultSet rs = stmt.executeQuery(sql);

 		if(rs.next()){
			title = rs.getString(1);
 		}
			
	rs.close();
	stmt.close();
	conn.close();
 	
} catch(SQLException e) {

}
%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
 <head>
 <title>게시판</title>
 </head>
 <body>
<table>
<form name=replyform method=post action="reply_ok.jsp?idx=<%=idx%>&pg=<%=pg%>">
  <tr>
   <td>
    <table width="100%" cellpadding="0" cellspacing="0" border="0">
     <tr style="background:url('img/table_mid.gif') repeat-x; text-align:center;">
      <td width="5"><img src="img/table_left.gif" width="5" height="30" /></td>
      <td>답글</td>
      <td width="5"><img src="img/table_right.gif" width="5" height="30" /></td>
     </tr>
    </table>
   <table>
     <tr>
      <td>&nbsp;</td>
      <td align="center">제목</td>
      <td><input name="title" size="50" maxlength="100" value = "<%=title%>"></td>
      <td>&nbsp;</td>
     </tr>
     <tr height="1" bgcolor="#dddddd"><td colspan="4"></td></tr>
   <tr>
      <td>&nbsp;</td>
      <td align="center">이름</td>
      <%if(session.getAttribute("id")!=null){ %>
      <td><input name="name" size="50" maxlength="50" value="<%=session.getAttribute("id")%>" readonly="readonly"></td>
      <%}else{ %>
      <td><input name="name" size="50" maxlength="50" value="비회원" readonly="readonly"></td>
      <%} %>
      <td>&nbsp;</td>
     </tr>
      <tr height="1" bgcolor="#dddddd"><td colspan="4"></td></tr>
    <tr>
      <td>&nbsp;</td>
      <td align="center">비밀번호</td>
      <%if(session.getAttribute("id")!=null){ %>
      <td><input type="password"  name="password" size="50" maxlength="50" value="<%=session.getAttribute("pass")%>" readonly="readonly"></td>
      <%}else{ %>
      <td><input type="password" name="password" size="50" maxlength="50"></td>
      <%} %>
      <td>&nbsp;</td>
     </tr>
     <tr height="1" bgcolor="#dddddd"><td colspan="4"></td></tr>
     <tr>
      <td>&nbsp;</td>
      <td align="center">내용</td>
      <td><textarea name="memo" cols="50" rows="13"></textarea></td>
      <td>&nbsp;</td>
     </tr>
     <tr height="1" bgcolor="#dddddd"><td colspan="4"></td></tr>
     <tr height="1" bgcolor="#82B5DF"><td colspan="4"></td></tr>
     <tr align="center">
      <td>&nbsp;</td>
      <td colspan="2"><input type=button value="등록"  OnClick="javascript:replyCheck();">
       <input type=button value="취소" OnClick="javascript:history.back(-1)">
      <td>&nbsp;</td>
     </tr>
    </table>
   </td>
  </tr>
 </table>
</body>
 </html>