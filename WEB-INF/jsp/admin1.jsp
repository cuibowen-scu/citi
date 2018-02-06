<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">

<html>
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
    <title>Welcome!</title>



    <link href="/css/styleform.css" rel="stylesheet" type="text/css">
    <script src="/js/jquery-1_002.js" type="text/javascript"></script>



    <link href="/css/allhave.css" media="screen" rel="stylesheet" type="text/css" />
    <script src="/js/allhave.js"></script>

    <script>
        $(function () {
            var navLi=$(".menu .nav li");
            navLi.mouseover(function () {
                $(this).find("a").addClass("current");
                $(this).find(".box").stop().slideDown();
            })
            navLi.mouseleave(function(){
                $(this).find("a").removeClass("current");
                $(this).find(".box").stop().slideUp();
            })
        })

    </script>
</head>
<body>



<br><br><br><br><br><br>
<a href="/goods/updateToBuy.do">模拟购买</a>&nbsp;&nbsp;&nbsp;
<a href="/goods/updateToEarn.do">模拟返利</a>


<br><br><br><br><br><br>
<div class="servicesBox">
    <c:forEach items="${goods}" var="temp" varStatus="st">
        <div class="serBox">
            <div class="serBoxOn"></div>
            <div class="pic1"> <img src="/images/${st.count}.png"> </div>
            <div class="pic2"> <img src="/images/${(st.count+13)%10+1}.png"> </div>
            <div class="txt1"> <span class="tit">产品id:${temp.id}</span><p>${temp.product}</p></div>
            <div class="txt2"><a href="/goods/updateEarn.do?id=${temp.id}" class="a_jump"><p>返利</p></a></div>
        </div>
    </c:forEach>
</div>

<script type="text/javascript">
    $(".serBox").hover(function () {
        $(this).children().stop(false,true);
        $(this).children(".serBoxOn").fadeIn("slow");
        $(this).children(".pic1").animate({right: -110},400);
        $(this).children(".pic2").animate({left: 41},400);
        $(this).children(".txt1").animate({left: -240},400);
        $(this).children(".txt2").animate({right: 0},400);
    },function () {
        $(this).children().stop(false,true);
        $(this).children(".serBoxOn").fadeOut("slow");
        $(this).children(".pic1").animate({right:41},400);
        $(this).children(".pic2").animate({left: -110},400);
        $(this).children(".txt1").animate({left: 0},400);
        $(this).children(".txt2").animate({right: -240},400);
    });
</script>



</body>
</html>













