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
<h2>Here are the payment details of all the customers:</h2>
<table>
<tr>
		
		<th>Check number</th>
		<th>Amount</th>
		<th>Payment Date</th>

	</tr>
	
	
    <c:forEach items="${paymentdetails}" var="paymentModel">
        <tr>
            <td><c:out value="${paymentModel.getCheckNumber()}" /></td>
             <td><c:out value="${paymentModel.getAmount()}" /></td>
              <td><c:out value="${paymentModel.getPaymentDate()}" /></td>
              
               
           
        </tr>
    </c:forEach>
</table>
</body>
</html>

