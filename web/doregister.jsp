<%@ page import="dao.UserDao" %><%--
  Created by IntelliJ IDEA.
  User: 13390
  Date: 2019-12-24
  Time: 12:26
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
<%
    UserDao userDao  = new UserDao();
    String username = request.getParameter("username");
    String password = request.getParameter("password");
    String confirm = request.getParameter("confirm");
    String memeber = request.getParameter("member");

if(password.equals(confirm)) {
    try {
        userDao.register(username,password,memeber);

    } catch (Exception e) {
        e.printStackTrace();
    }
%>
<jsp:forward page="login.jsp"></jsp:forward>
<%
}
else
    System.out.println("密码不一致");


%>


%
</body>
</html>
