<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
     <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
     <!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
     
<html>
     
<head>
<meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.1.1/jquery.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
<style>@media only screen and (max-width: 800px) {
    
    /* Force table to not be like tables anymore */
	#no-more-tables table, 
	#no-more-tables thead, 
	#no-more-tables tbody, 
	#no-more-tables th, 
	#no-more-tables td, 
	#no-more-tables tr { 
		display: block; 
	}
 
	/* Hide table headers (but not display: none;, for accessibility) */
	#no-more-tables thead tr { 
		position: absolute;
		top: -9999px;
		left: -9999px;
	}
	table{
	margin: 0 auto !important;
  float:center;}
 
	#no-more-tables tr { border: 1px solid #ccc; }
 
	#no-more-tables td { 
		/* Behave  like a "row" */
		border: none;
		border-bottom: 1px solid #eee; 
		position: relative;
		padding-left: 50%; 
		
		white-space: normal;
		text-align:left;
	}
 
	#no-more-tables td:before { 
		/* Now like a table header */
		position: absolute;
		/* Top/left values mimic padding */
		top: 6px;
		left: 6px;
		width: 45%; 
		padding-right: 10px; 
		white-space: nowrap;
		text-align:left;
		font-weight: bold;
	}
 
	/*
	Label the data
	*/
	#no-more-tables td:before { content: attr(data-title); }
}</style>
</head>
<body>
<jsp:include page="header.jsp"></jsp:include>
<form action="saveAll">

<div class="container">
<table style="align:center;" class="col-md-4  table-condensed cf">
<tr><td>Id:</td><td><input type="text" name="id"></td></tr>
<tr><td>Name:</td><td><input type="text" name="name"></td></tr>
<tr><td>Description:</td><td><input type="text" name="desc"></td></tr>
<tr><td></td><td><button type="submit" class="btn btn-primary">Add Category</td></button>
</table></div><br><div class="container">
    <div class="row">
        <div class="col-md-12">
            
        </div>
        <div id="no-more-tables">
            <table class="col-md-12 table-bordered table-striped table-condensed cf">
        		<thead class="cf">
        			<tr>
        			<c:if test="${not empty categorylist }">
        				<th style="text-align:center;" class="numeric">Id</th>
                        <th style="text-align:center;" class="numeric">name</th>
                        <th style="text-align:center;" class="numeric">description</th>
                        <th style="text-align:center;" class="numeric">edit</th>
                        <th style="text-align:center;" class="numeric">delete</th>
        				
        				
        				
        			</tr>
        		</thead>
        		<tbody>
        			<tr>
        			<c:forEach items="${categorylist }" var="category">
        				<td style="text-align:center;" data-title="Id" class="numeric">${category.id }</td>
                         <td  style="text-align:center;" data-title="name" class="numeric">${category.name }</td>
                         <td  style="text-align:center;" data-title="description" class="numeric">${category.description }</td>
                          <td style="text-align:center;" data-title="edit" class="numeric"><a href="<c:url value='/manage_category_edit/${category.id }'/>">Edit</a></td>
                           <td style="text-align:center;" data-title="delete" class="numeric"><a href="<c:url value='/delete/${category.id }'/>">Delete</a></td>

        			</tr>
        			</c:forEach>
        			  		</tbody>
        	</table>
        	</c:if>
        </div>
    </div>
   <jsp:include page="footer.jsp"></jsp:include> 
  
</div>
</form>
</body>
</html>