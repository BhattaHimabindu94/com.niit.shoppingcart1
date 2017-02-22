<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Login</title>
<link rel="stylesheet" href="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/css/bootstrap.min.css" />
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.2/jquery.min.js"></script>
  <script src="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/js/bootstrap.min.js"></script>
  <style>
   body{

background-repeat: no-repeat;
background-position: right top;
background: url("<c:url value="/resources/images/background1.jpg" />")
}
  .container { max-width: 360px; }
  </style>
  </head>
<body>
<nav class="navbar navbar-inverse" style="background-color:purple;">
  <div class="container-fluid">
   
    <ul class="nav navbar-nav">
      <li><a href="home"  style="color:white;">Home</a></li>
      <li><a href="viewproducts"  style="color:white;">View Products</a></li>
    </ul>
    <ul class="nav navbar-nav navbar-right">
           <li><a href="login"  style="color:white;"><span class="glyphicon glyphicon-log-in"></span> Login</a></li>
    </ul>
  </div>
</nav>
			<div class="container">
			<div class="row">
			<div class="panel panel-primary " style="border-color:purple;">
				<div class="panel-body">
				<form:form commandName="UserDetails" method="post" action="storeUser">
					<div class="form-group">
						<label for="username">UserName:</label>
						<form:errors path="username" cssStyle="color: #ff0000" />
						<form:input path="username" id="username" class="form-Control" />
					</div>

					<div class="form-group">
						<label for="password">Password:</label> 
						<form:errors path="password" cssStyle="color: #ff0000" />
						<form:input type="password" path="password" id="password"
							class="form-Control" />
					</div>
					<div class="form-group">
						<label for="confirmpassword">Confirm Password:</label>
						<form:errors path="confirmpassword" cssStyle="color: #ff0000" />
						<form:input type="password" path="confirmpassword" id="password"
							class="form-Control" />
					</div>
					<div class="form-group">
						<label for="mailid">Email:</label>
						<form:errors path="mailid" cssStyle="color: #ff0000" />
						<form:input type="email" pattern="[^ @]*@[^ @]*" path="mailid" id="email" class="form-Control" />
					</div>
					<div class="form-group">
						<label for="phone">Mobile number:</label>
						<form:errors path="phone" cssStyle="color: #ff0000" />
						<form:input path="phone" id="phone" class="form-Control" />
					</div>
					<div class="form-group">
						<label for="address">Address:</label>
						<form:errors path="address" cssStyle="color: #ff0000" />
						<form:input path="address" id="address" class="form-Control" />
					</div>
			<button type="submit" class="btn btn-default" style="background-color:purple;color:white;">Submit</button>
			</form:form>			
			</div>
	<jsp:include page="footer.jsp"></jsp:include>

		</body>
</html>