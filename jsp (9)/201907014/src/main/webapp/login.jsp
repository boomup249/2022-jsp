<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="dao.UserDAO" %>
<%
	request.setCharacterEncoding("utf-8");

    String uid = request.getParameter("id");
    String upass = request.getParameter("ps");
    
    UserDAO dao = new UserDAO();
    
    int code = dao.login(uid, upass);
    if (code == 1) {
    	%>
 	   <script>
 	   alert("아이디가 일치하지 않습니다");
 	   window.history.back();
 	   </script>
 	   <%
    }
    else if (code == 2) {
    	%>
 	   <script>
 	   alert("비밀번호가 일치하지 않습니다");
 	   window.history.back();
 	   </script>
 	   <%
    }
    else {
	    session.setAttribute("id", uid);
	    %>
	 	   <script>
	 	   var text ="<%=uid%>"; 
	 	   alert(text + " 님 환영합니다.");
	 	   location.href = "main.jsp";
	 	   </script>
	 	   <%
    }
%>