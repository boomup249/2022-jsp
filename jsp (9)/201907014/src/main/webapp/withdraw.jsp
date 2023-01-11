<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="dao.UserDAO" %>
<%
	request.setCharacterEncoding("utf-8");

    String uid = request.getParameter("eid");
    String luid = (String) session.getAttribute("id");
    
    UserDAO dao = new UserDAO();
    if (!uid.equals(luid)){
    	%>
 	   <script>
 	   alert("회원 본인만 탈퇴 가능합니다.");
 	   window.history.back();
 	   </script>
 	   <%
    	return;
    }
    
    if (dao.delete(uid)) {
    	%>
 	   <script>
 	   alert("탈퇴 완료");
 	   location.href = "loginForm.jsp";
 	   </script>
 	   <%
    }
    else {
    	%>
 	   <script>
 	   alert("탈퇴 처리중 오류가 발생했습니다");
 	   location.href = "main.jsp";
 	   </script>
 	   <%
    }
%>