<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">

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
		<th>Employee Number</th>
		<th>Name</th>
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
             <td><c:out value="${employeerModel.getEmployeeName()}" /></td>
              <td><c:out value="${employeeModel.getExtension()}" /></td>
              <td><c:out value="${employeeModel.getEmail()}" /></td>
               <td><c:out value="${employeeModel.getOfficeCode()}" /></td>
                <td><c:out value="${employeeModel.getReportsTo()}" /></td>
                 <td><c:out value="${employeeModel.getJobTitle()}" /></td>
           
        </tr>
    </c:forEach>
</table>
</body>
</html>
