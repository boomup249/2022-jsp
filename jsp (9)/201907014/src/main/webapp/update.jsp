<%@page import="java.util.function.Function"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="dao.UserDAO" %>
<%
	request.setCharacterEncoding("utf-8");
%>

<%-- 회원정보 수정 기능 구현 --%>

	<jsp:useBean id="user" class="dao.UserBean">
		<jsp:setProperty name="user" property="*" />
	</jsp:useBean>
<%  
	String uid = request.getParameter("id");
	String upass = request.getParameter("ps");
	String cupass = request.getParameter("ps2");
	String uname = request.getParameter("name"); 
    UserDAO dao = new UserDAO();
   if(!upass.equals(cupass)){
    	%>
 	   <script>
 	   alert("비밀번호가 일치하지 않습니다.");
 	   location.href = "updateForm.jsp";
 	   </script>
 	   <%
 	   return;
    }
   
   if (dao.update(user)) {
	   %>
	   <script>
	   alert("회원정보 수정 완료");
	   location.href = "main.jsp";
	   </script>
	   <%
  	}
   else {
	   %>
	   <script>
	   alert("회원정보 수정 중 오류가 발생했습니다");
	   location.href = "main.jsp";
	   </script>
	   <%
	   }
   
%>