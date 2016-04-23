<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix ="c" uri="http://java.sun.com/jsp/jstl/core"  %>

<!DOCTYPE HTML>
<html>
<head>
<title>Payment Details Of the Customer</title>
</head>
<body>
<h2>Here are the payment details:</h2>
<table>
<tr>
		<th>Check Number</th>
		<th>Amount</th>
		<th>Payment Date</th>

	</tr>
	
	
    <c:forEach items="${paymentinfo}" var="paymentModel">
        <tr>
            <td><c:out value="${paymentModel.getCheckNumber()}" /></td>
             <td><c:out value="${paymentModel.getAmount()}" /></td>
              <td><c:out value="${paymentModel.getPaymentDate()}" /></td>    
        </tr>
    </c:forEach>
</table>
</body>
</html>


