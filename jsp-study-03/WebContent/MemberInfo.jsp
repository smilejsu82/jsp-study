<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<%@ page import="model.*" %>

<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Insert title here</title>
</head>
<body>
<%
	String id = request.getParameter("id");
	MemberDAO dao = new MemberDAO();
	MemberBean bean = dao.onSelectMember(id);
%>

	<div align="center">
		<table style="width:40%" border="1">
			<tr height="50">
				<td align="center" width="150">���̵�</td>
				<td width="150"><%=bean.getId() %></td>
			</tr>
			<tr height="50">
				<td align="center" width="150">�̸���</td>
				<td width="150"><%=bean.getEmail() %></td>
			</tr>
			<tr height="50">
				<td align="center" width="150">��ȭ</td>
				<td width="150"><%=bean.getTel() %></td>
			</tr>
			<tr height="50">
				<td align="center" width="150">���</td>
				<td width="150"><%=bean.getHobby() %></td>
			</tr>
			<tr height="50">
				<td align="center" width="150">����</td>
				<td width="150"><%=bean.getJob() %></td>
			</tr>
			<tr height="50">
				<td align="center" width="150">����</td>
				<td width="150"><%=bean.getAge() %></td>
			</tr>
			<tr height="50">
				<td align="center" width="150">����</td>
				<td width="150"><%=bean.getInfo() %></td>
			</tr>
		</table>
	</div>
</body>
</html>