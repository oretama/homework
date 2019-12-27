<%@ page import="dao.UserDao" %>
<%@ page import="dao.BillDao" %>
<%@page import="vo.Bill" %>
<%@ page import="java.util.ArrayList" %><%--
  Created by IntelliJ IDEA.
  User: 13390
  Date: 2019-12-22
  Time: 18:29
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
  <title>$Title$</title>
</head>
<body bgcolor="#CCFF99">

<div id="head" style="background-color: #00FFFF; ; height:100px;" ><p align="left" style="font-size:50px; position:relative; top:20% ; left:10%">家庭记账</p></div>
<div id="register" style="font-size:50px; position:relative ; top:20px; left:50px;" ><a href="register.jsp">注册</a></div>
<div  id = "login" style=" height:30% ; position: relative; top: 50px;"  >
    <form   action="login.jsp">
        <p align="center"  style="font-size:50px;" >
            用户登录<br/>
        <p align="center" style="font-size:24px">账号:<input name="username" type="text"  /><br />密码:<input name="password" type="password" /><br/><br />
            <input type="submit" value="登录" />&nbsp; <input type="reset" value="重置"  />

        </p>

        </p>
    </form>
</div>




</body>
</html>
