<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">

<style type="text/css">
    *,
    *:before,
    *:after {
        box-sizing: border-box;
    }

    html {
        font-family: "Open Sans", Helvetica, arial, sans-serif;
        color: #333333;
        background-color: #ffffff;
    }

    h1, h2, h3,
    h4, h5, h6 {
        font-family: "Raleway", "Open Sans", sans-serif;
        text-align: center;
    }

    a {
        color: #333333;
        text-decoration: none;
    }

    img {
        max-width: 100%;
    }

    .pen__subheading {
        margin-bottom: 0;
    }
    .pen__subheading a {
        color: #b280c4;
    }
    .pen__subheading a:hover, .pen__subheading a:focus {
        color: #d2b4dc;
    }

    .container {
        width: 100%;
        max-width: 800px;
        margin: 0 auto;
        padding: 2rem 1rem;
    }

    .col {
        padding: 1rem;
    }
    @media (min-width: 800px) {
        .col {
            width: 50%;
            float: left;
        }
        .col:nth-of-type(2n+1) {
            clear: left;
        }
    }
    .col.col--full {
        width: 100%;
    }

    .main {
        overflow: hidden;
    }

    .block--split-image {
        position: relative;
        max-width: 400px;
        text-align: center;
        -webkit-perspective: 50px;
        perspective: 50px;
    }
    .block--split-image .block__content {
        position: relative;
        display: inline-block;
        z-index: 1;
        padding: 3rem 1.5rem;
        -webkit-transition: 0.25s ease-in-out;
        transition: 0.25s ease-in-out;
    }
    .block--split-image .block__content h2 {
        margin: 0;
    }
    .block--split-image .block__content:hover {
        opacity: 0;
        -webkit-transform: translateY(-15px);
        transform: translateY(-15px);
    }
    .block--split-image .block__content:hover + .block__image {
        -webkit-transition-duration: 0.5s;
        transition-duration: 0.5s;
        -webkit-transform: rotate3d(0, 0, 0, 0deg) !important;
        transform: rotate3d(0, 0, 0, 0deg) !important;
    }
    .block--split-image .block__content:hover + .block__image .part-1 {
        -webkit-transform: translate(-50%, -50%);
        transform: translate(-50%, -50%);
    }
    .block--split-image .block__content:hover + .block__image .part-2 {
        -webkit-transform: translate(50%, -50%);
        transform: translate(50%, -50%);
    }
    .block--split-image .block__content:hover + .block__image .part-3 {
        -webkit-transform: translate(-50%, 50%);
        transform: translate(-50%, 50%);
    }
    .block--split-image .block__content:hover + .block__image .part-4 {
        -webkit-transform: translate(50%, 50%);
        transform: translate(50%, 50%);
    }
    .block--split-image .block__image {
        position: absolute;
        top: 0;
        right: 0;
        bottom: 0;
        left: 0;
        z-index: 0;
        -webkit-perspective: 50px;
        perspective: 50px;
        -webkit-transition: 5s ease-in-out;
        transition: 5s ease-in-out;
    }
    .block--split-image .block__image .part {
        position: absolute;
        top: 50%;
        left: 50%;
        background-repeat: no-repeat;
        -webkit-transition: 0.25s cubic-bezier(0.175, 0.885, 0.32, 1.275);
        transition: 0.25s cubic-bezier(0.175, 0.885, 0.32, 1.275);
    }
    .block--split-image .block__image .part-1 {
        background-position: top left;
    }
    .block--split-image .block__image .part-2 {
        background-position: top right;
    }
    .block--split-image .block__image .part-3 {
        background-position: bottom left;
    }
    .block--split-image .block__image .part-4 {
        background-position: bottom right;
    }

    .block--split-image-1 {
        margin: 165px auto;
    }
    .block--split-image-1 .block__content {
        background-color: rgba(103, 144, 138, 0.9);
    }
    .block--split-image-1 .block__content:hover + .block__image .part {
        -webkit-transition-timing-function: cubic-bezier(0.645, 0.045, 0.355, 1);
        transition-timing-function: cubic-bezier(0.645, 0.045, 0.355, 1);
    }
    .block--split-image-1 .block__content:hover + .block__image .part-1 {
        -webkit-transition-delay: 0.25s !important;
        transition-delay: 0.25s !important;
    }
    .block--split-image-1 .block__content:hover + .block__image .part-2 {
        -webkit-transition-delay: 0.25s !important;
        transition-delay: 0.25s !important;
    }
    .block--split-image-1 .block__content:hover + .block__image .part-3 {
        -webkit-transition-delay: 0.15s !important;
        transition-delay: 0.15s !important;
    }
    .block--split-image-1 .block__content:hover + .block__image .part-4 {
        -webkit-transition-delay: 0.1s !important;
        transition-delay: 0.1s !important;
    }
    .block--split-image-1 .block__image .part {
        margin-left: -125px;
        margin-top: -75px;
        width: 250px;
        height: 150px;
        background-image: url(/images/1052.jpg);
    }
    .block--split-image-1 .block__image .part-1 {
        -webkit-transform: translate(-63%, -68%) rotate3d(1, -1, -1, 3deg);
        transform: translate(-63%, -68%) rotate3d(1, -1, -1, 3deg);
    }
    .block--split-image-1 .block__image .part-2 {
        -webkit-transform: translate(72%, -68%) rotate3d(1, 1, -1, 3deg);
        transform: translate(72%, -68%) rotate3d(1, 1, -1, 3deg);
    }
    .block--split-image-1 .block__image .part-3 {
        -webkit-transform: translate(-71%, 61%) rotate3d(-1, -1, -1, 3deg);
        transform: translate(-71%, 61%) rotate3d(-1, -1, -1, 3deg);
    }
    .block--split-image-1 .block__image .part-4 {
        -webkit-transform: translate(70%, 73%) rotate3d(-1, 1, -1, 3deg);
        transform: translate(70%, 73%) rotate3d(-1, 1, -1, 3deg);
    }
