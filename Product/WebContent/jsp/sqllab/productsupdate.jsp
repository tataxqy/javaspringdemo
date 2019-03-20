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
    String sql1 = "SELECT * FROM products ";
    ResultSet rs1 = stat1.executeQuery(sql1);
    while(rs1.next()){
        String pid = rs1.getString("pid");
        String pname = rs1.getString("pname");
        String qoh=rs1.getString("qoh");
        String qt=rs1.getString("qoh_threshold");
        String original_price=rs1.getString("original_price");
        String dr=rs1.getString("discnt_rate");
        String sid=rs1.getString("sid");
%>
<form action="updatesave4.jsp?pid=<%=pid%>" method="post">
<div  style=" border: 1px solid pink;">

        pid：<%=pid%>
        <br>
        pname: <%=pname%>&nbsp<input type="text" name="pname">
        <br>
        qoh:<%=qoh%>&nbsp<input type="text" name="qoh">
        <br>
        qoh_threshold:<%=qt%>&nbsp<input type="text" name="qt">
        <br>
        original_price:<%=original_price%>&nbsp<input type="text" name="opr">
        <br>
        discnt_rate:<%=dr%>&nbsp<input type="text" name="dr">
        <br>
        sid:<%=sid%>&nbsp<input type="text" name="sid">
        <br>
        <input type="submit" value="Submit" align="center">
        </form>


</div>
</form>
<%}%>

</body>
</html>
