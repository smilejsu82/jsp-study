<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<h2>이 페이지는 로그인 정보가 넘어 오는 페이지 입니다.</h2>
	
	<%
		request.setCharacterEncoding("utf-8");
		String id = request.getParameter("id");
		
		//response.sendRedirect("ResponseRedirect.jsp?id=" + id);
	%>
	
	<jsp:forward page="ResponseRedirect.jsp">
		<jsp:param value="mmmm" name="id"/>
		<jsp:param value="010-1234-5678" name="phone" />
	</jsp:forward>
	
	<h3>아이디: <%=id %></h3>

</body>
</html>