<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<%@ page import="model.*" %>
<%@ page import="java.util.Vector" %>

<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Insert title here</title>
</head>
<body>
<%
	MemberDAO dao = new MemberDAO();
	Vector<MemberBean> vec = dao.allSelectMembers();
%>

	<div align="center">
		<table style="width:80%" border="1">
			<tr height="50">
				<td align="center" width="150">아이디</td>
				<td align="center" width="250">이메일</td>
				<td align="center" width="200">전화번호</td>
				<td align="center" width="200">취미</td>
			</tr>
			<%
				for(int i = 0; i<vec.size(); i++)
				{
					MemberBean bean = vec.get(i);
			%>
			
					<tr height="50">
						<td align="center" width="150"><%=bean.getId() %></td>
						<td align="center" width="150"><%=bean.getEmail() %></td>
						<td align="center" width="150"><%=bean.getTel() %></td>
						<td align="center" width="150"><%=bean.getHobby() %></td>
					</tr>
			<%
				}
			%>
		</table>
	</div>
</body>
</html>