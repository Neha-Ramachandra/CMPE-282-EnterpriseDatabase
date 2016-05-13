<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix ="c" uri="http://java.sun.com/jsp/jstl/core"  %>


<!DOCTYPE html>
<html>
<head>
 <style>
 .button
  {
  margin-top: 20px;
  margin-right: 20px;
  background-color: #006080;
  color: white;
  padding: 10px;
}
table {
  margin-top: 30px;
  margin-left: 100px;
    border-collapse: collapse;
    width: 80%;
}
center
{

	font-size: 60px;
	margin-top:30px;
	margin-bottom:10px;
    text-shadow:#ccc 0 1px 0, #c9c9c9 0 2px 0, #bbb 0 3px 0, #b9b9b9 0 4px 0, #aaa 0 5px 0,rgba(0,0,0,.1) 0 6px 1px, rgba(0,0,0,.1) 0 0 5px, rgba(0,0,0,.3) 0 1px 3px, rgba(0,0,0,.15) 0 3px 5px, rgba(0,0,0,.2) 0 5px 10px, rgba(0,0,0,.2) 0 10px 10px, rgba(0,0,0,.1) 0 20px 20px;
	color:#006080;

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
<center >Cloudacle Enterprise</center>
<input type="button" value="Logout" class="button" onclick="location.href='coverpage.html'" style="float: right ;  width: 5%; margin-top:-80px";>
<input type="button" value="Home" class="button" onclick="location.href='index.html'" >
<h2 style="color:#006080;text-align:center;margin-top:-60px";>Here are the employees of our company!</h2>
<h3 text-align="center">
<table>
<tr>
		<th>Employee Number</th>
		<th>First Name</th>
		<th>Extension</th>
		<th>Email</th>
		<th>Office Code</th>
		<th>Reports To</th>
		<th>Job Title</th>
	</tr>
	
    <c:forEach items="${employeedetails}" var="employeeModel">
        <tr>
            <td><c:out value="${employeeModel.getEmployeeNumber()}" /></td>
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
