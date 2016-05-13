<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix ="c" uri="http://java.sun.com/jsp/jstl/core"  %>



<!DOCTYPE html>
<html>
<head>
 <style>
.button  {
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
		<th>Customer Id</th>
		<th>Name</th>
		<th>Address</th>
		<th>City</th>
		<th>Country</th>
		<th>Postal Code</th>
		<th>Phone</th>
		<th>Credit-Limit</th>
		<th></th>
	</tr>
	
	
    <c:forEach items="${customerdetails}" var="customerModel">
        <tr>
            <td><c:out value="${customerModel.getCustomerNumber()}" /></td>
             <td><c:out value="${customerModel.getCustomerName()}" /></td>
              <td><c:out value="${customerModel.getAddressLine1()}" /></td>
              <td><c:out value="${customerModel.getCity()}" /></td>
               <td><c:out value="${customerModel.getCountry()}" /></td>
                <td><c:out value="${customerModel.getPostalCode()}" /></td>
                 <td><c:out value="${customerModel.getPhone()}" /></td>
                  <td><c:out value="${customerModel.getCreditLimit()}" /></td>
           
        </tr>
    </c:forEach>
</table>
</body>
</html>

