<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html lang="en">
<head>
	<title>update</title>
	<meta charset="UTF-8">
	<meta name="viewport" content="width=device-width, initial-scale=1">
<!--===============================================================================================-->	
	<link rel="icon" type="image/png" href="static/images/icons/favicon.ico"/>
<!--===============================================================================================-->
	<link rel="stylesheet" type="text/css" href="static/vendor/bootstrap/css/bootstrap.min.css">
<!--===============================================================================================-->
	<link rel="stylesheet" type="text/css" href="static/fonts/font-awesome-4.7.0/css/font-awesome.min.css">
<!--===============================================================================================-->
	<link rel="stylesheet" type="text/css" href="static/vendor/animate/animate.css">
<!--===============================================================================================-->	
	<link rel="stylesheet" type="text/css" href="static/vendor/css-hamburgers/hamburgers.min.css">
<!--===============================================================================================-->
	<link rel="stylesheet" type="text/css" href="static/vendor/select2/select2.min.css">
<!--===============================================================================================-->
	<link rel="stylesheet" type="text/css" href="static/css/util.css">
	<link rel="stylesheet" type="text/css" href="static/css/main.css">
<!--===============================================================================================-->
</head>
<body>
	<%@ page import="com.loginDao.UserDao" %>
	<%@ page import="com.loginuser.User" %>
	
	<%
	String id=request.getParameter("id");
	 User u=UserDao.getAllRecordById(Integer.parseInt(id));
	%>
	<div class="limiter">
		<div class="container-login100">
			<div class="wrap-login100">
				
				<form class="login100-form validate-form" action="editprocess.jsp" method="post">
					<span class="login100-form-title">
						Member registration
					</span>
					<div class="wrap-input100 validate-input" data-validate = "Valid name is required: Narayan singh">
						<input class="input100" type="text" name="name" placeholder="Name" value="<%=u.getName() %>"/>
						<span class="focus-input100"></span>
						<span class="symbol-input100">
							<i class="fa fa-user" aria-hidden="true"></i>
						</span>
					</div>
				
					<div class="wrap-input100 validate-input" data-validate = "Valid email is required: ex@abc.xyz">
						<input class="input100" type="email" name="email" placeholder="Email" value="<%=u.getEmail() %>"/>
						<span class="focus-input100"></span>
						<span class="symbol-input100">
							<i class="fa fa-envelope" aria-hidden="true"></i>
						</span>
					</div>

					<div class="wrap-input100 validate-input" data-validate = "Password is required">
						<input class="input100" type="password" name="password" placeholder="Password" value="<%= u.getPassword() %>"/>
						<span class="focus-input100"></span>
						<span class="symbol-input100">
							<i class="fa fa-lock" aria-hidden="true"></i>
						</span>
					</div>
					<div class="wrap-input100 validate-input" data-validate = "Valid sex is required: m/l">		
						<input class="input100" type="text" name="sex" placeholder="gender" value="<%= u.getSex() %>"/>   
						<span class="focus-input100"></span>
						<span class="symbol-input100">
							<i class="fa fa-mobile" aria-hidden="true" style="font-size:20px"></i>
						</span>
					</div>
					
					<div class="wrap-input100 validate-input" data-validate = "Valid sex is required: 8051574055">
						<input class="input100" type="text" name="mobile" placeholder="Mobile number" value="<%= u.getMobile() %>"/>
						<span class="focus-input100"></span>
						<span class="symbol-input100">
							<i class="fa fa-mobile" aria-hidden="true" style="font-size:20px"></i>
						</span>
					</div>
					
					<div class="wrap-input100 validate-input" data-validate = "Valid email is required: ex@abc.xyz">
						<input class="input100" type="text" name="country" placeholder="Country" value="<%= u.getCountry() %>"/>
						<span class="focus-input100"></span>
						<span class="symbol-input100">
							<i class="fa fa-flag" aria-hidden="true"></i>
						</span>
					</div>
					<input type="hidden" name="id" value='<%= request.getParameter("id") %>'>
					<div class="container-login100-form-btn">
						<button type="submit" class="login100-form-btn">
							UPDATE
						</button>
					</div>
				</form>
				
				<div class="login100-pic js-tilt" data-tilt><br/><br/><br/>
					<img src="static/images/img-01.png" alt="IMG">
				</div>
			</div>
		</div>
	</div>
	
	

	
<!--===============================================================================================-->	
	<script src="static/vendor/jquery/jquery-3.2.1.min.js"></script>
<!--===============================================================================================-->
	<script src="static/vendor/bootstrap/js/popper.js"></script>
	<script src="static/vendor/bootstrap/js/bootstrap.min.js"></script>
<!--===============================================================================================-->
	<script src="static/vendor/select2/select2.min.js"></script>
<!--===============================================================================================-->
	<script src="static/vendor/tilt/tilt.jquery.min.js"></script>
	<script >
		$('.js-tilt').tilt({
			scale: 1.1
		})
	</script>
<!--===============================================================================================-->
	<script src="static/js/main.js"></script>

</body>
</html>