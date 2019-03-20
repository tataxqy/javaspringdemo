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
    <title>updatesave</title>
    <link rel="stylesheet" href="style.css">
</head>
<body>
<%
    request.setCharacterEncoding("UTF-8");
    String cid = request.getParameter("id");
    String cname = request.getParameter("cname");
    String city = request.getParameter("city");
    String made = request.getParameter("vm");
    String time = request.getParameter("lst");

    Class.forName("com.mysql.jdbc.Driver");
    Connection conn = DriverManager.getConnection("jdbc:mysql://120.77.253.61:3306/mydatabaselab?&useSSL=false&useUnicode=true&characterEncoding=utf8","xuanqiuyi","102354");
    Statement stat = conn.createStatement();

    String sql = "UPDATE customers SET cname=?, city=?, visits_made=?, last_visit_time=? WHERE cid=?";
    //String sql = "update customers set cname='" + cname + "' where cid='"+cid+"'";

    PreparedStatement ps=conn.prepareStatement(sql);
    ps.setObject(1,cname);
    ps.setObject(2,city);
    ps.setObject(3,made);
    ps.setObject(4,time);
    ps.setObject(5,cid);
    int rs=ps.executeUpdate();

%>

<%

    ps.close();
    response.sendRedirect("search.jsp?op=1");

%>
<p>操作成功！查看结果：</p>
<br>

<%
    String sql1 = "SELECT * FROM customers ";
    ResultSet rs1 = stat.executeQuery(sql1);
    while(rs1.next()){
        String cid1 = rs1.getString("cid");
        String cname1 = rs1.getString("cname");
        String city1=rs1.getString("city");
        String visits_made1=rs1.getString("visits_made");
        String last_visit_time1=rs1.getString("last_visit_time");
%>
<div  class="style12">
    <p>
        cid：<%=cid1%>
        <br>
        cname:<%=cname1%>
        <br>
        city:<%=city1%>
        <br>
        visits_made:<%=visits_made1%>
        <br>
        last_visit_time:<%=last_visit_time1%>

    </p>

</div>
<%}%>

</body>
</html>
