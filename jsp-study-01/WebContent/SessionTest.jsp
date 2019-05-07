<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<h2>세션 연습</h2>
<%
	String name = "smilejsu";
	//세션을 이용하여 데이터를 유지 
	session.setAttribute("name", name);
	//세션 유지시간
	session.setMaxInactiveInterval(10);	//10초간 
	
	try
	{
		int a = 10/0;
	}
	catch(Exception e)
	{
		e.printStackTrace();
	}
%>
	<a href="SessionName.jsp">세션 네임 페이지로 이동</a>
	<%-- <a href="SessionName.jsp?name=<%=name%>">세션 네임 페이지로 이동</a> --%>
	
</body>
</html>