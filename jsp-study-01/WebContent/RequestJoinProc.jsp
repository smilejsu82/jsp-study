<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<div align="center">
	<h2>회원 정보 보기</h2>
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
		
		/* out.println(id);
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
		out.println(info); */
		if( !pass1.equals(pass2))
		{
	%>
		<script type="text/javascript">
			alert("비밀번호가 틀립니다.");
			history.go(-1);
		</script>
		
	<%
		}
	%>
	
	<table style="width: 50%" border="1">
		<tr height="50">
			<td width="150" align="center">아이디</td>
			<td width="350" align="center">
				<%= id %>
			</td>
		</tr>
		<tr height="50">
			<td width="150" align="center">이메일</td>
			<td width="350" align="center">
				<%= email %>
			</td>
		</tr>
		<tr height="50">
			<td width="150" align="center">전화번호</td>
			<td width="350" align="center">
				<%= tel %>
			</td>
		</tr>
		<tr height="50">
			<td width="150" align="center">관심분야</td>
			<td width="350" align="center">
				<%
					for(int i = 0; i<arrHobby.length; i++)
					{
						out.write(arrHobby[i] + " ");
					}
				%>
			</td>
		</tr>
		<tr height="50">
			<td width="150" align="center">직업</td>
			<td width="350" align="center">
				<%= job %>
			</td>
		</tr>
		<tr height="50">
			<td width="150" align="center">연령</td>
			<td width="350" align="center">
				<%= age %>
			</td>
		</tr>
		<tr height="50">
			<td width="150" align="center">하고싶은말</td>
			<td width="350" align="center">
				<%= info %>
			</td>
		</tr>
	</table>
		
	</div>
</body>
</html>