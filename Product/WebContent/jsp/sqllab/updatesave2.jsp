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
    <title>updatesave2</title>
    <link rel="stylesheet" href="style.css">
</head>
<body>
<%
    request.setCharacterEncoding("UTF-8");
    String eid = request.getParameter("eid");
    String ename = request.getParameter("ename");
    String city = request.getParameter("city");


    Class.forName("com.mysql.jdbc.Driver");
    Connection conn = DriverManager.getConnection("jdbc:mysql://120.77.253.61:3306/mydatabaselab?&useSSL=false&useUnicode=true&characterEncoding=utf8","xuanqiuyi","102354");
    Statement stat = conn.createStatement();

    //String sql = "UPDATE customers SET cname=?, city=?, visits_made=?, last_visit_time=? WHERE cid=?";
    //String sql = "update employees set ename='" + ename + "' where eid='"+eid+"'";
    String sql = "UPDATE employees SET ename=?, city=? WHERE eid=?";
    PreparedStatement ps=conn.prepareStatement(sql);
    ps.setObject(1,ename);
    ps.setObject(2,city);
    ps.setObject(3,eid);

    int rs=ps.executeUpdate();

%>

<%

    ps.close();
    response.sendRedirect("search.jsp?op=2");

%>
<p>操作成功！查看结果：</p>
<br>

<%
    String sql1 = "SELECT * FROM employees ";
    ResultSet rs1 = stat.executeQuery(sql1);
    while(rs1.next()){
        String eid1 = rs1.getString("eid");
        String ename1 = rs1.getString("ename");
        String city1=rs1.getString("city");

%>
<div  class="style12">
    <p>
        eid：<%=eid1%>
        <br>
        ename:<%=ename1%>
        <br>
        city:<%=city1%>
        <br>

    </p>

</div>
<%}%>

</body>
</html>
