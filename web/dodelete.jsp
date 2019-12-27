<%@ page import="dao.BillDao" %><%--
  Created by IntelliJ IDEA.
  User: 13390
  Date: 2019-12-24
  Time: 15:18
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
<%
    BillDao billDao = new BillDao();

    int id =Integer.valueOf(request.getParameter("id"));
    billDao.delete(id);

%>
<jsp:forward page="billform.jsp"></jsp:forward>
</body>
</html>
