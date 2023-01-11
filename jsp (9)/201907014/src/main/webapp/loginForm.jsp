<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
	<meta charset="UTF-8">
	<script>
	function idfind(){
		url = "findidform.jsp";
		window.open(url, "ID찾기", "width=600, height=250");
	}
	function pwdfind(){
		url = "findpwdform.jsp";
		window.open(url, "비밀번호 찾기", "width=600, height=250");
	}
	</script>
</head>
<body>
	<form action="login.jsp" method="post">
	<table align=center>
	<tr><td colspan=2 align=center height=40><b>로그인</b><td></tr>
	<tr>
		<td align=right>아이디&nbsp;</td> 
		<td><input type="text" name="id" placeholder="Email address" required></td>
	</tr>
	<tr>
		<td align=right>패스워드&nbsp;</td> 
		<td><input type="password" name="ps" required></td>
	</tr>
	<tr>
		<td colspan=2 align=center height=50>
			<input type="submit" value="로그인하기")>
		</td>
	</tr>
	<tr>
		<td align=center><a href="loginForm.jsp" onclick="idfind();">ID 찾기</a></td>
		<td align=center><a href="loginForm.jsp" onclick="pwdfind();">비밀번호 찾기</a></td>
	</tr>
	<tr>
		<td colspan=2 align=center height=50>
			<b>회원이 아니시라면</b>
		</td>
	</tr>
	<tr>
		<td colspan=2 align=center height=50>
			<a href="signupForm.jsp">회원가입하기</a>
		</td>
	</tr>
	</table>
	</form>
</body>
</html>