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
    String sql1 = "SELECT * FROM purchases ";
    ResultSet rs1 = stat1.executeQuery(sql1);
    while(rs1.next()){
        String purid = rs1.getString("purid");
        String cid = rs1.getString("cid");
        String eid=rs1.getString("eid");
        String pid=rs1.getString("pid");
        String qty=rs1.getString("qty");
        String ptime=rs1.getString("ptime");
        String tp=rs1.getString("total_price");

%>
<form action="updatesave5.jsp?purid=<%=purid%>" method="post">
<div  style=" border: 1px solid pink;">

        purid：<%=purid%>
        <br>
        cid: <%=cid%>&nbsp<input type="text" name="cid">
        <br>
        eid:<%=eid%>&nbsp<input type="text" name="eid">
        <br>
        pid:<%=pid%>&nbsp<input type="text" name="pid">
        <br>
        qty:<%=qty%>&nbsp<input type="text" name="qty">
        <br>
        ptime:<%=ptime%>&nbsp<input type="text" name="ptime">
        <br>
        tp:<%=tp%>&nbsp<input type="text" name="tp">
        <br>
        <input type="submit" value="Submit" align="center">
        </form>


</div>
</form>
<%}%>

</body>
</html>