</style>


<head>
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
    <title>Welcome!</title>

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

<div class="menu">
    <ul class="nav">
        <li><a href="/jump/jumpToHome.do">Home&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            &nbsp;&nbsp;&nbsp;</a></li>
        <li>
            <a href="">理财类型</a>
            <div class="box">
                <a href="/goods/getGoodsByStyle.do?style=1">定期理财</a>
                <a href="/goods/getGoodsByStyle.do?style=2">活期理财</a>
                <a href="/goods/getGoodsByStyle.do?style=3">开放型基金</a>
                <a href="/goods/getGoodsByStyle.do?style=4">封闭型基金</a>
            </div>
        </li>
        <%--<li>--%>
            <%--<a href="">理财期限</a>--%>
            <%--<div class="box">--%>
                <%--<a href="/goods/getGoodsByDead.do?dead=1">活期理财</a>--%>
                <%--<a href="/goods/getGoodsByDead.do?dead=2">定期理财</a>--%>
                <%--<a href="/goods/getGoodsByDead.do?dead=3">基金理财</a>--%>
            <%--</div>--%>
        <%--</li>--%>
        <li>
            <a href="">多条件</a>
            <div class="box">
                <form action="/goods/getMultiSearch.do" method="post">
                    <br>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    <select name="searchStyle">
                        <option value="1" selected>定期理财</option>
                        <option value="2">活期理财</option>
                        <option value="3">开放型基金</option>
                        <option value="4">封闭型基金</option>
                    </select>

                    <%--<select name="searchDead">--%>
                        <%--<option value="1" selected>活期理财</option>--%>
                        <%--<option value="2">定期理财</option>--%>
                        <%--<option value="3">基金理财</option>--%>
                    <%--</select>--%>

                    <select name="searchPrice">
                        <option value="1">< 1000</option>
                        <option value="2">1000-1w</option>
                        <option value="3" selected>1w-10w</option>
                        <option value="4">>10w</option>
                    </select>

                    <select name="searchRate">
                        <option value="1">< 3%</option>
                        <option value="2">3%-4%</option>
                        <option value="3" selected>4%-5%</option>
                        <option value="4">>5%</option>
                    </select>


                    <input type="submit" value="搜索">

                    <br/><br/><br/><br/><br/><br/><br/><br/><br/><br/><br/>
                </form>
            </div>
        </li>

        <li>
            <a href="">产品对比</a>
            <div class="box">
                <form id="myForm" action="/goods/getContrastResult.do" method="post">
                    <br>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    第一个产品id:<input id="id1" type="text" name="id1">
                    第二个产品id:<input id="id2" type="text" name="id2">
                    <input id="go" type="button" value="对比">
                    <br/><br/><br/><br/><br/><br/><br/><br/>
                    <script type="text/javascript">
                        var myForm=document.getElementById("myForm");
                        var go=document.getElementById("go");
                        go.onclick=function(){

                            var id1=document.getElementById("id1").value;
                            var id2=document.getElementById("id2").value;
                            if((!(/(^[1-9]\d*$)/.test(id1))) || (!(/(^[1-9]\d*$)/.test(id2)))){
                                alert("请输入正确的id");
                            }
                            else myForm.submit();
                        }
                    </script>
                </form>
            </div>
        </li>

        <li><a href="/goods/getAllBuy.do">我的投资</a></li>
        <li><a href="/goods/getCartGoods.do">我的收藏</a></li>
        <li><a href="/user/updateRankPage.do">重填调查表</a></li>
        <li><a href="/recommend/twoWayRecommend.do">猜你喜欢</a></li>
        <li><a href="/user/logInPage.do">登录&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            &nbsp;&nbsp;&nbsp;</a></li>
        <li>
            <form id="myForm1" action="/goods/searchGoods.do" method="post">
                <input type="text" placeholder="这里搜索产品名字" name="product">
                <input type="submit" value="搜索">
            </form>
        </li>
    </ul>
