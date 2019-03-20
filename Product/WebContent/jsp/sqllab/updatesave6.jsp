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
    String sid = request.getParameter("sid");
    String sname = request.getParameter("sname");
    String city = request.getParameter("city");
    String telephone_no = request.getParameter("telephone_no");


    Class.forName("com.mysql.jdbc.Driver");
    Connection conn = DriverManager.getConnection("jdbc:mysql://120.77.253.61:3306/mydatabaselab?&useSSL=false&useUnicode=true&characterEncoding=utf8","xuanqiuyi","102354");
    Statement stat = conn.createStatement();

    //String sql = "UPDATE customers SET cname=?, city=?, visits_made=?, last_visit_time=? WHERE cid=?";
    String sql = "update suppliers set sname='" + sname + "' where sid='"+sid+"'";

    PreparedStatement ps=conn.prepareStatement(sql);

    int rs=ps.executeUpdate();

%>

<%

    ps.close();

%>
<p>操作成功！查看结果：</p>
<br>

<%
    String sql1 = "SELECT * FROM suppliers ";
    ResultSet rs1 = stat.executeQuery(sql1);
    while(rs1.next()){
        String sid1 = rs1.getString("sid");
        String sname1= rs1.getString("sname");
        String city1=rs1.getString("city");
        String telephone_no1=rs1.getString("telephone_no");
%>
<div  class="style12">
    <p>
        sid:<%=sid1%>
        <br>
        sname:<%=sname1%>
        <br>
        city:<%=city1%>
        <br>
        telephone_no:<%=telephone_no1%>
        <br>
    </p>

</div>
<%}%>

</body>
</html>
