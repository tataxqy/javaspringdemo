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
    <title>updatesave5</title>
    <link rel="stylesheet" href="style.css">
</head>
<body>
<%
    request.setCharacterEncoding("UTF-8");
    String purid = request.getParameter("purid");
    String cid = request.getParameter("cid");
    String eid = request.getParameter("eid");
    String pid = request.getParameter("pid");
    String qty = request.getParameter("qty");
    String ptime=request.getParameter("ptime");
    String tp=request.getParameter("tp");

    Class.forName("com.mysql.jdbc.Driver");
    Connection conn = DriverManager.getConnection("jdbc:mysql://120.77.253.61:3306/mydatabaselab?&useSSL=false&useUnicode=true&characterEncoding=utf8","xuanqiuyi","102354");
    Statement stat = conn.createStatement();

    String sql = "UPDATE customers SET cid=?, eid=?, pid=?, qty=?,ptime=?,total_price=? WHERE purid=?";
    //String sql = "update customers set cname='" + cname + "' where cid='"+cid+"'";

    PreparedStatement ps=conn.prepareStatement(sql);
    ps.setObject(1,cid);
    ps.setObject(2,eid);
    ps.setObject(3,pid);
    ps.setObject(4,qty);
    ps.setObject(5,ptime);
    ps.setObject(6,tp);
    ps.setObject(7,purid);
    int rs=ps.executeUpdate();

%>

<%

    ps.close();
    response.sendRedirect("search.jsp?op=5");

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
