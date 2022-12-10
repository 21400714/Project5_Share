<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" isELIgnored="false" %>
<%@ page import="com.example.book.BookDAO, com.example.book.BookVO, java.util.*" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn" %>
<!DOCTYPE html>
<html>
<head>
	<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
	<title>Board</title>
	<link href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.13.0/css/all.min.css" rel="stylesheet">
	<style>
		#list {
			font-family: "Trebuchet MS", Arial, Helvetica, sans-serif;
			border-collapse: collapse;
			width: 100%;
		}
		#list td, #list th {
			border: 1px solid #ddd;
			padding: 8px;
			text-align:center;
		}
		#list tr:nth-child(even){background-color: #f2f2f2;}
		#list tr:hover {background-color: #ddd;}
		#list th {
			padding-top: 12px;
			padding-bottom: 12px;
			text-align: center;
			background-color: #006bb3;
			color: white;
		}
		.fas {
			color: black;
			font-size: 28px;
		}
		a {
			text-decoration-line: none;
		}
	</style>
	<script>
		function delete_ok(id){
			var a = confirm("정말로 삭제하겠습니까?");
			if(a) location.href='deleteok/' + id;
		}
	</script>
</head>
<body>
	<h1>자유게시판</h1>
	<table id="list" width="90%">
	<tr>
		<th>INDEX</th>
		<th>PHOTO</th>
		<th>TITLE</th>
		<th>WRITER</th>
		<th>PUBLISHER</th>
		<th>PRICE</th>
		<th>REGISTER DATE</th>
		<th colspan="3">MENU</th>
	</tr>
	<c:forEach items="${list}" var="u" varStatus="status">
		<tr>
			<td>${u.sid}</td>
			<td><img src="${pageContext.request.contextPath}/upload/${u.photo}"></td>
			<td>${u.title}</td>
			<td>${u.writer}</td>
			<td>${u.publisher}</td>
			<td>${u.price}</td>
			<td>${u.regdate}</td>
			<td><a class="fas fa-eye" href="view/${u.sid}"></a></td>
			<td><a class="fas fa-edit" href="editform/${u.sid}"></a></td>
			<td><a class="fas fa-trash" href="javascript:delete_ok('${u.sid}')"></a></td>
		</tr>
	</c:forEach>
	</table><br/>
	<button type="button" onclick="location.href='add'">등록하기</button>
	<button type="button" onclick="location.href='../login/logout'">로그아웃</button>
</body>
</html>
