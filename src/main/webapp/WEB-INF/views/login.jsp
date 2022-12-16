<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<!DOCTYPE html>
<html>
<head>
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <title>Login</title>
    <style>
        body {font-family: Arial, Helvetica, sans-serif;}

        .wrapper {
            display: flex;
            justify-content: center;
        }

        form {width: 30%; border: 3px solid #f1f1f1;}

        input[type=text], input[type=password] {
            width: 100%;
            padding: 12px 20px;
            margin: 8px 0;
            display: inline-block;
            border: 1px solid #ccc;
            box-sizing: border-box;
        }

        button {
            background-color: #4CAF50;
            color: white;
            padding: 14px 20px;
            margin: 8px 0;
            border: none;
            cursor: pointer;
            width: 100%;
        }

        button:hover {
            opacity: 0.8;
        }

        .imgcontainer {
            text-align: center;
            margin: 24px 0 12px 0;
        }

        img.avatar {
            width: 40%;
            border-radius: 50%;
        }

        .container {
            padding: 16px;
        }
    </style>
</head>
<body>
<div class="wrapper">
    <form action="loginOk" method="post">
        <div class="imgcontainer">
            <img src="../img/book.png" sizes="200px" alt="Avatar" class="avatar">
        </div>

        <div class="container">
            <label for="userid"><b>Username</b></label>
            <input type="text" placeholder="Enter username" id="userid" name="userid" required>

            <label for="password"><b>Password</b></label>
            <input type="password" placeholder="Enter password" id="password" name="password" required>

            <button type="submit">Login</button>
            <button type="button" onclick="location.href='adduser'">Create your account</button><br/>
        </div>
    </form>
</div>
</body>
</html>
