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
	
	int no = Integer.parseInt(request.getParameter("no"));

	OnelineDAO dao = new OnelineDAO();
	OnelineDTO dto = new OnelineDTO();
	
	dto.setNo(no);
	dao.delete(dto);


	
	response.sendRedirect("memo_list.jsp");
	
%>


<body>

</body>
</html>