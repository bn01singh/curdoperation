<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ page import="com.loginDao.UserDao" %>
<%@page import="com.loginDao.UserDao"%>  
<jsp:useBean id="u" class="com.loginuser.User"></jsp:useBean>  
<jsp:setProperty property="*" name="u"/>  
<%  
UserDao.update(u);  
response.sendRedirect("login-success.jsp");  
%>  