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
                <a href="/goods/getGoodsByStyle.do?style=3">股票型基金</a>
                <a href="/goods/getGoodsByStyle.do?style=4">混合型基金</a>
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
                        <option value="3">股票型基金</option>
                        <option value="4">混合型基金</option>
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




<br><br><br>
恭喜您，注册成功！您可能喜欢以下产品：
<br><br><br><br><br>
<div class="servicesBox">
    <c:forEach items="${goods}" var="temp" varStatus="st">
        <div class="serBox">
            <div class="serBoxOn"></div>
            <div class="pic1"> <img src="/images/${st.count}.png"> </div>
            <div class="pic2"> <img src="/images/${(st.count+13)%10+1}.png"> </div>
            <div class="txt1"> <span class="tit">产品id:${temp.id}</span><p>${temp.product}</p></div>
            <div class="txt2"><a href="/goods/getGoodsInfo.do?id=${temp.id}" class="a_jump"><p>查看详情</p></a></div>
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