</div>

<main class="main container">
    <div class="col col--full">
        <div class="block--split-image block--split-image-1">
            <div class="block__content">
                <h2>
                    Cooperation Promotes Success <br>
                    <small>(hover me)</small>
                </h2>
            </div>
            <div class="block__image" data-orbit>
                <div class="part part-1"></div>
                <div class="part part-2"></div>
                <div class="part part-3"></div>
                <div class="part part-4"></div>
            </div>
        </div>
    </div>


</main>

<script>
    // Let's get our orbit on, man...
    var orbit = {
        // Initialize the orbiting
        init: function(selector) {
            this.elements = document.querySelectorAll(selector || '[data-orbit]');

            // Set the update interval
            this.setupIntervals();
        },

        // Setup the intervals for rotating
        setupIntervals: function() {
            var self = this;
            this.elements.forEach(function(el) {
                self.update(el);
                this.interval = setInterval(function() {
                    self.update(el);
                }, 5000);
            });
        },

        // Update the orbit rotate3d
        update: function(el) {
            var min = -1;
            var max = 1;

            // Get our rotate values
            var rotate = [
                (Math.floor(Math.random() * (max - min + 1)) + min) + '.' + (Math.floor(Math.random() * 9) + 1),
                (Math.floor(Math.random() * (max - min + 1)) + min) + '.' + (Math.floor(Math.random() * 9) + 1)
            ];

            // Set the transform
            el.style.webkitTransform = 'rotate3d(' + rotate[0] + ', ' + rotate[1] + ', 0, 1deg)';
            el.style.MozTransform = 'rotate3d(' + rotate[0] + ', ' + rotate[1] + ', 0, 1deg)';
            el.style.msTransform = 'rotate3d(' + rotate[0] + ', ' + rotate[1] + ', 0, 1deg)';
            el.style.OTransform = 'rotate3d(' + rotate[0] + ', ' + rotate[1] + ', 0, 1deg)';
            el.style.transform = 'rotate3d(' + rotate[0] + ', ' + rotate[1] + ', 0, 1deg)';
        }
    }

    // Start it up
    orbit.init();
</script>
</body>
</html>


























