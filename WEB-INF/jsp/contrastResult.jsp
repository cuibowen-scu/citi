<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
    <title>对比</title>

    <link rel="stylesheet" href="/css/stylecontrast.css" media="screen" type="text/css" />

</head>

<body><script src="/demos/googlegg.js"></script>

<div id="PK"></div><br/><br/><br/><br/><br/>
<div id="container"></div>

<script src="/js/jquery-1.10.2.js"></script>
<script type="text/javascript">
    var node=[
        "${good1.id}`","id","${good2.id}`",
        "${good1.from}","来源","${good2.from}",
        "${good1.product}","产品名","${good2.product}",
        "${good1.style}","分类","${good2.style}",

        "${good1.date}`","周期(天)","${good2.date}`",
        "￥${good1.price}","总价(元)","￥${good2.price}",
        "￥${good1.have}","已凑（元）","￥${good2.have}",
        " ${good1.rate}","预计利率(%)"," ${good2.rate}"
    ]

    var col;




    for(var i=0;i<node.length;i+=3){


        if(i==0||i==3||i==6||i==9||i==12||i==15||i==18||i==21){


            col = 'rgb('+parseInt(( Math.random() *200 + 55 ),10)+','+
                parseInt(( Math.random() *200 + 55 ),10)+','+
                parseInt(( Math.random() *250 + 5 ),10)+ ')' ;

            var skill = document.createElement('div');
            skill.className = 'skill';
            $("#container").append(skill);
            var clearfix1 = document.createElement('div');
            clearfix1.className = 'skillbar1 clearfix';
            $(clearfix1).attr("data-percent",node[i]+"")
            skill.appendChild( clearfix1 );

            var bar1 = document.createElement('div');
            bar1.className = 'skillbar1-bar1';
            bar1.style.background = col;
            clearfix1.appendChild( bar1 );

            var percent1 = document.createElement('div');
            percent1.className = 'skill-bar-percent1';
            percent1.textContent = node[i]+'';
            clearfix1.appendChild( percent1 );

            var title = document.createElement('div');
            title.className = 'skillbar-title';
            title.style.background = col;
            title.innerHTML = '<span>' +node[i+1]+'</span>';
            skill.appendChild( title );

            var clearfix = document.createElement('div');
            clearfix.className = 'skillbar clearfix';
            $(clearfix).attr("data-percent",node[i+2]+"");
            skill.appendChild( clearfix );

            var bar = document.createElement('div');
            bar.className = 'skillbar-bar';
            bar.style.background = col;
            clearfix.appendChild( bar );

            var percent = document.createElement('div');
            percent.className = 'skill-bar-percent';
            percent.textContent = node[i+2]+'';
            clearfix.appendChild( percent );


        }

        else{
            col = 'rgb('+parseInt(( Math.random() *200 + 55 ),10)+','+
                parseInt(( Math.random() *200 + 55 ),10)+','+
                parseInt(( Math.random() *250 + 5 ),10)+ ')' ;

            var skill = document.createElement('div');
            skill.className = 'skill';
            $("#container").append(skill);
            var clearfix1 = document.createElement('div');
            clearfix1.className = 'skillbar1 clearfix';
            $(clearfix1).attr("data-percent",node[i]+"%")
            skill.appendChild( clearfix1 );

            var bar1 = document.createElement('div');
            bar1.className = 'skillbar1-bar1';
            bar1.style.background = col;
            clearfix1.appendChild( bar1 );

            var percent1 = document.createElement('div');
            percent1.className = 'skill-bar-percent1';
            percent1.textContent = node[i]+'%';
            clearfix1.appendChild( percent1 );

            var title = document.createElement('div');
            title.className = 'skillbar-title';
            title.style.background = col;
            title.innerHTML = '<span>' +node[i+1]+'</span>';
            skill.appendChild( title );

            var clearfix = document.createElement('div');
            clearfix.className = 'skillbar clearfix';
            $(clearfix).attr("data-percent",node[i+2]+"%");
            skill.appendChild( clearfix );

            var bar = document.createElement('div');
            bar.className = 'skillbar-bar';
            bar.style.background = col;
            clearfix.appendChild( bar );

            var percent = document.createElement('div');
            percent.className = 'skill-bar-percent';
            percent.textContent = node[i+2]+'%';
            clearfix.appendChild( percent );

        }

    }
    $(document).ready(function(){
        $('.skillbar').each(function(){
            $(this).find('.skillbar-bar').animate({
                width:$(this).attr('data-percent')
            },2000);
        });
    });

    $(document).ready(function(){
        $('.skillbar1').each(function(){
            $(this).find('.skillbar1-bar1').animate({
                width:$(this).attr('data-percent')
            },2000);
        });
    });
</script>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
(注：分类中，数字1代表定期理财，2代表活期理财，3代表股票型基金，4代表混合型基金)
</body>
</html>
