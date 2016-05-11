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
<table>
<tr>
		<th>Employee Number</th>
		<th>Last Name</th>
		<th>First Name</th>
		<th>Extension</th>
		<th>Email</th>
		<th>Office Code</th>
		<th>Reports To</th>
		<th>Job Title</th>
		<th></th>
	</tr>
	
    <c:forEach items="${employeedetails}" var="employeeModel">
        <tr>
            <td><c:out value="${employeeModel.getEmployeeNumber()}" /></td>
             <td><c:out value="${employeerModel.getLastName()}" /></td>
              <td><c:out value="${employeeModel.getFirstName()}" /></td>
               <td><c:out value="${employeeModel.getExtension()}" /></td>
              <td><c:out value="${employeeModel.getEmail()}" /></td>
               <td><c:out value="${employeeModel.getOfficeCode()}" /></td>
                <td><c:out value="${employeeModel.getReportsToEmployeeNumber()}" /></td>
                 <td><c:out value="${employeeModel.getJobTitle()}" /></td>
           
        </tr>
    </c:forEach>
</table>
</body>
</html>