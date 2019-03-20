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
    String cid =request.getParameter("cid");
    String purid = request.getParameter("purid");
    String eid = request.getParameter("eid");
    String qty1=request.getParameter("qty");

    int qty = Integer.valueOf(qty1).intValue();
    String pid = request.getParameter("pid");

    Class.forName("com.mysql.jdbc.Driver");
    Connection conn = DriverManager.getConnection("jdbc:mysql://120.77.253.61:3306/mydatabaselab?&useSSL=false&useUnicode=true&characterEncoding=utf8","xuanqiuyi","102354");
    Statement stat = conn.createStatement();

    String sql = "call add_purchases(?,?,?,?,?);";

    PreparedStatement ps=conn.prepareStatement(sql);
    ps.setObject(1,purid);
    ps.setObject(2,cid);
    ps.setObject(3,eid);
    ps.setObject(4,pid);
    ps.setObject(5,qty);
    int rs=ps.executeUpdate();
    response.sendRedirect("success.jsp");




%>
</body>
</html>
