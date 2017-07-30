<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<%@ page import="java.util.*, my.member.*" %>
<%
 MemberDao dao = new MemberDao();
 ArrayList<MemberVo> list = new ArrayList<MemberVo>();
 ArrayList<MemberVo> reqlist = (ArrayList<MemberVo>)request.getAttribute("list");
 int pagenum = 1;  // 페이지 번호
 if(request.getParameter("memberPage") != null){
  pagenum = Integer.parseInt(request.getParameter("memberPage"));
 }
 int size = 15;
 int tot;
 int cnt = dao.memberCount();
 tot = cnt/size;
 if(cnt%size != 0){
  tot++;
 }
 int start = (pagenum - 1) * size;
 int end = pagenum * size - 1;
 if(reqlist==null){
  list = dao.selectAllMember(start, end);
 }else{
  list = reqlist;
 }
%>
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
<form action="findidProc.jsp" method="post">
<select name="how">
<option value="아이디">아이디</option>
<option value="이름">이름</option>
<option value="수신여부">수신여부</option>
</select>&nbsp;
<input type="text" size="20" name="obj">
<input type="submit" value="검색">
</form><br>

<form action="multidel.jsp" method="post">
<table border="0" width="1100">
 <tr>
  <th><input type="submit" value="추방"></th>
  <th>아이디</th>
  <th>비밀번호</th>
  <th>이름</th>
  <th colspan="2">이메일</th>
  <th>수신여부</th>
  <th colspan="3">전화번호</th>
  <th>성별</th>
  <th colspan="3">생년월일</th>
  <th>주소</th>
  <th>기타</th>
 </tr>
 <%for(MemberVo vo : list){ %>
  <tr align="center">
  <%if(vo.getId().equals("root")){ %>
   <td>추방불가</td>
  <%}else{ %>
   <td><input type="checkbox" name="member"
value="<%=vo.getId()%>"></td>
  <%} %>  
<td><%=vo.getId() %></td>
   <td><%=vo.getPass() %></td>
   <td><%=vo.getName() %></td>
   <td><%=vo.getEmail1() %></td>
   <td><%=vo.getEmail2() %></td>
   <td><%=vo.getSent() %></td>
   <td><%=vo.getPh1() %></td>
   <td><%=vo.getPh2() %></td>
   <td><%=vo.getPh3() %></td>
   <td><%=vo.getGender() %></td>
   <td><%=vo.getBirth1() %></td>
   <td><%=vo.getBirth2() %></td>
   <td><%=vo.getBirth3() %></td>
   <td><%=vo.getAddress() %></td>
   <td>
   <%if(vo.getId().equals("root")){ %>
   추방불가
   <%}else{ %>
   <input type="button" value="추방" 
   onclick="javascript:location.href='deleteProc.jsp?id=<%=vo.getId()%>'">
   <%} %>
   </td>
  </tr>
 <%} %>
</table>
</form>
</body>
</html>