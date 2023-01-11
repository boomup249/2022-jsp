
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="dao.UserDAO" %>
<%
	request.setCharacterEncoding("utf-8");
	String uname = request.getParameter("name");
	String id = request.getParameter("id");
	UserDAO dao = new UserDAO();
	String pwd = dao.findpwd(id, uname);
	
	if(pwd != null){
		%>
		<script>
		var id = "<%=id%>";
		var pw = "<%=pwd%>";
		alert(id + " 님의 비밀번호는 " + pw + " 입니다");
		window.close();
		</script>
		<%
	}
	else{
		%>
		<script>
		alert("회원 정보가 없습니다");
		window.history.back();
		</script>
		<%
		return;
	}
%>