<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>ALL DATA</title>
	<style >
		table {
		border: 2;
        border-collapse: collapse;
        width: 80%;
        margin: 20px auto;
        background-color: #f0b9b9;
        box-shadow: 0 2px 10px rgba(0, 0, 0, 0.1);
    }
    th, td {
        border: 1px solid #ccc;
        text-align: left;
        padding: 8px;
    }
    th {
        background-color: #f8f9fa;
    }
    td a {
        display: inline-block;
        padding: 5px 10px;
        background-color: #007bff;
        color: #ffffff;
        border-radius: 4px;
    }
    td a:hover {
        background-color: #0056b3;
    }
	</style>
</head>
<body>
	 
	<table >
		<tr>
			<td>ROLLNO</td>
			<td>NAME</td>
			<td>USERNAME</td>
			<td>PASSWORD</td>
			<td>ACTION</td>
			<td>UPDATE DATA</td>
		</tr>
		
		<c:forEach items="${data}" var="s">
			<tr>
				<td>${s.rollno}</td>
				<td>${s.name }</td>
				<td>${s.username }</td>
				<td>${s.password }</td>
				<td> <a href="delete?rollno=${s.rollno}">DELETE</a></td>
				<td><a href="update?rollno=${s.rollno}">UPDATE</a></td>
		   </tr>
		</c:forEach>
	</table>
</body>
</html>