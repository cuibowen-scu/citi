<%--
  Created by IntelliJ IDEA.
  User: cbw
  Date: 2017/8/15
  Time: 17:42
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE HTML>
<html lang="en-US">
<head>
    <meta charset="UTF-8">

    <title>调查</title>

</head>

<body>

<h2>
    该问卷具有至关重要的作用，请您如实作答</h2>
<form action="/user/updateRank.do" method="post">

    <h3>1、您的年龄是？</h3>

    <div class="choose">
        <div class="input"><input type="radio" name="score1" value="-5"/><label for="1">18~30</label></div>
        <div class="input"><input type="radio" name="score1" value="-2"/><label for="2">31~40</label></div>
        <div class="input"><input type="radio" name="score1" value="0"/><label for="3">41~50</label></div>
        <div class="input"><input type="radio" name="score1" value="-2"/><label for="4">51~60</label></div>
        <div class="input"><input type="radio" name="score1" value="-5"/><label for="5">60以上</label></div>
    </div><br>




    <h3>2、您的家庭年收入为（折合为人民币）？</h3>

    <div class="choose">
        <div class="input"><input type="radio" name="score2" value="-8"/><label for="6">5万元以下</label></div>
        <div class="input"><input type="radio" name="score2" value="-5"/><label for="7">5（含）~10万</label></div>
        <div class="input"><input type="radio" name="score2" value="-3"/><label for="8">10（含）~30万</label></div>
        <div class="input"><input type="radio" name="score2" value="0"/><label for="9">30（含）~50万</label></div>
        <div class="input"><input type="radio" name="score2" value="0"/><label for="10">50万（含）以上</label></div>
    </div><br>




    <h3>3、在您家庭收入中可用于金融投资（储蓄存款除外）的比例是？</h3>

    <div class="choose">
        <div class="input"><input type="radio" name="score3" value="-3"/><label for="11">小于10%</label></div>
        <div class="input"><input type="radio" name="score3" value="0"/><label for="12">10（含）%~30%</label></div>
        <div class="input"><input type="radio" name="score3" value="0"/><label for="13">30（含）%~50%</label></div>
        <div class="input"><input type="radio" name="score3" value="-5"/><label for="14">50（含）%以上</label></div>
    </div><br>




    <h3>4、以下哪项最能说明您的投资经验？</h3>

    <div class="choose">
        <div class="input"><input type="radio" name="score4" value="0"/><label for="15">除存款、国债外，我几乎不投资其他金融产品</label></div>
        <div class="input"><input type="radio" name="score4" value="1"/><label for="16">大部门投资于存款、国债等，较少投资于股票、基金等风险产品</label></div>
        <div class="input"><input type="radio" name="score4" value="3"/><label for="17">资产均衡地分布于存款、国债、银行理财产品、信托产品、股票、基金等</label></div>
        <div class="input"><input type="radio" name="score4" value="5"/><label for="18">大部分投资于股票、基金、外汇等高风险产品，较少投资于存款、国债</label></div>

    </div><br>



    <h3>5、您有多少年投资股票、基金、外汇、金融衍生品等风险投资品的经验？</h3>

    <div class="choose">
        <div class="input"><input type="radio" name="score5" value="0"/><label for="20">没有经验 </label></div>
        <div class="input"><input type="radio" name="score5" value="1"/><label for="21">少于2年</label></div>
        <div class="input"><input type="radio" name="score5" value="3"/><label for="22">2-5年</label></div>
        <div class="input"><input type="radio" name="score5" value="4"/><label for="23">5-8年 </label></div>
        <div class="input"><input type="radio" name="score5" value="5"/><label for="24">8年以上</label></div>
    </div><br>



    <h3>6、以下哪项描述最符合您的投资态度？</h3>

    <div class="choose">
        <div class="input"><input type="radio" name="score6" value="0"/><label for="25">厌恶风险，不希望本金损失，希望获得稳定回报</label></div>
        <div class="input"><input type="radio" name="score6" value="1"/><label for="26">保守投资，不希望本金损失，愿意承担一定幅度的收益波动</label></div>
        <div class="input"><input type="radio" name="score6" value="4"/><label for="27">寻求资金的较高收益和成长性，愿意为此承担有限本金损失</label></div>
        <div class="input"><input type="radio" name="score6" value="7"/><label for="28">希望赚取高回报，愿意为此承担较大本金损失</label></div>
    </div><br>



    <h3>7、以下情况，您会选择哪一种？ </h3>

    <div class="choose">
        <div class="input"><input type="radio" name="score7" value="0"/><label for="29">有100%的机会赢取1000元现金</label></div>
        <div class="input"><input type="radio" name="score7" value="1"/><label for="30">有50%的机会赢取5万元现金</label></div>
        <div class="input"><input type="radio" name="score7" value="3"/><label for="31">有25%的机会赢取50万元现金</label></div>
        <div class="input"><input type="radio" name="score7" value="5"/><label for="32">有10%的机会赢取100万元现金</label></div>
    </div><br>




    <h3>8、您计划的投资期限是多久？</h3>

    <div class="choose">
        <div class="input"><input type="radio" name="score8" value="-3"/><label for="33">1年以下  </label></div>
        <div class="input"><input type="radio" name="score8" value="-2"/><label for="34">1-3年 </label></div>
        <div class="input"><input type="radio" name="score8" value="-1"/><label for="35">3-5年</label></div>
        <div class="input"><input type="radio" name="score8" value="0"/><label for="36">5年以上 </label></div>
    </div><br>



    <h3>9、您的投资目的是？</h3>

    <div class="choose">
        <div class="input"><input type="radio" name="score9" value="0"/><label for="37">资产保值 </label></div>
        <div class="input"><input type="radio" name="score9" value="3"/><label for="38">资产稳健增长</label></div>
        <div class="input"><input type="radio" name="score9" value="5"/><label for="39">资产迅速增长</label></div>
    </div><br>



    <h3>10、您的投资出现何种程度的波动时，您会呈现明显的焦虑？</h3>

    <div class="choose">
        <div class="input"><input type="radio" name="score10" value="0"/><label for="40">本金无损失，但收益未达预期</label></div>
        <div class="input"><input type="radio" name="score10" value="1"/><label for="41">出现轻微本金损失</label></div>
        <div class="input"><input type="radio" name="score10" value="3"/><label for="42">本金10%以内的损失</label></div>
        <div class="input"><input type="radio" name="score10" value="5"/><label for="43">本金20%-50%的损失</label></div>
        <div class="input"><input type="radio" name="score10" value="7"/><label for="44">本金50%以上损失</label></div>
    </div><br>





    <input type="submit" value="提交调查">

</form>

</body>

</html>