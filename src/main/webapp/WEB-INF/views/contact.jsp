<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="x" %><html>
<head>
<style>
footer {
    padding: 1em;
    color: white;
    background-color: black;
    clear: left;
    text-align: center;
}

</style>
<meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.1.1/jquery.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script></head>
<body>
<nav class="navbar navbar-inverse" style="background-color: purple; border-color:white">
  <div class="container-fluid">
    <div class="navbar-header">
      <a class="navbar-brand" href="home" style="color:white;font-weight:bold;">Home</a>
    </div>
   
    
       </div>
       </nav>
       
    <div class="container">
        <div class="row">
            <div class="col-sm-12 col-lg-12">
                <center><h1 class="h1">
                    Contact us </h1></center>
            </div>
        </div>
    </div>


        <div class="col-md-4">
            <form>
           
            <legend><span class="glyphicon glyphicon-globe"></span> Our office</legend>
            <address>
                <strong>4th Floor, 
                Pavans Vanijya Vihar, 
                Ameerpet Road, 
                Above Sri Krishna Sweets,
                Ameerpet, Hyderabad, Telangana 500016<br>
                <abbr title="Phone">
                    P:</abbr>
                (123) 456-7890
            </address>
            <address>
                <strong>Mail To</strong><br>
                <a href="mailto:#">hiimabindu@niit.com</a>
            </address>
            
            </form>
        </div>
    </div>
</div>
 <jsp:include page="footer.jsp"></jsp:include>
</body>
</html>
