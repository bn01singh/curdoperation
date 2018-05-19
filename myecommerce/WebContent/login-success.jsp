<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
   <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<title>view table</title>
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
<link rel="stylesheet" type="text/css" href="https://cdnjs.cloudflare.com/ajax/libs/twitter-bootstrap/4.0.0/css/bootstrap.css"/>
<link rel="stylesheet" type="text/css" href="https://cdn.datatables.net/1.10.16/css/dataTables.bootstrap4.min.css"/>
<script src="https://code.jquery.com/jquery-1.12.4.js"></script>
<script src="https://cdn.datatables.net/1.10.16/js/jquery.dataTables.min.js"></script>
<script src="https://cdn.datatables.net/1.10.16/js/dataTables.bootstrap4.min.js"></script>
<%@page import="com.loginDao.UserDao" %>
<%@page import="com.loginuser.User" %>
<%@page import="java.util.*" %>

</head>
<script>$(document).ready(function() {
    $('#example').DataTable();
} );</script>
<body class="container">

<%
    if ((session.getAttribute("email") == null) || (session.getAttribute("email") == "")) {
    	
    	response.sendRedirect("login.jsp");

} else {
%>
<h3>Welcome <%=session.getAttribute("email")%>
<a href='logout.jsp'>Log out</a>
<%
    }
%>


<%
List<User> list=UserDao.getAllRecords();	
request.setAttribute("list",list);
%>
<div>
<table id="example" class="table table-striped table-bordered" style="">
        <thead>
            <tr>
                <th>Name</th>
                <th>Email</th>
                <th>Gender</th>
                <th>Country</th>
                <th>Mobile No.</th>
                <th>Edit</th>
                <th>Delete</th>
            </tr>
        </thead>
        <tbody>
        <c:forEach items="${list}" var="u">
            <tr>
                <td>${u.getName()}</td>
                <td>${u.getEmail()}</td>
                <td>${u.getSex()}</td>
                <td>${u.getCountry()}</td>
                <td>${u.getMobile()}</td>
                <td><a href="editform.jsp?id=${u.getId()}">Edit</a></td>
                <td><a href="deleteuser.jsp?id=${u.getId()}">Delete</a></td>
            </tr>
            </c:forEach>
            
        </tbody>
        <tfoot>
            <tr>
                <th>Name</th>
                <th>Email</th>
                <th>Gender</th>
                <th>Country</th>
                <th>Mobile</th>
                <th>Edit</th>
                <th>Delete</th>
            </tr>
        </tfoot>
    </table>	
    </div>
</body>
</html>

