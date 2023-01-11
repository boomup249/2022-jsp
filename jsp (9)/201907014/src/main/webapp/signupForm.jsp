<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
</head>
<body>
<script src="https://www.google.com/recaptcha/api.js" async defer></script>
<script type = "text/javascript">
function check(id){	
	if (id == ""){
		alert("id를 입력하세요");
		return false;
	}
	url = "check.jsp?id="+id;
	window.open(url,'_blank', 'toolbar=no,status=no,menubar=no,scrollbars=no,resizable=no,left=700, top=0, width=500, height=200, visible=none', '');
}
function onSubmit() {
	if (grecaptcha.getResponse().length == 0) {
		alert('reCAPTCHA를 확인해 주세요.');
		return false;
	}
	
	return true;
}
</script>
<form action="signup.jsp" method="post" onsubmit="return onSubmit();">
<table align=center>
<tr><td colspan=2 align=center height=40><b>회원가입</b><td></tr>
<tr>
    <td align=right>아이디&nbsp;</td>
    <td><input type="text" name="id" id="id" placeholder="Email address" required></td>
    <td><input type = "button" value = "중복 확인" onclick = "check(this.form.id.value)"></td>
</tr>
<tr>
    <td align=right>패스워드&nbsp;</td>
    <td><input type="password" name="ps" required></td>
</tr>
<tr> 
    <td align=right>패스워드(확인)&nbsp;</td>
    <td><input type="password" name="ps2" required></td>
</tr>
<tr>
    <td align=right>이름&nbsp;</td>
    <td><input type="text" name="name" required></td> 
</tr>
<tr>
<tr>	
    <td colspan=2><div class="g-recaptcha" data-sitekey="6LffpnoUAAAAAABgLv2eqcQ34mSpD70nkO9V1LRo"></div></td> 
</tr>
<tr>
    <td colspan=2 align=center height=50>
        <input type="submit" value="회원가입하기">
    </td>
</tr>
</table>
</form>
</body>
</html>