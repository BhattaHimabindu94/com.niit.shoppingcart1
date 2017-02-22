<%@ page language="java" contentType="text/html; charset=ISO-8859-1" isELIgnored="false"
    pageEncoding="ISO-8859-1"%>
      <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
      
      
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Login</title>
<link rel="stylesheet" href="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/css/bootstrap.min.css" />
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.2/jquery.min.js"></script>
  <script src="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/js/bootstrap.min.js"></script>
  <style type="text/css">
  body{

background-repeat: no-repeat;
background-position: right top;

}
.colorgraph {
  height: 5px;
  border-top: 0;
  background: #c4e17f;
  border-radius: 5px;
  background-image: -webkit-linear-gradient(left, #c4e17f, #c4e17f 12.5%, #f7fdca 12.5%, #f7fdca 25%, #fecf71 25%, #fecf71 37.5%, #f0776c 37.5%, #f0776c 50%, #db9dbe 50%, #db9dbe 62.5%, #c49cde 62.5%, #c49cde 75%, #669ae1 75%, #669ae1 87.5%, #62c2e4 87.5%, #62c2e4);
  background-image: -moz-linear-gradient(left, #c4e17f, #c4e17f 12.5%, #f7fdca 12.5%, #f7fdca 25%, #fecf71 25%, #fecf71 37.5%, #f0776c 37.5%, #f0776c 50%, #db9dbe 50%, #db9dbe 62.5%, #c49cde 62.5%, #c49cde 75%, #669ae1 75%, #669ae1 87.5%, #62c2e4 87.5%, #62c2e4);
  background-image: -o-linear-gradient(left, #c4e17f, #c4e17f 12.5%, #f7fdca 12.5%, #f7fdca 25%, #fecf71 25%, #fecf71 37.5%, #f0776c 37.5%, #f0776c 50%, #db9dbe 50%, #db9dbe 62.5%, #c49cde 62.5%, #c49cde 75%, #669ae1 75%, #669ae1 87.5%, #62c2e4 87.5%, #62c2e4);
  background-image: linear-gradient(to right, #c4e17f, #c4e17f 12.5%, #f7fdca 12.5%, #f7fdca 25%, #fecf71 25%, #fecf71 37.5%, #f0776c 37.5%, #f0776c 50%, #db9dbe 50%, #db9dbe 62.5%, #c49cde 62.5%, #c49cde 75%, #669ae1 75%, #669ae1 87.5%, #62c2e4 87.5%, #62c2e4);
}
  .container { max-width: 360px; }
  
.errorblock {
 color: #ff0000;
 background-color: #ffEEEE;
 border: 3px solid #ff0000;
 padding: 8px;
 margin: 16px;
}
.logoutblock {
 color: blue;
 background-color: lightgreen;
 border: 3px solid blue;
 padding: 8px;
 margin: 16px;
}
</style>
</head>
<body>
<nav class="navbar navbar-inverse" style="background-color:purple;">
 
  <div class="container-fluid">
    
    <ul class="nav navbar-nav">
      <li><a href="home" style="color:white;font-weight:bold;">Home</a></li>
      
    </ul>
    <ul class="nav navbar-nav navbar-right">
      <li><a href="register" style="color:white;background-color:purple;"><span class="glyphicon glyphicon-log-in"></span> SignUp</a></li>
    </ul>
  </div>
</nav>
<div class="container">
<c:if test="${error=='true'}">
  <div class="errorblock">
   Invalid Username or Password
 
  </div>
 </c:if>
 <c:if test="${not empty logoutmsg }">
   <div class="logoutblock">
   <c:out value="${logoutmsg}" />
   </div>
 </c:if>
</div>
<div class="container">

<form role="form" action="j_spring_security_check" method="post" commandName="User" ><br><br><br><br>
<center style="font-size:20px;"><b>Login</b></center>
<hr class="colorgraph">
  <div class="input-group" style="margin-bottom: 25px" >
  
  <span class="input-group-addon" style="background-color:purple;color:white;"><i class="glyphicon glyphicon-user"></i></span>
    
    <input type="text"  name="username"  class="form-control" placeholder="Enter User Name" />
  </div>
  
  <div class="input-group" style="margin-bottom: 25px" >
  <span class="input-group-addon" style="background-color:purple;color:white;"><i class="glyphicon glyphicon-lock white" ></i></span>
    
    
    <input type="password" class="form-control" name="password" placeholder="Enter Password" /> 
  </div>	`
  
  <button type="submit"   class="btn btn-default" style="background-color:purple;color:white;font-weight:bold;">Submit</button>
</form>
<hr class="colorgraph">
<h4>New to application? <a href="register">Sign Up Here</a></h4>
</div>


<jsp:include page="footer.jsp"></jsp:include>
</body>
</html>
