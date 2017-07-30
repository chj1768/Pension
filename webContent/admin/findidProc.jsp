<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<%@ page import="my.member.*,java.util.*" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01
 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<%
 request.setCharacterEncoding("utf-8");
 int index = 0;
 String req = null;
 String how = null;
 MemberDao dao = new MemberDao();
 req = (String)request.getParameter("obj");
 how = (String)request.getParameter("how");
 if(how.equals("아이디")){index=0;}
 else if(how.equals("이름")){index=1;}
 else{index=2;}
 ArrayList<MemberVo> list = dao.findInfo(req, index);
 request.setAttribute("list", list);
 request.setAttribute("center", "memberlist.jsp");
%>
<jsp:forward page="memberForward.jsp"/>