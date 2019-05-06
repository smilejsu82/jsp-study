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
		String id = request.getParameter("id");
		String pass1 = request.getParameter("pass1");
		String pass2 = request.getParameter("pass2");
		String email = request.getParameter("email");
		String tel = request.getParameter("tel");
		
		String[] arrHobby = request.getParameterValues("hobby");
		
		String job = request.getParameter("job");
		String age = request.getParameter("age");
		String info = request.getParameter("info");
		
		out.println(id);
		out.println(pass1);
		out.println(pass2);
		out.println(email);
		out.println(tel);
		for(String hobby : arrHobby)
		{
			out.println(hobby);
		}
		out.println(job);
		out.println(age);
		out.println(info);
	%>
</body>
</html>