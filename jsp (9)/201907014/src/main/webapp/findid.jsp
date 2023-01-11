<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="dao.UserDAO" %>
<%
	request.setCharacterEncoding("utf-8");
	String uname = request.getParameter("name");
	UserDAO dao = new UserDAO();
	String uid = dao.findid(uname);
	
	if(uid != null){
		%>
		<script>
		var id = "<%=uid%>";
		var name = "<%=uname%>";
		alert(name +" 님의 ID 는 " + id + " 입니다");
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