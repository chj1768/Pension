<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<%@ page import="java.sql.*"%>  
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
			
<%
	Class.forName("com.mysql.jdbc.Driver");
	String url = "jdbc:mysql://주소";
	String id = "아이디";
	String pass = "비밀번호";
	
		try{
			
			request.setCharacterEncoding("utf-8");
			int idx = Integer.parseInt(request.getParameter("idx"));
			int pg = Integer.parseInt(request.getParameter("pg"));
			String title = request.getParameter("title");
			String memo = request.getParameter("memo");
			String passw = request.getParameter("password");
		
			Connection conn = DriverManager.getConnection(url,id,pass);
			Statement stmt = conn.createStatement();
		
			String sql = "SELECT PASSWORD FROM tableboard WHERE NUM=" + idx;
			ResultSet rs = stmt.executeQuery(sql);
		
		 if(rs.next()){
				password = rs.getString(1);
		 }
		
		 if(password.equals(passw)) {
				sql = "UPDATE tableboard SET TITLE='" + title+ "' ,MEMO='"+ memo +"' WHERE NUM=" + idx;				
				stmt.executeUpdate(sql);
				
%>
				  <script language=javascript>
				  	self.window.alert("글이 수정되었습니다.");
				  	location.href="view.jsp?idx=<%=idx%>&pg=<%=pg%>";
				  </script>
<%

			rs.close();
			stmt.close();
			conn.close();
			
		} else {
%>
			<script language=javascript>
				self.window.alert("비밀번호를 틀렸습니다.");
				location.href="javascript:history.back()";
			</script>
<%			
		}
		 
 } catch(SQLException e) {
	out.println( e.toString() );
}
%>

