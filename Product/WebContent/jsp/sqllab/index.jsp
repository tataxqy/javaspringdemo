<%--
  Created by IntelliJ IDEA.
  User: Aces
  Date: 2018/11/9
  Time: 11:47
  To change this template use File | Settings | File Templates.
--%>

<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@page import="java.sql.*"%>
<%@page import="java.util.Date"%>
<html>
<head>
  <link rel="stylesheet" href="sqllab/style.css">

  <script>

  </script>
</head>
<body>



<div class="style2" align="center">
  <p>customers</p>
  <br>

  <a href="search.jsp?op=1">查询 </a>&nbsp;
  <a href="sqllab/insert.jsp?op=1">插入 </a>&nbsp;
  <a href="sqllab/customersupdate.jsp">修改 </a>&nbsp;
  <a href="sqllab/delete.jsp?op=1">删除 </a>&nbsp;

</div>

<div class="style8" align="center">
  <p>employees</p>
  <br>
  <a href="search.jsp?op=2">查询 </a>&nbsp;
  <a href="sqllab/insert.jsp?op=2">插入 </a>&nbsp;
  <a href="sqllab/employeesupdate.jsp">修改 </a>&nbsp;
  <a href="sqllab/delete.jsp?op=2">删除 </a>&nbsp;
</div>

<div class="style4" align="center">
  <p>logs</p>
  <br>
  <a href="search.jsp?op=3">查询 </a>&nbsp;
  <a href="sqllab/insert.jsp?op=3">插入 </a>&nbsp;
  <a href="sqllab/logsupdate.jsp">修改 </a>&nbsp;
  <a href="sqllab/delete.jsp?op=3">删除 </a>&nbsp;
</div>

<div class="style5"  align="center">
  <p>products</p>
  <br>
  <a href="search.jsp?op=4">查询 </a>&nbsp;
  <a href="sqllab/insert.jsp?op=4">插入 </a>&nbsp;
  <a href="sqllab/productsupdate.jsp">修改 </a>&nbsp;
  <a href="sqllab/delete.jsp?op=4">删除 </a>&nbsp;
</div>

<div class="style6" align="center">
  <p>purchases</p>
  <br>
  <a href="search.jsp?op=5">查询 </a>&nbsp;
  <a href="sqllab/insert.jsp?op=5">插入 </a>&nbsp;
  <a href="sqllab/purchasesupdate.jsp">修改 </a>&nbsp;
  <a href="sqllab/delete.jsp?op=5">删除 </a>&nbsp;
</div>

<div class="style7" align="center">
  <p>suppliers</p>
  <br>
  <a href="search.jsp?op=6">查询 </a>&nbsp;
  <a href="insert.jsp?op=6">插入 </a>&nbsp;
  <a href="sqllab/suppliersupdate.jsp">修改 </a>&nbsp;
  <a href="sqllab/delete.jsp?op=6">删除 </a>&nbsp;
</div>



</body>
</html>

