<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<form action="findpwd.jsp" method="post">
	<table align=center>
	<tr><td colspan=2 align=center height=40><b>비밀번호 찾기</b><td></tr>
	<tr>
		<td align=right>이름&nbsp;</td>
		<td><input type="text" name="name" required></td>
	</tr>
	<tr>
		<td align=right>ID&nbsp;</td>
		<td><input type="text" name="id" required></td>
	</tr>
	<tr>
		<td colspan=2 align=center height=50>
			<input type="submit" value="비밀번호 찾기">
		</td>
	</tr>
	</table>
	</form>
</body>
</html>