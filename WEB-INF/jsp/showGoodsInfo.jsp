<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">

<html>
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
    <title>Welcome!</title>

    <link rel="stylesheet" href="/css/shouye.css">
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

<c:forEach items="${goods}" var="temp">
<div class="Xcontent">
    <ul class="Xcontent01">
        <div class="Xcontent06"><img src="/images/shangpinxiangqing/X1.png"></div>

        <ol class="Xcontent13">
            <div class="Xcontent14"><a href="#"><p>${temp.product}</p></a></div>
            <div class="Xcontent15"><img src="/images/shangpinxiangqing/X11.png"></div>
            <div class="Xcontent16"><p>${temp.from}&nbsp;&nbsp;&nbsp;id:${temp.id}</p></div>
            <div class="Xcontent17">
                <p class="Xcontent18">总价</p>
                <p class="Xcontent19">￥<span>${temp.price}</span></p>

                <p class="Xcontent18">已凑</p>
                <p class="Xcontent19">￥<span>${temp.have}</span></p>
                <div class="Xcontent20">
                    <p class="Xcontent21">预计利率</p>
                    <p class="Xcontent22">${temp.rate}%&nbsp;&nbsp;&nbsp;&nbsp;周期（天）：${temp.date}</p>&nbsp;

                </div>
                <div class="Xcontent20">
                    <p class="Xcontent21">周期（天）</p>
                    <p class="Xcontent22">${temp.date}</p>
                </div>
                <div class="Xcontent23">
                    <p class="Xcontent24">分类</p>
                    <p class="Xcontent25">${temp.style}</p>
                </div>


            </div>
            <div class="Xcontent26">
                (注：分类中，数字1代表定期理财，2代表活期理财，3代表股票型基金，4代表混合型基金）
            </div>
            <div class="Xcontent30">

            </div>

            <div class="Xcontent35"><a href="/cart/addCart.do?id=${temp.id}"><img src="/images/shangpinxiangqing/X18.png"></a></div>


            <div class="Xcontent35">

                <form id="myForm2" action="/buy/addBuy.do?id=${temp.id}" method="post">
                    <input id="money" type="text" name="money" placeHolder="这里输入投资金额">
                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    <input type="button" id="gogo" value="确认投入">
                </form>

            </div>
        </ol>
    </ul>
</div>
</c:forEach>





    <script type="text/javascript">
        var myForm2=document.getElementById("myForm2");
        var gogo=document.getElementById("gogo");
        gogo.onclick=function(){

            var money=document.getElementById("money").value;
            if((!(/(^[1-9]\d*$)/.test(money)))){
                alert("您只能输入正整数");
            }
            else myForm2.submit();
        }
    </script>
    </body>
</html>













