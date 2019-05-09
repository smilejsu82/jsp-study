<%@page import="model.MemberDAO"%>
<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.Connection"%>
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
	
	MemberDAO dao = new MemberDAO();
	dao.insertMember(memberBean);
	
%>

	오라클 접속 완료

</body>
</html>