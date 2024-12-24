<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Update Page</title>
	<style>
		body {
        font-family: Arial, sans-serif;
        background-color: #f4f4f9;
        margin: 0;
        padding: 0;
        display: flex;
        justify-content: center;
        align-items: center;
        min-height: 100vh;
    }
    form {
        background-color: #f0b9b9;
        padding: 20px;
        border-radius: 8px;
        box-shadow: 0 2px 10px rgba(0, 0, 0, 0.1);
        max-width: 400px;
        width: 100%;
    }
    form pre {
        margin: 0;
    }
    input[type="text"], input[type="number"], input[type="password"] {
        width: calc(100% - 20px);
        padding: 8px;
        margin-bottom: 10px;
        border: 1px solid #ccc;
        border-radius: 4px;
    }
    input[type="submit"] {
        background-color: #007bff;
        color: #ffffff;
        border: none;
        padding: 10px;
        border-radius: 4px;
        cursor: pointer;
        width: 100%;
    }
    input[type="submit"]:hover {
        background-color: #0056b3;
    }
    a {
        color: #007bff;
        text-decoration: none;
    }
    a:hover {
        text-decoration: underline;
    }
	</style>
</head>
<body>
<form action="updateStudent" method="post">
        <h2>Update Student</h2>
        <label for="rollno">Roll No</label>
        <input type="number" name="rollno" id="rollno" value="${student.rollno}" readonly>
        <label for="name">Name</label>
        <input type="text" name="name" id="name" value="${student.name}" required>
        <label for="username">Username</label>
        <input type="text" name="username" id="username" value="${student.username}" required>
        <label for="password">Password</label>
        <input type="password" name="password" id="password" value="${student.password}" required>
        <input type="submit" value="Update">
    </form>
</body>
</html>