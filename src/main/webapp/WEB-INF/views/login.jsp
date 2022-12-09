<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Login</title>
<style>
    img, label { display: inline-block }
    label { width: 130px }
    button { background-color: blue; color: white; font-size: 15px }
</style>
</head>
<body>
    <div style='width: 100%; text-align: center; padding-top: 100px'>
        <img src='../img/snowman.png' height="250">
        <form method="post" action="loginOk">
            <div><label>아이디</label><br/><input type='text' name='userid' /></div>
            <div><label>비밀번호</label><br/><input type='password' name='password' /></div><br/>
            <button type='submit'>로그인</button>
        </form>
    </div>
</body>
</html>
