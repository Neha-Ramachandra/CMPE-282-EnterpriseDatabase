<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix ="c" uri="http://java.sun.com/jsp/jstl/core"  %>




<!DOCTYPE html>
<html>
<head>
 <style>
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
<h2>Here are the order details:</h2>
<table>
<tr>
		<th>Order Id</th>
		<th>Order Date</th>
		<th>Required Date</th>
		<th>Shipped Date</th>
		<th>Status</th>
	</tr>
	
	
    <c:forEach items="${orderdetails}" var="orderModel">
        <tr>
            <td><c:out value="${orderModel.getOrderNumber()}" /></td>
             <td><c:out value="${orderModel.getOrderDate()}" /></td>
              <td><c:out value="${orderModel.getRequiredDate()}" /></td>
              <td><c:out value="${orderModel.getShippedDate()}" /></td>
               <td><c:out value="${orderModel.getStatus()}" /></td>
               
           
        </tr>
    </c:forEach>
</table>
</body>
</html>
