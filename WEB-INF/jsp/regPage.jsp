<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>

<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>注册</title>
    <link rel="stylesheet" type="text/css" href="/css/Rstyles.css">
</head>
<body>
<div class="htmleaf-container">
    <div class="wrapper">
        <div class="container">
            <h1>welcome</h1>

            <form class="form" action="/user/reg.do" name="myform" method="post">
                <input type="text" placeholder="Phonenumber" name="userTel">
                <input type="text" placeholder="Name" name="userName">

                <input type="password" placeholder="Password" name="userPassword" >
                <input type="password" placeholder="Repeat Password" name="userPassword1">
                <button type="submit" id="login-button">register</button></br>
                </br>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <a href="/user/logInPage.do" class="turntoregister">Login</a>
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