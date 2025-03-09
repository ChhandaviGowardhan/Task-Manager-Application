<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<!DOCTYPE html>
<html>
<head>
    <meta charset="ISO-8859-1">
    <title>Task List</title>

    <link rel="stylesheet"
        	href="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css">
    <link rel="stylesheet"
        href="https://cdnjs.cloudflare.com/ajax/libs/toastr.js/latest/toastr.min.css">
    <script
    	src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
    <script
    	src="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>
    <script
        src="https://cdnjs.cloudflare.com/ajax/libs/toastr.js/latest/toastr.min.js"></script>

    <style>
        a {
            color: white;
            text-decoration: none;
        }
        a:hover {
            text-decoration: none;
        }
    </style>

</head>
<body>

    <div class="container">

        <!-- Centering the title -->
        <div class="d-flex justify-content-center">
            <h1 class="p-3">Task List</h1>
        </div>

        <table class="table table-bordered">
            <tr>
                <th>ID</th>
                <th>Task Title</th>
                <th>Due Date</th>
                <th>Status</th>
                <th>Actions</th>
            </tr>

            <c:forEach var="todo" items="${list}">
                <tr>
                    <td>${todo.id}</td>
                    <td>${todo.title}</td>
                    <td>${todo.date}</td>
                    <td>${todo.status}</td>
                    <td>
                        <a href="/updateToDoStatus/${todo.id}" class="btn btn-success">Mark Complete</a>
                        <a href="/editToDoItem/${todo.id}" class="btn btn-primary">Edit</a>
                        <a href="/deleteToDoItem/${todo.id}" class="btn btn-danger">Delete</a>
                    </td>
                </tr>
            </c:forEach>
        </table>

        <a href="/addToDoItem" class="btn btn-primary btn-block">Add New Task</a>

    </div>

</body>
</html>
