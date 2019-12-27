<%@ page import="vo.User" %>
<%@ page import="dao.UserDao" %><%--
  Created by IntelliJ IDEA.
  User: 13390
  Date: 2019-12-23
  Time: 21:04
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
</head>
<body>

<%
    UserDao userDao = new UserDao();
    String usern = request.getParameter("username");
    String passw = request.getParameter("password");
    boolean a = userDao.login(usern,passw);
    System.out.println("得到a=" +a );
    if(a==true) {
        String  m = null;
        try {
            m = userDao.returnmember(usern);
        } catch (Exception e) {
            e.printStackTrace();
        }
        session.setAttribute("member",m);

 %>
       <jsp:forward page="billform.jsp"></jsp:forward>
<%
    }
     else{
%>
<script>
    // alert("账号或密码错误！" );

</script>

<%

    }
%>
</body>
</html>
