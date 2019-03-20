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
    String sql1 = "SELECT * FROM logs ";
    ResultSet rs1 = stat1.executeQuery(sql1);

        while(rs1.next()){
            String logid = rs1.getString("logid");
            String who = rs1.getString("who");
            String time=rs1.getString("time");
            String table_name=rs1.getString("table_name");
            String operation=rs1.getString("operation");
            String key_value=rs1.getString("key_value");
%>
<form action="updatesave3.jsp?id=<%=logid%>" method="post">
    <div  style=" border: 1px solid pink;">

            logid：<%=logid%>
            <br>
            who: <%=who%>&nbsp<input type="text" name="who">
            <br>
            time:<%=time%>&nbsp<input type="text" name="time">
            <br>
            table_name :<%=table_name%>&nbsp<input type="text" name="tn">
            <br>
            operation:<%=operation%>&nbsp<input type="text" name="operation">
            <br>
            key_value:<%=key_value%>&nbsp<input type="text" name="kv">
            <br>
            <input type="submit" value="Submit" align="center">
</form>
</p>

</div>
</form>
<%}%>

</body>
</html>
