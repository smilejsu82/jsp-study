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

	String[] arrHobbies = request.getParameterValues("hobby");
	String strHobbies = "";
	for(String hobby : arrHobbies)
	{
		strHobbies += hobby + " ";
	}
%>

<jsp:useBean id="memberBean" class="model.MemberBean">
	<jsp:setProperty name="memberBean" property="*"/>
</jsp:useBean>

<%
	memberBean.setHobby(strHobbies);
%>

<h2>아이디 : <%=memberBean.getId() %></h2>
<h2>취미 : <%=memberBean.getHobby() %></h2>

</body>
</html>