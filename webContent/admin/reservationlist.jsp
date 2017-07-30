<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<%@ page import="java.util.*, my.member.*" %>
<%@ page import="java.sql.*" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01
Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<style type="text/css">
th{
 background-color: #B2CCFF;
}
</style>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<title>회원 리스트</title>
</head>
<body>

<table border="0" width="1100">
<tr>
  <th>방 이름</th>
  <th>아이디</th>
  <th>이름</th>
  <th>예약날짜</th>
   <th>예약삭제</th>
 </tr>
 <% 
 		Connection con = null;
		Statement stmt = null;
		Class.forName("com.mysql.jdbc.Driver");
		String url = "jdbc:mysql://주소";
		con = DriverManager.getConnection(url,"아이디","비밀번호");
		stmt = con.createStatement();
		String sql = "select * from reservation";
		ResultSet rs = stmt.executeQuery(sql);
		int row = rs.getRow();
		String out_opt="";
		if(rs != null){
			
		while(rs.next()){
				String regdate= rs.getString("regdate");
				String roomname=  rs.getString("roomname");
			
		
	%>
<tr align="center">
		<td> <%=rs.getString("roomname") %> </td>
		<td> <%=rs.getString("id") %> </td>
		<td> <%=rs.getString("name") %> </td>
		<td> <%=rs.getString("regdate") %> </td>	
   <%} %>
	</tr>
	<%} %>

</table>


</body>
<% if(stmt != null)
			stmt.close();
		if(con != null)
			con.close();
	%>
</html>
	