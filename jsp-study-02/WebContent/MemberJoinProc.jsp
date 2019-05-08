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

	//String id = request.getParameter("id");
%>		

	<!-- 객체 생성 -->
	<jsp:useBean id="memberBean" class="bean.MemberBean">
		<jsp:setProperty name="memberBean" property="*"/>
	</jsp:useBean>
		
		<h2>아이디 <jsp:getProperty property="id" name="memberBean"/> </h2>
		<h2>패스워드 <jsp:getProperty property="pass1" name="memberBean"/> </h2>
		<h2>이메일 <jsp:getProperty property="email" name="memberBean"/> </h2>
		
		<h2>
			전화전호 <%=memberBean.getTel() %>
		</h2>
	</div>
</body>
</html>