<%@ page import="java.sql.Connection" %>
<%@ page import="java.sql.DriverManager" %>
<%@ page import="java.sql.Statement" %>
<%@ page import="java.sql.PreparedStatement" %><%--
  Created by IntelliJ IDEA.
  User: Aces
  Date: 2018/12/27
  Time: 23:08
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>处理页</title>
</head>
<body>
<%
    request.setCharacterEncoding("UTF-8");
    String pid =request.getParameter("pid");
    String pname = request.getParameter("pname");
    String qoh = request.getParameter("qoh");
    String qoh_threshold=request.getParameter("qoh_threshold");
    String original_price=request.getParameter("original_price");
    String discnt_rate=request.getParameter("discnt_rate");
    String sid=request.getParameter("sid");



    Class.forName("com.mysql.jdbc.Driver");
    Connection conn = DriverManager.getConnection("jdbc:mysql://120.77.253.61:3306/mydatabaselab?&useSSL=false&useUnicode=true&characterEncoding=utf8","xuanqiuyi","102354");
    Statement stat = conn.createStatement();

    String sql = "call add_products(?,?,?,?,?,?,?);";
    //String sql = "update customers set cname='" + cname + "' where cid='"+cid+"'";

    PreparedStatement ps=conn.prepareStatement(sql);
    ps.setObject(1,pid);
    ps.setObject(2,pname);
    ps.setObject(3,qoh);
    ps.setObject(4,qoh_threshold);
    ps.setObject(5,original_price);
    ps.setObject(6,discnt_rate);
    ps.setObject(7,sid);
    int rs=ps.executeUpdate();



%>
</body>
</html>
