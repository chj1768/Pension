<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<%@ page import="java.sql.*" %>
<%@ page import="java.text.*" %>
<% request.setCharacterEncoding("utf-8"); %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<title>예약 확인</title>
</head>
<body>
	<% 
		String name, roomname, id, regdate;
		name = request.getParameter("name");
		roomname= request.getParameter("roomname");
		id = request.getParameter("id");
		regdate = request.getParameter("regdate");
		ResultSet rs = null;
		String sql;
		Connection con = null;
		Statement stmt = null;
		try{
		Class.forName("com.mysql.jdbc.Driver");
		String url = "jdbc:mysql://주소";
		con = DriverManager.getConnection(url,"아이디","비밀번호");
		}
		catch(Exception e){
			out.println("데이터베이스 접속에 문제가 있습니다.");
			out.println(e.getMessage());
			e.printStackTrace();
			
		}
		stmt = con.createStatement();
		sql = "insert into reservation" +
				"(id, name, roomname, nowdate, regdate)"+
				"values ("+"'"+id+"','"+name+"', '"+roomname+ "', NOW()"+",'"+regdate+"'"+");";
		try{
			stmt.executeUpdate(sql);
		}catch(Exception e){
			out.println("데이터베이스 삽입 연산에 실패하였습니다.");
			out.println(e.getMessage());
			e.printStackTrace();
		}
	%>
	<h3>예약이 성공적으로 등록되었습니다!! 회원정보에서 확인하실 수 있습니다.</h3>
	<a href="../log/logoutForm.jsp">홈으로 돌아가기</a>
</body>
</html>