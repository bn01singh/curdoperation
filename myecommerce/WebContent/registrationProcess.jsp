<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@page import="com.loginDao.UserDao" %>
<jsp:useBean id="u" class="com.loginuser.User"></jsp:useBean>  
<jsp:setProperty property="*" name="u"/>

<%
int i=UserDao.save(u);
if(i>0){
	response.sendRedirect("registration-success.jsp");
}
else
{
	response.sendRedirect("registration-error.jsp");
}
%>