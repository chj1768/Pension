<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<%@ page import="java.sql.*" %>
<%
        request.setCharacterEncoding("utf-8");
 		String id = (String)session.getAttribute("id");
        String year = request.getParameter("year");
        String month = request.getParameter("month");
        String day = request.getParameter("day");
        String date ="";
        date += year;
        date += month;
        date += day;
 %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<title>예약 리스트</title>
<script type="text/javascript">
function regChk(){
 var id = document.regform.id.value;
 var name = document.regform.name.value;

 if(id.length==0 || id==null){
  alert("아이디를 입력하세요!!");
  document.regform.id.focus();
  return false;
 } 
 if (name.length==0 || name==0){
  alert("이름을 입력하세요!!");
  document.regform.name.focus();
  return false;
 }
 var idx = regform.roomname.options.selectedIndex;
 if(regform.roomname.options[idx].value == "방을 선택하시오"){
 	alert("방을 선택하세요!");
 	regform.roomname.focus(); 
 	return false;
 }
}
 </script>
 <style>
  #table1 {
    width: 70%;
    border-collapse: collapse;
  }
th, td {
    border: 1px solid #bcbcbc;
    padding: 5px 10px;
  }

</style>
</head>
<body>
	<h3>** <%=year %> 년 <%=month %> 월 <%=day %> 일의  예약 현황  **</h3><br>
	<table border="1" id="table1" >
		<tr>
		<td> 방 이름 </td>
		<td> 예약자 ID </td>
		<td> 예약자 이름</td>
		<td> 신청 날짜 </td>
		
		</tr>
		
	<% 
		String s[]={"은은한 방", "편안한 방", "최고의 방"};
		Connection con = null;
		Statement stmt = null;
			Class.forName("com.mysql.jdbc.Driver");
			String url = "jdbc:mysql://주소";
			con = DriverManager.getConnection(url,"아이디","비밀번호");
			
	
		stmt = con.createStatement();
		String sql = "select * from reservation where regdate='"+date+"'";
		ResultSet rs = stmt.executeQuery(sql);
		int row = rs.getRow();
		String rooms[]={"은은한 방","편안한 방","최고의 방"};
		String roomname="";
		String out_opt="";
		int n=0;int n1=0; int n2=0;
		if(rs != null){
			
			while(rs.next()){
				roomname = rs.getString("roomname");	
				
				
			
		
	%>
	<tr>
		<td> <%=rs.getString("roomname") %> </td>
		<td> <%=rs.getString("id") %> </td>
		<td> <%=rs.getString("name") %> </td>
		<td> <%=rs.getString("nowdate") %> </td>
		
	</tr>
	<%
		if(roomname.equals(rooms[0]))
			n++;
		if(roomname.equals(rooms[1]))
			n1++;
		if(roomname.equals(rooms[2]))
			n2++;
			
			}
		}
			
		
	%>

	</table>
	<br />
	<h3>** 예약 작성 ** </h3>
	<h5>예약 목록과 중복되는 방은 선택하실 수 없습니다.</h5>
	<form name="regform" method="post" action="register_ok.jsp" onsubmit="return regChk()">
		<table id="table2">
		<tr><td>예약자 이름 : <input type="text" name="name" maxlength="20"value=""><br></td></tr>
		<tr><td>예약자 ID : <input type="text" name="id" maxlength="20"value="<%=id %>" readonly="readonly"></td></tr>
		<tr><td>방 이름 : <select name="roomname" >
					<option value="방을 선택하시오" selected>방을 선택하시오</option>
					<% if(n==0){%>
					<option value="<%=rooms[0] %>"><%=rooms[0] %></option>
					<%} %>
					<% if(n1==0){%>
					<option value="<%=rooms[1] %>"><%=rooms[1] %></option>
					<%} %>
					<% if(n2==0){%>
					<option value="<%=rooms[2] %>"><%=rooms[2] %></option>
					<%} %>	
			   </select></td></tr>
		<tr><td>예약 날짜: <input type="text" name="regdate" maxlength="20" value="<%=date%>" readonly="readonly"></td></tr>
		<tr><td> <input type="submit" value="예약 신청합니다"> | <input type="reset" value="다시 작성하기"> </td></tr>
		</table>
	</form> 
	<br />
	<a href="calendar.html">날짜 선택으로 돌아가기</a>
	<% if(stmt != null)
			stmt.close();
		if(con != null)
			con.close();
	%>
</body>
</html>