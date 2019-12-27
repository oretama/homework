<%@ page import="dao.BillDao" %>
<%@ page import="vo.Bill" %>
<%@ page import="java.util.ArrayList" %><%--
  Created by IntelliJ IDEA.
  User: 13390
  Date: 2019-12-24
  Time: 10:39
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
</head>
<body>

<div id="head" style="background-color: #00FFFF; ; height:100px;" ><p align="left" style="font-size:50px; position:relative; top:20% ; left:10%">家庭记账 <a href="index.jsp" style="font-size: 30px; position:absolute; left: 80%;top: 10%;">登出</a></p></div>

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
    <p align="center" style="font-size:50px; font-family:'幼圆' ; ">结果展示</p>
    <table align="center" 	style="position:relative; top:30px; height:30px; border-collapse:collapse; border:1px; table-layout: fixed" bgcolor="#FFFFFF" width="80%">
        <tr> <td>id</td>
            <td>收支类型</td>
            <td>类型</td>
            <td>数目</td>
            <td>详细</td>
            <td>成员</td></tr>
        <%
            BillDao billDao  = new BillDao();
            String type = request.getParameter("select");
            String string = request.getParameter("string");
            System.out.println("string = " + string);
            int sum =0;
            ArrayList<Bill> ba = new ArrayList<>();
            ArrayList<Bill> bal = new ArrayList();


            if(type.equals("inout"))
            {
                System.out.println("开始查询收支");
              bal = billDao.select_inout(string);
            }

            if(type.equals("type"))
            {
                System.out.println("开始查询类型");
                bal =billDao.select_type(string);
            }

            if(type.equals("member"))
            {
                System.out.println("开始查询成员");
                bal =billDao.select_member(string);
            }


            for (int i =0; i <bal.size();i++)
            {
                Bill bill = new Bill();
                System.out.println("开始输出表格");
                //  %>

        <tr><td><%= bal.get(i).getId()%></td>
            <td><%=bal.get(i).getInout()%></td>
            <td><%=bal.get(i).getType()%></td>
            <td><%= bal.get(i).getMoney()%></td>
            <td><%= bal.get(i).getDetail()%></td>
            <td><%= bal.get(i).getMember()%></td></tr>

        <%
                if(bal.get(i).getInout().equals("收入")){
                    sum=sum+bal.get(i).getMoney();
                }
                else
                if(bal.get(i).getInout().equals("支出"))
                {
                    sum=sum-bal.get(i).getMoney();
                }
            }

            String io="";
            if(sum>0)
            {
                io = "收入";
            }
            else {
                io = "支出";
            }
        %>
        <tr> <td>总和</td>
            <td><%= io %></td>
            <td></td>
            <td><%=sum%></td>
            <td></td>
            <td></td></tr>
    </table>
</div>
</body>
</html>
