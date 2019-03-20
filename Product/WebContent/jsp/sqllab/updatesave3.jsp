<%--
  Created by IntelliJ IDEA.
  User: Aces
  Date: 2018/11/15
  Time: 23:11
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ page import="java.sql.*" %>
<html>
<head>
    <title>updatesave3</title>
    <link rel="stylesheet" href="style.css">
</head>
<body>
<%
    request.setCharacterEncoding("UTF-8");
    String logid = request.getParameter("logid");
    String who = request.getParameter("who");
    String time = request.getParameter("time");
    String table_name = request.getParameter("tn");
    String operation = request.getParameter("operation");
    String key_value = request.getParameter("kv");

    Class.forName("com.mysql.jdbc.Driver");
    Connection conn = DriverManager.getConnection("jdbc:mysql://120.77.253.61:3306/mydatabaselab?&useSSL=false&useUnicode=true&characterEncoding=utf8","xuanqiuyi","102354");
    Statement stat = conn.createStatement();

    String sql = "UPDATE logs SET who=?, time=?, table_name =?, operation=? ,key_value=? WHERE logid=?";
    //String sql = "update logs set who='" + who + "' where logid='"+logid+"'";

    PreparedStatement ps=conn.prepareStatement(sql);
    ps.setObject(1,who);
    ps.setObject(2,time);
    ps.setObject(3,table_name);
    ps.setObject(4,operation);
    ps.setObject(5,key_value);
    ps.setObject(6,logid);

    int rs=ps.executeUpdate();

%>

<%

    ps.close();
    response.sendRedirect("search.jsp?op=3");

%>

</body>
</html>
