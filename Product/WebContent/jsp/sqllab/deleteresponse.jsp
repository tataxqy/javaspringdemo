<%--
  Created by IntelliJ IDEA.
  User: Aces
  Date: 2018/11/20
  Time: 9:34
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" errorPage="error.jsp"%>
<%@ page import="java.sql.*" %>
<html>
<head>
    <title>deleteresponse</title>
    <link rel="stylesheet" href="style.css">

</head>
<body>
<%
    String op = request.getParameter("op");
    if(op.equals("1"))
    {
        //logs表删除操作
        request.setCharacterEncoding("UTF-8");
        String cid = request.getParameter("cid");
        Class.forName("com.mysql.jdbc.Driver");
        Connection conn = DriverManager.getConnection("jdbc:mysql://120.77.253.61:3306/mydatabaselab?&useSSL=false&useUnicode=true&characterEncoding=utf8","xuanqiuyi","102354");
        Statement stat = conn.createStatement();


        String sql = "delete from customers where cid='"+cid+"'";

        PreparedStatement ps=conn.prepareStatement(sql);
        int rs=ps.executeUpdate();
        ps.close();
        stat.close();
        response.sendRedirect("delete.jsp?op=1");//重定向回原页面
    }
    if(op.equals("2"))
    {
        //logs表删除操作
        request.setCharacterEncoding("UTF-8");
        String eid = request.getParameter("eid");
        Class.forName("com.mysql.jdbc.Driver");
        Connection conn = DriverManager.getConnection("jdbc:mysql://120.77.253.61:3306/mydatabaselab?&useSSL=false&useUnicode=true&characterEncoding=utf8","xuanqiuyi","102354");
        Statement stat = conn.createStatement();


        String sql = "delete from employees where eid='"+eid+"'";

        PreparedStatement ps=conn.prepareStatement(sql);
        int rs=ps.executeUpdate();
        ps.close();
        stat.close();
        response.sendRedirect("delete.jsp?op=2");//重定向回原页面
    }
    if(op.equals("3"))
    {
        //logs表删除操作
        request.setCharacterEncoding("UTF-8");
        String logid = request.getParameter("logid");
        Class.forName("com.mysql.jdbc.Driver");
        Connection conn = DriverManager.getConnection("jdbc:mysql://120.77.253.61:3306/mydatabaselab?&useSSL=false&useUnicode=true&characterEncoding=utf8","xuanqiuyi","102354");
        Statement stat = conn.createStatement();


        String sql = "delete from logs where logid='"+logid+"'";

        PreparedStatement ps=conn.prepareStatement(sql);
        int rs=ps.executeUpdate();
        ps.close();
        stat.close();
        response.sendRedirect("delete.jsp?op=3");//重定向回原页面
    }

    else if(op.equals("4"))
    {
        //products table delete
        request.setCharacterEncoding("UTF-8");
        String pid = request.getParameter("pid");
        Class.forName("com.mysql.jdbc.Driver");
        Connection conn = DriverManager.getConnection("jdbc:mysql://120.77.253.61:3306/mydatabaselab?&useSSL=false&useUnicode=true&characterEncoding=utf8","xuanqiuyi","102354");
        Statement stat = conn.createStatement();


        String sql = "delete from products where pid='"+pid+"'";

        PreparedStatement ps=conn.prepareStatement(sql);
        int rs=ps.executeUpdate();
        ps.close();
        stat.close();
        response.sendRedirect("delete.jsp?op=4");//重定向回原页面

    }
    else if(op.equals("5"))
    {
        //purchases table delete
        request.setCharacterEncoding("UTF-8");
        String purid = request.getParameter("purid");
        Class.forName("com.mysql.jdbc.Driver");
        Connection conn = DriverManager.getConnection("jdbc:mysql://120.77.253.61:3306/mydatabaselab?&useSSL=false&useUnicode=true&characterEncoding=utf8","xuanqiuyi","102354");
        Statement stat = conn.createStatement();


        String sql = "delete from purchases where purid='"+purid+"'";

        PreparedStatement ps=conn.prepareStatement(sql);
        int rs=ps.executeUpdate();
        ps.close();
        stat.close();
        response.sendRedirect("delete.jsp?op=5");//重定向回原页面

    }

    else if (op.equals("6"))
    {
        //suppliers delete
        request.setCharacterEncoding("UTF-8");
        String sid = request.getParameter("sid");
        Class.forName("com.mysql.jdbc.Driver");
        Connection conn = DriverManager.getConnection("jdbc:mysql://120.77.253.61:3306/mydatabaselab?&useSSL=false&useUnicode=true&characterEncoding=utf8","xuanqiuyi","102354");
        Statement stat = conn.createStatement();


        String sql = "delete from suppliers where sid='"+sid+"'";

        PreparedStatement ps=conn.prepareStatement(sql);
        int rs=ps.executeUpdate();
        ps.close();
        stat.close();
        response.sendRedirect("delete.jsp?op=6");//重定向回原页面

        %>

<%



    }


%>
</body>
</html>
