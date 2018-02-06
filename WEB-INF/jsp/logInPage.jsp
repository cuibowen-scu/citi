<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>登录</title>
    <link rel="stylesheet" type="text/css" href="/css/styles.css">
</head>
<body>
<div class="htmleaf-container">
    <div class="wrapper">
        <div class="container">
            <h1>welcome</h1>

            <form action="/user/logIn.do" method="post">
                <input type="text" placeholder="PhoneNumber" name="userTel">
                <input type="password" placeholder="Password" name="userPassword">
                <button type="submit" id="login-button">Login</button></br>
                </br>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <a href="/user/regPage.do" class="turntoregister">register</a>
            </form>
        </div>

        <ul class="bg-bubbles">
            <li></li>
            <li></li>
            <li></li>
            <li></li>
            <li></li>
            <li></li>
            <li></li>
            <li></li>
            <li></li>
            <li></li>
        </ul>
    </div>
</div>


<div style="text-align:center;margin:50px 0; font:normal 14px/24px 'MicroSoft YaHei';color:#000000">
    <p></p>
    <p></p>
</div>
</body>
</html>













