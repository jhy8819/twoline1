<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<%@ page import="java.sql.*" %> 
<%@ page import="java.util.ArrayList" %>
<%@ page import="twoline.OnelineDTO" %>
<%@ page import="twoline.OnelineDAO" %>

  
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>�� ���� �ǽ�</title>
<link rel="stylesheet" href="memostyle.css">
</head>
<%
	OnelineDAO dao = new OnelineDAO();
	ArrayList<OnelineDTO >dtos = dao.getList();
	
%>

<body>
<h3>���� �޸���</h3>

<form method="post" action="memo_write.jsp">
<input type="text" name="memo" class="memo"></input>
<hr>
<input type="submit" value="���" class="btn"></input>

<p>
(4/7 15:13) ������ �ݿ����̴�. ������^^ <input type="submit" class="btn1" value="����">
</p>
<p>
(4/7 11:03) ������ ���� ������ ... �Ф�  <input type="submit" class="btn1" value="����">
</p>

<%
	for(int i = 0; i < dtos.size() ; i++) {
		OnelineDTO dto = dtos.get(i);
		out.println("<p>(" + dto.getWdate() + ") " + dto.getMemo() + "&nbsp;&nbsp;"+
				"<input type=\"button\" value=\"����\" class=\"btn1\" onClick=\"location.href='memo_delete.jsp?no=" + dto.getNo() + "'\"><br>");
		out.println("</input></p>");
	}
%>	
</form>
</body>
</html>