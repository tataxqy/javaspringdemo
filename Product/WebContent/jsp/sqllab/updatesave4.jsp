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
    <title>updatesave4</title>
    <link rel="stylesheet" href="style.css">
</head>
<body>
<%
    request.setCharacterEncoding("UTF-8");
    String pid = request.getParameter("pid");
    String pname = request.getParameter("pname");
    String qoh = request.getParameter("qoh");
    String qt = request.getParameter("qt");
    String opr = request.getParameter("opr");
    String dr = request.getParameter("dr");
    String sid=request.getParameter("sid");

    Class.forName("com.mysql.jdbc.Driver");
    Connection conn = DriverManager.getConnection("jdbc:mysql://120.77.253.61:3306/mydatabaselab?&useSSL=false&useUnicode=true&characterEncoding=utf8","xuanqiuyi","102354");
    Statement stat = conn.createStatement();

    String sql = "UPDATE products SET pname=?, qoh=?,  qt=?, opr=? ,dr=?,sid=? WHERE pid=?";
    //String sql = "update logs set who='" + who + "' where logid='"+logid+"'";

    PreparedStatement ps=conn.prepareStatement(sql);
    ps.setObject(1,pname);
    ps.setObject(2,qoh);
    ps.setObject(3,qt);
    ps.setObject(4,opr);
    ps.setObject(5,dr);
    ps.setObject(6,sid);
    ps.setObject(7,pid);

    int rs=ps.executeUpdate();

%>

<%

    ps.close();
    response.sendRedirect("search.jsp?op=4");

%>

</body>
</html>
