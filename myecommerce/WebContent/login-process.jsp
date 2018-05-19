<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@page import="com.loginDao.UserDao"%>  
<jsp:useBean id="u" class="com.loginuser.User"/>  
  
<jsp:setProperty property="*" name="u"/>  
  
<%  
boolean status=UserDao.login(u);  
if(status){
	String email=request.getParameter("email");    
	  
	session.setAttribute("email",email);  
	response.sendRedirect("login-success.jsp");

}
else
{
	out.println("invalid password <a href='login.jsp'>go to login</a>");
}
%>