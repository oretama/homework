<%@ page import="dao.BillDao" %><%--
  Created by IntelliJ IDEA.
  User: 13390
  Date: 2019-12-24
  Time: 9:53
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
    int id = billDao.returnid() +1;
    String inout = request.getParameter("inout");
    String type = request.getParameter("type");
    String detail = request.getParameter("detail");
    String member = (String) session.getAttribute("member");
   int money =Integer.valueOf(request.getParameter("money"));
    billDao.insert(id,inout,type,detail,money,member);
    System.out.println("完成插入数据");

%>
  <script> alert("成功");</script>
  <jsp:forward page="billform.jsp"></jsp:forward>
</body>
</html>
