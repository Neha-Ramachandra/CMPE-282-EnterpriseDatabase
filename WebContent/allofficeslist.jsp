<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>

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
<h2>Here are the office details:</h2>
<table>
<tr>
		<th>Office Code</th>
		<th>City</th>
		<th>Phone</th>
		<th>Address</th>
		<th>State</th>
		<th>Country</th>
		<th>Postal Code</th>
		<th>Territory</th>
	</tr>
	
	
    <c:forEach items="${officedetails}" var="officeModel">
        <tr>
            <td><c:out value="${officeModel.getOfficeCode()}" /></td>
             <td><c:out value="${officeModel.getOfficeCity()}" /></td>
              <td><c:out value="${officeModel.getPhone()}" /></td>
              <td><c:out value="${officeModel.getAddressLine1()}" /></td>
               <td><c:out value="${officeModel.getState()}" /></td>
               <td><c:out value="${officeModel.getCountry()}" /></td>
	        <td><c:out value="${officeModel.getPostalCode()}" /></td>
		<td><c:out value="${officeModel.getTerritory()}" /></td>
        </tr>
    </c:forEach>
</table>
</body>
</html>
