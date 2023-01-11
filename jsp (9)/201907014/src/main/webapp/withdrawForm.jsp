<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
<%
    String uid = (String) session.getAttribute("id");
    if (uid == null) {
        response.sendRedirect("loginForm.jsp");
        return;
    }
%>    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<script src="https://www.google.com/recaptcha/api.js" async defer></script>
<script>
function onSubmit() {
	if (grecaptcha.getResponse().length == 0) {
		alert('reCAPTCHA를 확인해 주세요.');
		return false;
	}
	
	return true;
}
</script>
</head>
<body>
	<form action="withdraw.jsp" method="post" onsubmit="return onSubmit();">
	<table align=center>
	<tr><td colspan=2 align=center height=40><b>회원탈퇴</b><td></tr>
	<tr>
		<td align=right>아이디&nbsp;</td>
		<td><input type="text" name="eid" placeholder="Email address" required></td>
	</tr>
	<tr>	
    <td colspan=2><div class="g-recaptcha" data-sitekey="6LffpnoUAAAAAABgLv2eqcQ34mSpD70nkO9V1LRo"></div></td> 
	</tr>
	<tr>
		<td colspan=2 align=center height=50>
			<input type="submit" value="회원탈퇴하기">
		</td>
	</tr>
	</table>
	</form>
</body>
</html>