<%--
  Created by IntelliJ IDEA.
  User: Aces
  Date: 2018/11/16
  Time: 0:32
  To change this template use File | Settings | File Templates.
--%>
<%@ page import="java.sql.Connection" %>
<%@ page import="java.sql.DriverManager" %>
<%@ page import="java.sql.Statement" %>
<%@ page import="java.sql.ResultSet" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" errorPage="error.jsp"%>
<html>
<head>
    <title>delete</title>
    <link rel="stylesheet" href="style.css">
</head>
<body>
<%
    request.setCharacterEncoding("UTF-8");
    String op = request.getParameter("op");
    Class.forName("com.mysql.jdbc.Driver");
    Connection conn1 = DriverManager.getConnection("jdbc:mysql://120.77.253.61:3306/mydatabaselab?&useSSL=false&useUnicode=true&characterEncoding=utf8","xuanqiuyi","102354");
    Statement stat1 = conn1.createStatement();


    String sql1=null;
    ResultSet rs1=null;

    if(op.equals("1")) {
        //products table
        sql1 = "SELECT * FROM customers";
        rs1 = stat1.executeQuery(sql1);
%>
<table class="gridtable">
    <tr>
        <th>cid</th><th>cname</th><th>city</th><th>visits_made</th><th>last_visit_time</th><th>delete</th>
    </tr>

    <%

        while (rs1.next()) {
            String cid = rs1.getString("cid");
            String cname = rs1.getString("cname");
            String city=rs1.getString("city");
            String visits_made=rs1.getString("visits_made");
            String last_visit_time=rs1.getString("last_visit_time");
    %>
    <tr>
        <td><%=cid%></td>
        <td><%=cname%></td>
        <td><%=city%></td>
        <td><%=visits_made%></td>
        <td><%=last_visit_time%></td>

        <td><a href="deleteresponse.jsp?op=1&cid=<%=cid%>">Delete</a></td>
    </tr>

    <%

        }%>
</table>
<%}
    if(op.equals("2")) {
        //employees
        sql1 = "SELECT * FROM employees";
        rs1 = stat1.executeQuery(sql1);
%>
<table class="gridtable">
    <tr>
        <th>eid</th><th>ename</th><th>city</th><th>delete</th>
    </tr>

    <%

        while (rs1.next()) {
            String eid = rs1.getString("eid");
            String ename = rs1.getString("ename");
            String city=rs1.getString("city");
    %>
    <tr>
        <td><%=eid%></td>
        <td><%=ename%></td>
        <td><%=city%></td>

        <td><a href="deleteresponse.jsp?op=2&eid=<%=eid%>">Delete</a></td>
    </tr>

    <%

        }%>
</table>
<%}
    if(op.equals("3"))
    {
        sql1 = "SELECT * FROM logs";
        rs1 = stat1.executeQuery(sql1);%>

        <table class="gridtable">
            <tr>
                <th>logid</th><th>who</th><th>time</th><th>table_name</th><th>operation</th><th>key_value</th>
            </tr>
                <%
        while(rs1.next()){
            String logid = rs1.getString("logid");
            String who = rs1.getString("who");
            String time=rs1.getString("time");
            String table_name=rs1.getString("table_name");
            String operation=rs1.getString("operation");
            String key_value=rs1.getString("key_value");%>
                    <tr>
                        <td><%=logid%></td>
                        <td><%=who%></td>
                        <td><%=time%></td>
                        <td><%=table_name%></td>
                        <td><%=operation%></td>
                        <td><%=key_value%></td>
                        <a href="deleteresponse.jsp?op=3&logid=<%=logid%>">Delete</a>
                    </tr>


    <%}
    %></table>

   <% }
    if(op.equals("4")) {
        //products table
        sql1 = "SELECT * FROM products";
        rs1 = stat1.executeQuery(sql1);
        %>
<table class="gridtable">
    <tr>
        <th>pid</th><th>pname</th><th>qoh</th><th>qoh_threshold</th><th>original_price</th><th>discnt_rate</th><th>sid</th><th>delete</th>
    </tr>

    <%

        while (rs1.next()) {
            String pid = rs1.getString("pid");
            String pname = rs1.getString("pname");
            String qoh = rs1.getString("qoh");
            String qoh_threshold = rs1.getString("qoh_threshold");
            String original_price= rs1.getString("original_price");
            String discnt_rate=rs1.getString("discnt_rate");
            String sid=rs1.getString("sid");
            %>
    <tr>
        <td><%=pid%></td>
        <td><%=pname%></td>
        <td><%=qoh%></td>
        <td><%=qoh_threshold%></td>
        <td><%=original_price%></td>
        <td><%=discnt_rate%></td>
        <td><%=sid%></td>
        <td><a href="deleteresponse.jsp?op=4&pid=<%=pid%>">Delete</a></td>
    </tr>

    <%

        }%>
</table>
    <%}
    if(op.equals("5"))
    {
        sql1 = "SELECT * FROM purchases";
        rs1 = stat1.executeQuery(sql1);
        %>
<table class="gridtable">
    <tr>
        <th>pid</th><th>pname</th><th>qoh</th><th>qoh_threshold</th><th>original_price</th><th>discnt_rate</th><th>sid</th><th>delete</th>
    </tr>
    <%
        while (rs1.next()) {
            String purid = rs1.getString("purid");
            String cid = rs1.getString("cid");
            String eid = rs1.getString("eid");
            String pid = rs1.getString("pid");
            String qty = rs1.getString("qty");
            String ptime = rs1.getString("ptime");
            String total_price = rs1.getString("total_price");
           %>
    <tr>
        <td><%=purid%></td>
        <td><%=cid%></td>
        <td><%=eid%></td>
        <td><%=pid%></td>
        <td><%=qty%></td>
        <td><%=ptime%></td>
        <td><%=total_price%></td>
        <td><a href="deleteresponse.jsp?op=5&purid=<%=purid%>">Delete</a></td>
    </tr>
    <%
        }
        %>
</table>
    <%
    }


    if(op.equals("6"))
    {
        sql1 = "SELECT * FROM suppliers";
        rs1 = stat1.executeQuery(sql1);
        %>

<table class="gridtable">
    <tr>
        <th>sid</th><th>sname</th><th>city</th><th>telephone_no</th><th>delete</th>
    </tr>
    <%
        while(rs1.next()){
            String sid = rs1.getString("sid");
            String sname = rs1.getString("sname");
            String city=rs1.getString("city");
            String telephone_no=rs1.getString("telephone_no");
           %>
    <tr>
        <td><%=sid%></td>
        <td><%=sname%></td>
        <td><%=city%></td>
        <td><%=telephone_no%></td>

        <td><a href="deleteresponse.jsp?op=6&sid=<%=sid%>">Delete</a></td>
    </tr>

    <%
    }

%>
</table>
<%}%>



</body>
</html>
