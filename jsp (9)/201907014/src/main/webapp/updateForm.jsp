<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.sql.*" %>
<%@ page import="java.util.*" %>
<%@ page import="dao.*" %>

<%
	String uid = (String) session.getAttribute("id");
	if (uid == null) {
	    response.sendRedirect("loginForm.jsp");
	    return;
	}
	UserDAO dao = new UserDAO();
	UserBean user = dao.getUser(uid);
%>
   
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
</head>
<body>
<form action="update.jsp" method="post">
<table align=center>
<tr><td colspan=2 align=center height=40><b>회원정보 수정</b><td></tr>
<tr>
    <td align=right>아이디&nbsp;</td>
    <td><input type="text" name="id" value=<%=user.getId()%> readonly></td>
</tr>
<tr>
    <td align=right>패스워드&nbsp;</td>
    <td><input type="password" name="ps" value=<%=user.getPs()%>></td>
</tr>
<tr> 
    <td align=right>패스워드(확인)&nbsp;</td>
    <td><input type="password" name="ps2" value=<%=user.getPs()%>></td>
</tr>
<tr>
    <td align=right>이름&nbsp;</td>
    <td><input type="text" name="name" value=<%=user.getName()%>></td> 
</tr> 
<tr>
    <td colspan=2 align=center height=50>
        <input type="submit" value="회원정보수정하기">
    </td>
</tr>
</table>
</form>
</body>
</html>