<%--
  Created by IntelliJ IDEA.
  User: 13390
  Date: 2019-12-23
  Time: 20:56
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

<div id="content" style="background-color:#CCCCCC; width:80%; height:500px; ; float:left">


    <form action="doselect.jsp">
        <p align="center" style="font-size:50px;">查询账目</p>
        <br /><br />
        <table 	align="center" style="font-size: 30px; height:30px;">


            <td>查询类别：<select name="select"><option value="inout" >收支</option><option value="type" >类型</option><option value="member" >成员</option></select>
                <tr><td>查询内容：<input name="string" type="text" />  </td>
                <tr> <td align="center"> <input type="submit"  value="查询" /></td>
        </table>


    </form>

</div>
</body>
</html>
