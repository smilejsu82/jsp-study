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

	String id = "hr";
	String pass = "123456";
	String url = "jdbc:oracle:thin:@localhost:49161:XE";
	
	try{
		Class.forName("oracle.jdbc.driver.OracleDriver");
		Connection con = DriverManager.getConnection(url, id, pass);
		String sql = "insert into member values(?,?,?,?,?,?,?,?)";
		PreparedStatement statement = con.prepareStatement(sql);
		statement.setString(1, memberBean.getId());
		statement.setString(2, memberBean.getPass1());
		statement.setString(3, memberBean.getEmail());
		statement.setString(4, memberBean.getTel());
		statement.setString(5, memberBean.getHobby());
		statement.setString(6, memberBean.getJob());
		statement.setString(7, memberBean.getAge());
		statement.setString(8, memberBean.getInfo());
		
		statement.executeUpdate();
		
		con.close();
		
	}catch(Exception e)
	{
		e.printStackTrace();
	}
%>

	오라클 접속 완료

</body>
</html>