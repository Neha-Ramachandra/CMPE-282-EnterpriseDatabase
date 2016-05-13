<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix ="c" uri="http://java.sun.com/jsp/jstl/core"  %>


<!DOCTYPE html>
<html>
<head>
 <style>
  .button{
  margin-top: 20px;
  margin-right: 20px;
  background-color: #006080;
  color: white;
  padding: 10px;
}
table {
	margin-top: 200px;
	margin-left: 100px;
    border-collapse: collapse;
    width: 80%;
}

th, td {
    text-align: left;
    padding: 8px;
}

tr:nth-child(even){background-color: #f2f2f2}

th {
    background-color: #006080;
    color: white;
}
</style>
</head>
<body background="../images/login-background.jpg">
<input type="button" value="Logout" class="button" />
<table>
<tr>
		<th>Product Line</th>
		<th>HTML Description</th>
		<th>Text Description</th>
		<th>Image</th>
		<th></th>
	</tr>
	
	
    <c:forEach items="${productlines}" var="productLineModel">
        <tr>
            <td><c:out value="${productLineModel.getProductLine()}" /></td>
             <td><c:out value="${productLineModel.getHtmlDescription()}" /></td>
             <td><c:out value="${productLineModel.getTextDescription()}" /></td>
              <td><c:out value="${productLineModel.getImage()}" /></td>
             
           
        </tr>
    </c:forEach>
</table>
</body>
</html>



