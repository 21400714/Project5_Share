<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" isELIgnored="false" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Edit Book</title>
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css">
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.1/jquery.min.js"></script>
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/js/bootstrap.min.js"></script>
</head>
<body>
<div class="container">
    <h1>Edit Book</h1>
    <form:form modelAttribute="bookVO" action="../editok" method="post">
        <form:hidden path="sid" />
        <div class="form-group">
            <label for="title">Title:</label>
            <form:input path="title" class="form-control" />
        </div>
        <div class="form-group">
            <label for="writer">Writer:</label>
            <form:input path="writer" class="form-control" />
        </div>
        <div class="form-group">
            <label for="publisher">Publisher:</label>
            <form:input path="publisher" class="form-control" />
        </div>
        <div class="form-group">
            <label for="price">Price:</label>
            <form:input path="price" class="form-control" />
        </div>
        <div class="form-group">
            <label for="pages">Pages:</label>
            <form:input path="pages" class="form-control" />
        </div>
        <div class="form-group">
            <label for="sizes">Sizes:</label>
            <form:input path="sizes" class="form-control" />
        </div>
        <div class="form-group">
            <label for="weight">Weight:</label>
            <form:input path="weight" class="form-control" />
        </div>
        <div class="form-group">
            <label for="topic">Topic:</label>
            <form:input path="topic" class="form-control" />
        </div>
        <div class="form-group">
            <label for="content">Content:</label>
            <form:textarea cols="50" rows="5" path="content" class="form-control" />
        </div>
        <button type="submit" class="btn btn-default">Edit</button>
        <button type="button" class="btn btn-default" onclick="history.back()">Back</button>
    </form:form>
</div>
</body>
</html>
