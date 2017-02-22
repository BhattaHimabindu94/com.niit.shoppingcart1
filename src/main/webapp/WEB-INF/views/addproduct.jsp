<%@taglib uri="http://www.springframework.org/tags/form" prefix="form" %>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="x" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
  <link rel="stylesheet" href="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.4/jquery.min.js"></script>
  <script src="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
<link rel="stylesheet"
	href="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/css/bootstrap.min.css">
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.4/jquery.min.js"></script>
<script
	src="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/js/bootstrap.min.js"></script>
<title>Add a product</title>
</head>
<body>
<nav class="navbar navbar-inverse" style="background-color:purple;">
  <div class="container-fluid">
    
    
    <ul class="nav navbar-nav navbar-right">
  <li><a href='<x:url value="j_spring_security_logout"/>' style="color:white;"><span class="glyphicon glyphicon-log-out"></span> Logout</a></li>
    </ul>
  </div>
</nav>
<h2>Add a Product</h2>
    <div class="container" ng-app="imgApp" ng-controller="imgCtrl">
    <c:url var="addproduct" value="addProduct"></c:url>
   <form:form commandName="Product" method="post" action="storeproduct" enctype="multipart/form-data">
       <table class="table table-bordered" >
           <tr><td><form:label path="name">Book Name :</form:label></td>
               <td><form:input path="name"/>
               <font color="red"><form:errors path="name"></form:errors></font></td>
           </tr>
           <tr><td><form:label path="Description">Product Description :</form:label></td>
               <td><form:input path="Description"/>
               <font color="red"><form:errors path="Description"></form:errors></font></td>
           </tr>           
           <tr><td><form:label path="Price">Product Price:</form:label></td>
               <td><form:input path="Price"/>
               <font color="red"><form:errors path="Price"></form:errors></font></td>
           </tr>
           <tr><td><form:label path="primarymaterial">Product Primary Material :</form:label></td>
               <td><form:input path="primarymaterial"/>
               <font color="red"><form:errors path="Description"></form:errors></font></td>
           </tr>           
           <tr><td><form:label path="style">Product Style :</form:label></td>
               <td><form:input path="style"/>
               <font color="red"><form:errors path="Description"></form:errors></font></td>
           </tr>           
           <tr><td><form:label path="warranty">Product Warranty :</form:label></td>
               <td><form:input path="warranty"/>
               <font color="red"><form:errors path="Description"></form:errors></font></td>
           </tr>           
           <tr><td><form:label path="capacity">Product Capacity :</form:label></td>
               <td><form:input path="capacity"/>
               <font color="red"><form:errors path="Description"></form:errors></font></td>
           </tr>           
           <tr><td><form:label path="img">Product Image:</form:label></td>
               <td><form:input path="img" type="file"/>
               <font color="red"><form:errors path="img"></form:errors></font></td>  
           </tr>
           <tr><td><form:label path="supplier">Product Name:</form:label></td>
               <td><select name="Supplier.id">
   				 <option value="">---Select---</option>
   				 <c:forEach var="Supplier" items="${suppliers}">
   				 <option value="${Supplier.id}">${Supplier.supname}</option>
    		</c:forEach>
    		</select></td></tr>
             <td><input type="submit" value="Add Product" class="btn-success"/></td>
       </table>
   </form:form> 
   </div>
   	
  <jsp:include page="footer.jsp"></jsp:include> 
</body>
</html>