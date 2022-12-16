<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Add Book</title>
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css">
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.1/jquery.min.js"></script>
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/js/bootstrap.min.js"></script>
</head>
<body>
    <div class="container">
        <h1>Add Book</h1>
        <form action="addok" method="post">
            <!--
            <table id="edit">
                <tr><td>Title</td><td><input type="text" name="title" /></td></tr>
                <tr><td>Writer</td><td><input type="text" name="writer" /></td></tr>
                <tr><td>Publisher</td><td><input type="text" name="publisher" /></td></tr>
                <tr><td>Price</td><td><input type="text" name="price" /></td></tr>
                <tr><td>Pages</td><td><input type="text" name="pages" /></td></tr>
                <tr><td>Sizes</td><td><input type="text" name="sizes" /></td></tr>
                <tr><td>Weight</td><td><input type="text" name="weight" /></td></tr>
                <tr><td>Topic</td><td><input type="text" name="topic" /></td></tr>
                <tr><td>Content</td><td><textarea cols="50" rows="5" name="content"></textarea></td></tr>
            </table>
            <button type="submit">등록하기</button>
            <button type="button" onclick="location.href='list'">목록보기</button>
            -->
            <div class="form-group">
                <label for="title">Title:</label>
                <input type="text" class="form-control" id="title" placeholder="Enter title" name="title">
            </div>
            <div class="form-group">
                <label for="writer">Writer:</label>
                <input type="text" class="form-control" id="writer" placeholder="Enter writer" name="writer">
            </div>
            <div class="form-group">
                <label for="publisher">Publisher:</label>
                <input type="text" class="form-control" id="publisher" placeholder="Enter publisher" name="publisher">
            </div>
            <div class="form-group">
                <label for="price">Price:</label>
                <input type="text" class="form-control" id="price" placeholder="Enter price" name="price">
            </div>
            <div class="form-group">
                <label for="pages">Pages:</label>
                <input type="text" class="form-control" id="pages" placeholder="Enter pages" name="pages">
            </div>
            <div class="form-group">
                <label for="sizes">Sizes:</label>
                <input type="text" class="form-control" id="sizes" placeholder="Enter sizes" name="sizes">
            </div>
            <div class="form-group">
                <label for="weight">Weight:</label>
                <input type="text" class="form-control" id="weight" placeholder="Enter weight" name="weight">
            </div>
            <div class="form-group">
                <label for="topic">Topic:</label>
                <input type="text" class="form-control" id="topic" placeholder="Enter topic" name="topic">
            </div>
            <div class="form-group">
                <label for="content">Content:</label>
                <textarea cols="50" rows="5" name="content" class="form-control" id="content" placeholder="Enter content"></textarea>
            </div>
            <button type="submit" class="btn btn-default">Add</button>
            <button type="button" class="btn btn-default" onclick="location.href='list'">List</button>
        </form>
    </div>
</body>
</html>
