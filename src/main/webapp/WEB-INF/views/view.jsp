<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" isELIgnored="false" %>
<html>
<head>
    <meta charset="UTF-8">
    <title>View Book</title>
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css">
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.1/jquery.min.js"></script>
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/js/bootstrap.min.js"></script>
</head>
<body>
<div class="container">
    <h1>View Book</h1>
    <div class="form-group">
        <label>Title:</label>${book.title}
    </div>
    <div class="form-group">
        <label>Writer:</label>${book.writer}
    </div>
    <div class="form-group">
        <label>Publisher:</label>${book.publisher}
    </div>
    <div class="form-group">
        <label>Price:</label>${book.price}
    </div>
    <div class="form-group">
        <label>Pages:</label>${book.pages}
    </div>
    <div class="form-group">
        <label>Sizes:</label>${book.sizes}
    </div>
    <div class="form-group">
        <label>Weight:</label>${book.weight}
    </div>
    <div class="form-group">
        <label>Topic:</label>${book.topic}
    </div>
    <div class="form-group">
        <label>Register Date:</label>${book.regdate}
    </div>
    <div class="form-group">
        <label>Content:</label>${book.content}
    </div>
    <button type="button" class="btn btn-default" onclick="location.href='../editform/${book.sid}'">Edit</button>
    <button type="button" class="btn btn-default" onclick="history.back()">Back</button>
</div>
</body>
</html>
