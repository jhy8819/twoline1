<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
 <%@ page import ="java.sql.*" %>
 <%@ page import = "twoline.OnelineDTO" %>
 <%@ page import = "twoline.OnelineDAO" %>
 
 
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Insert title here</title>
</head>
<% 
	request.setCharacterEncoding("EUC-KR");
	String memo = request.getParameter("memo");
	OnelineDAO dao = new OnelineDAO();
	OnelineDTO dto = new OnelineDTO();
	dto.setMemo(memo);
	
	
	dao.insert(dto);
	
	response.sendRedirect("memo_list.jsp");



%>
</html>