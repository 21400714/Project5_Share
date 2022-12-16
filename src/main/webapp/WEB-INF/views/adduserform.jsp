<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Create your account</title>
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css">
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.1/jquery.min.js"></script>
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/js/bootstrap.min.js"></script>
</head>
<body>
<div class="container">
    <h1>Create your account</h1>
    <form action="adduserok" method="post">
        <div class="form-group">
            <label for="userid">ID:</label>
            <input type="text" class="form-control" id="userid" placeholder="Enter ID" name="userid">
        </div>
        <div class="form-group">
            <label for="password">Password:</label>
            <input type="password" class="form-control" id="password" placeholder="Enter password" name="password">
        </div>
        <div class="form-group">
            <label for="username">Name:</label>
            <input type="text" class="form-control" id="username" placeholder="Enter name" name="username">
        </div>
        <button type="submit" class="btn btn-default">Create</button>
        <button type="button" class="btn btn-default" onclick="history.back()">Back</button>
    </form>
</div>
</body>
</html>
