<%--
  Created by IntelliJ IDEA.
  User: Aces
  Date: 2018/11/15
  Time: 22:42
  To change this template use File | Settings | File Templates.
--%>
<%@ page import="java.sql.Connection" %>
<%@ page import="java.sql.DriverManager" %>
<%@ page import="java.sql.Statement" %>
<%@ page import="java.sql.ResultSet" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>update</title>
</head>
<body>
<%
    Class.forName("com.mysql.jdbc.Driver");
    Connection conn1 = DriverManager.getConnection("jdbc:mysql://120.77.253.61:3306/mydatabaselab?&useSSL=false&useUnicode=true&characterEncoding=utf8","xuanqiuyi","102354");
    Statement stat1 = conn1.createStatement();
    String sql1 = "SELECT * FROM customers ";
    ResultSet rs1 = stat1.executeQuery(sql1);
    while(rs1.next()){
        String cid = rs1.getString("cid");
        String cname = rs1.getString("cname");
        String city=rs1.getString("city");
        String visits_made=rs1.getString("visits_made");
        String last_visit_time=rs1.getString("last_visit_time");
%>
<form action="updatesave.jsp?id=<%=cid%>" method="post">
<div  style=" border: 1px solid pink;">

        cid：<%=cid%>
        <br>
        cname: <%=cname%>&nbsp<input type="text" name="cname">
        <br>
        city:<%=city%>&nbsp<input type="text" name="city">
        <br>
        visits_made:<%=visits_made%>&nbsp<input type="text" name="vm">
        <br>
        last_visit_time:<%=last_visit_time%>&nbsp<input type="text" name="lst">
        <br>
        <input type="submit" value="Submit" align="center">
        </form>


</div>
</form>
<%}%>

</body>
</html>
