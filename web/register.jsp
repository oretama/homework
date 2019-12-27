<%--
  Created by IntelliJ IDEA.
  User: 13390
  Date: 2019-12-23
  Time: 20:52
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
</head>
<body bgcolor="#CCFF99">
<div id="head" style="background-color: #00FFFF; ; height:100px;" ><a href="index.jsp" align="left" style="font-size:50px; position:relative; top:20% ; left:10%">家庭记账</a></div>

<div  id = "login" style=" height:30% ; position: relative; top: 50px;"  >
    <form   action="doregister.jsp">
        <p align="center"  style="font-size:50px;" >
            用户注册<br/>
        <p align="center" style="font-size:24px">&nbsp;&nbsp;账号:<input name="username" type="text"  /><br />&nbsp;&nbsp;密码:<input name="password" type="password" />
            <br/>确认密码:<input  name="confirm" type="text"  /><br />&nbsp;&nbsp;成员:<input name="member" type="text" /><br /><br />
            <input type="submit" value="register" />&nbsp; <input type="reset" value="reset"  />
        </p>

        </p>
    </form>
</div>

</body>
</html>
