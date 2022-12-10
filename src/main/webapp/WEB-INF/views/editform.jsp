<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" isELIgnored="false" %>
<%@ page import="com.example.book.BookDAO, com.example.book.BookVO" %>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Edit Post</title>
</head>
<body>
    <h1>Edit Post</h1>
    <form:form modelAttribute="bookVO" action="../editok" method="post" enctype="multipart/form-data">
        <table id="edit">
            <tr><td>Title</td><td><form:input path="title" /></td></tr>
            <tr><td>Writer</td><td><form:input path="writer" /></td></tr>
            <tr><td>Publisher</td><td><form:input path="publisher" /></td></tr>
            <tr><td>Price</td><td><form:input path="price" /></td></tr>
            <tr><td>Pages</td><td><form:input path="pages" /></td></tr>
            <tr><td>Sizes</td><td><form:input path="sizes" /></td></tr>
            <tr><td>Weight</td><td><form:input path="weight" /></td></tr>
            <tr><td>Topic</td><td><form:input path="topic" /></td></tr>
            <tr><td>Content</td><td><form:textarea cols="50" rows="5" path="content" /></td></tr>
        </table>
        <input type="submit" value="수정하기"/>
        <input type="button" value="취소하기" onclick="history.back()"/></td></tr>
    </form:form>
</body>
</html>
