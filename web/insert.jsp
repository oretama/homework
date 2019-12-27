<%--
  Created by IntelliJ IDEA.
  User: 13390
  Date: 2019-12-23
  Time: 20:55
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
<div id="head" style="background-color: #00FFFF; ; height:100px;" ><p align="left" style="font-size:50px; position:relative; top:20% ; left:10%">家庭记账<a href="index.jsp" style="font-size: 30px; position:absolute; left: 80%;top: 10%;">登出</a></p></div>
<div id="menu" style="background-color: darkorange;float: left;width: 20%; height:500px;" >
    <p align="center" style="font:'宋体'; font-size:36px; position:relative; top:30px;" >菜单栏目</p>
    <table 	align="center" style="width:200px; font-size:30px ;  position:relative;top:50px;  "  >

        <td><a href="billform.jsp">查看账目</a></td><tr>
        <td><a href="insert.jsp"> 添加账目</a></td><tr>
        <td><a href="select.jsp"> 查询账目</a></td><tr>
        <td><a href="manage.jsp">删除账目 </a></td><tr>
    </table>
</div>

<div id="content" style="background-color:#CCCCCC; width:80%; height:500px; float:left">
    <form action="doinsert.jsp">

        <p align="center" style="font-size:30px; ">添加新账目</p><br /><br />
        <p 	align="center" >
        <table align="center" style="font-size:20px; ">
            <td>收支类别:&nbsp;</td> <td><input type="radio" value="收入"  name="inout"/>收入<input type="radio" value="支出" name="inout" />支出</td>	 <tr >
            <td>用途类别:&nbsp;</td> <td> <input type="radio" name="type" value="日常饮食"  />日常饮食<input type="radio" name="type" value="水电物业"  />
        水电物业<input type="radio" name="type" value="工作学习"  />工作学习<input type="radio" name="type" value="其他" />其他</td><tr />
            <td>详细内容:&nbsp;</td> <td> <input type="text" name="detail"  /></td> <tr />
            <td>详细数目:&nbsp;</td> <td> <input type="number" name="money" /></td><tr />

        </table>
        <p align="center" ><input type="submit" value="添加"  /><input type="reset" value="重置"  />
        </p>
    </form>
</div>
</body>
</html>
