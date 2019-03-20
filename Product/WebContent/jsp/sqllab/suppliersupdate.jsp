<%--
  Created by IntelliJ IDEA.
  User: Aces
  Date: 2018/11/16
  Time: 10:23
  To change this template use File | Settings | File Templates.
--%>
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
    <title>update6</title>
</head>
<body>
<%
    Class.forName("com.mysql.jdbc.Driver");
    Connection conn1 = DriverManager.getConnection("jdbc:mysql://120.77.253.61:3306/mydatabaselab?&useSSL=false&useUnicode=true&characterEncoding=utf8","xuanqiuyi","102354");
    Statement stat1 = conn1.createStatement();
    String sql1 = "SELECT * FROM suppliers ";
    ResultSet rs1 = stat1.executeQuery(sql1);
    while(rs1.next()){
        String sid = rs1.getString("sid");
        String sname = rs1.getString("sname");
        String city=rs1.getString("city");
        String telephone_no=rs1.getString("telephone_no");

%>
<form action="updatesave6.jsp?sid=<%=sid%>" method="post">
    <div  style=" border: 1px solid pink;">
        <p>
            sid：<%=sid%>
            <br>
            sname: <%=sname%>&nbsp<input type="text" name="sname">
            <br>
            city:<%=city%>&nbsp<input type="text" name="city">
            <br>
            telephone_no:<%=telephone_no%>&nbsp<input type="text" name="telephone_no">
            <br>

            <input type="submit" value="Submit" align="center">
</form>
</p>

</div>
</form>
<%}%>

</body>
</html>
