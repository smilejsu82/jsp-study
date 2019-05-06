<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<%
	request.setCharacterEncoding("utf-8");

	String dbId = "aaaa";
	String dbPass = "1234";
	
	String id = request.getParameter("id");
	String pass = request.getParameter("pass");
	
	if(dbId.equals(id) && dbPass.equals(pass))
	{
		response.sendRedirect("ResponseMain.jsp?id=" + id);
	}else{
%>
	<script>
		alert("아이디와 패스워드가 일치하지 않습니다.");
		history.go(-1);
	</script>
<%
	}
%>
</body>
</html>