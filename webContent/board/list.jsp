<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<%@ page import="java.sql.*,java.text.SimpleDateFormat,java.util.Date"%>

<%
	final int ROWSIZE = 4;
	final int BLOCK = 5;

	int pg = 1;
	
	if(request.getParameter("pg")!=null) {
		pg = Integer.parseInt(request.getParameter("pg"));
	}
	
	int start = (pg*ROWSIZE) - (ROWSIZE-1);
	int end = (pg*ROWSIZE);
	
	int allPage = 0;
	
	int startPage = ((pg-1)/BLOCK*BLOCK)+1;
	int endPage = ((pg-1)/BLOCK*BLOCK)+BLOCK;

%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
 <head>
 <title>게시판</title>
 </head>
 <body>
 <%
	Class.forName("com.mysql.jdbc.Driver");
	String url = "jdbc:mysql://주소";
	String id = "아이디";
	String pass = "비밀번호";
	int total = 0;
	
	try {
		Connection conn = DriverManager.getConnection(url,id,pass);
		Statement stmt = conn.createStatement();
		Statement stmt1 = conn.createStatement();
		String sql = "";

		String sqlCount = "SELECT COUNT(*) FROM tableboard";
		ResultSet rs = stmt.executeQuery(sqlCount);
		
		if(rs.next()){
			total = rs.getInt(1);
		}

		int sort=1;
		String sqlSort = "SELECT NUM from tableboard order by ref desc, step asc";
		rs = stmt.executeQuery(sqlSort);
	
		
		while(rs.next()){
			int stepNum = rs.getInt(1);
			sql = "UPDATE tableboard SET STEP2=" + sort + " where NUM=" +stepNum;
		 	stmt1.executeUpdate(sql);
		 	sort++;
		}
		
		allPage = (int)Math.ceil(total/(double)ROWSIZE);
		
		if(endPage > allPage) {
			endPage = allPage;
		}
		
		out.print("총 게시물 : " + total + "개");
		
		String sqlList = "SELECT NUM, USERNAME, TITLE, TIME, HIT, INDENT from tableboard where STEP2 >="+start + " and STEP2 <= "+ end +" order by step2 asc";
		rs = stmt.executeQuery(sqlList);
		
%>
<table width="100%" cellpadding="0" cellspacing="0" border="0">
  <tr height="5"><td width="5"></td></tr>
 <tr style="background:url('img/table_mid.gif') repeat-x; text-align:center;">
   <td width="5"><img src="img/table_left.gif" width="5" height="30" /></td>
   <td width="73">번호</td>
   <td width="379">제목</td>
   <td width="73">작성자</td>
   <td width="164">작성일</td>
   <td width="58">조회수</td>
   <td width="7"><img src="img/table_right.gif" width="5" height="30" /></td>
  </tr>
<%
	if(total==0) {
%>
	 		<tr align="center" bgcolor="#FFFFFF" height="30">
	 	   <td colspan="6">등록된 글이 없습니다.</td>
	 	  </tr>
<%
	 	} else {
	 		
		while(rs.next()) {
			int idx = rs.getInt(1);
			String name = rs.getString(2);
			String title = rs.getString(3);
			String time = rs.getString(4);
			int hit = rs.getInt(5);
			int indent = rs.getInt(6);
			
			//Date date = new Date();
			//SimpleDateFormat simpleDate = new SimpleDateFormat("yyyy-MM-dd"); 
			//String year = (String)simpleDate.format(date);
			//String yea = time.substring(0,10);
		
%>
<tr height="25" align="center">
	<td>&nbsp;</td>
	<td><%=idx %></td>
	<td align="left">
	<% 
		
	for(int j=0;j<indent;j++){
%>		&nbsp;&nbsp;&nbsp;<%
	}
	if(indent!=0){
%>		<img src='img/reply_icon.gif' />
<%
	}
%>
	<a href="view.jsp?idx=<%=idx%>&pg=<%=pg%>"><%=title %></a>
<%
	
%>
	</td>
	<td align="center"><%=name %></td>
	<td align="center"><%=time %></td>
	<td align="center"><%=hit %></td>
	<td>&nbsp;</td>
</tr>
  <tr height="1" bgcolor="#D2D2D2"><td colspan="6"></td></tr>
<% 
		}
	} 
	rs.close();
	stmt.close();
	conn.close();
} catch(SQLException e) {
//	out.println( e.toString() );
}
%>
 <tr height="1" bgcolor="#82B5DF"><td colspan="6" width="752"></td></tr>
 </table>
 
<table width="100%" cellpadding="0" cellspacing="0" border="0">
  <tr><td colspan="4" height="5"></td></tr>
  <tr>
	<td align="center">
		<%
			if(pg>BLOCK) {
		%>
			[<a href="list.jsp?pg=1">◀◀</a>]
			[<a href="list.jsp?pg=<%=startPage-1%>">◀</a>]
		<%
			}
		%>
		
		<%
			for(int i=startPage; i<= endPage; i++){
				if(i==pg){
		%>
					<u><b>[<%=i %>]</b></u>
		<%
				}else{
		%>
					[<a href="list.jsp?pg=<%=i %>"><%=i %></a>]
		<%
				}
			}
		%>
		
		<%
			if(endPage<allPage){
		%>
			[<a href="list.jsp?pg=<%=endPage+1%>">▶</a>]
			[<a href="list.jsp?pg=<%=allPage%>">▶▶</a>]
		<%
			}
		%>
		</td>
		</tr>
		  <tr align="center">
   <td><input type=button value="글쓰기" OnClick="window.location='write.jsp'"></td>
  </tr>
 </table>
 <% if(session.getAttribute("id")==null){ %>
 <a href="../index.jsp">홈으로 이동</a>
 <%}else {%>
 <a href="../log/logoutForm.jsp">홈으로 이동</a>
 <%} %>
 </body>
</html>