<%--
  Created by IntelliJ IDEA.
  User: Aces
  Date: 2018/11/20
  Time: 20:16
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ page import="java.sql.Connection" %>
<%@ page import="java.sql.DriverManager" %>
<%@ page import="java.sql.Statement" %>
<%@ page import="java.sql.ResultSet" %>
<html>
<head>
    <title>search</title>
    <link rel="stylesheet" href="style.css">
    <link rel="stylesheet" type="text/css" href="/css/reset.css" />
    <link rel="stylesheet" href="${pageContext.request.contextPath }/jsp/products_page_style.css">
    <link rel="stylesheet" href="/css/button.css">
    <script type="\resources\My97DatePicker\WdatePicker.js"></script>

</head>
<body>
<%
    request.setCharacterEncoding("UTF-8");
    String op = request.getParameter("op");
    Class.forName("com.mysql.jdbc.Driver");
    Connection conn1 = DriverManager.getConnection("jdbc:mysql://120.77.253.61:3306/mydatabaselab?&useSSL=false&useUnicode=true&characterEncoding=utf8","xuanqiuyi","102354");
    Statement stat1 = conn1.createStatement();
    String sql1=null;

    if(op.equals("1"))
    {
        sql1 = "call show_tables(2)";
        ResultSet rs1 = stat1.executeQuery(sql1);
        %>
<table class="gridtable">
    <thead>
    <tr>
        <th scope="col" class="rounded-company">cid</th>
        <th scope="col" class="rounded-q1">cname</th>
        <th scope="col" class="rounded-q2">city</th>
        <th scope="col" class="rounded-q3">visits_made</th>
        <th scope="col" class="rounded-q4">last_visit_time</th>
    </tr>
    </thead>


<%
        while(rs1.next()){
            String cid = rs1.getString("cid");
            String cname = rs1.getString("cname");
            String city=rs1.getString("city");
            String visits_made=rs1.getString("visits_made");
            String last_visit_time=rs1.getString("last_visit_time");

            %>

    <tbody>
    <tr>
        <td><%=cid%></td>
        <td><%=cname%></td>
        <td><%=city%></td>
        <td><%=visits_made%></td>
        <td><%=last_visit_time%></td>
    </tr>

    </tbody>

<%
    }
    %>
</table>
<%
    }

    else if(op.equals("2"))
    {
        sql1 = "call show_tables(1)";
        ResultSet rs1 = stat1.executeQuery(sql1);
%>
<table class="gridtable">
    <thead>
    <tr>
        <th scope="col" class="rounded-company">eid</th>
        <th scope="col" class="rounded-q1">ename</th>
        <th scope="col" class="rounded-q2">city</th>

    </tr>
    </thead>

    <%
        while(rs1.next()){
            String eid = rs1.getString("eid");
            String ename = rs1.getString("ename");
            String city=rs1.getString("city");

    %>

    <tbody>
    <tr>
        <td><%=eid%></td>
        <td><%=ename%></td>
        <td><%=city%></td>

    </tr>

    </tbody>

    <%
        }
    %>
</table>
<%
    }

    else if(op.equals("3"))
    {
        sql1 = "call show_tables(3) ";
        ResultSet rs1 = stat1.executeQuery(sql1);
%>
<table class="gridtable">
    <thead>
    <tr>
        <th scope="col" class="rounded-company">logid</th>
        <th scope="col" class="rounded-q1">who</th>
        <th scope="col" class="rounded-q2">time</th>
        <th>table_name</th>
        <th>operation</th>
        <th>key_value</th>
    </tr>
    </thead>

    <%
        if(!rs1.next())
        {%>
    <p align="center">暂无记录！</p>
    <%}
        while(rs1.next()){
            String logid = rs1.getString("logid");
            String who = rs1.getString("who");
            String time=rs1.getString("time");
            String table_name=rs1.getString("table_name");
            String operation=rs1.getString("operation");
            String key_value=rs1.getString("key_value");

    %>
    <tbody>
    <tr>
        <td><%=logid%></td>
        <td><%=who%></td>
        <td><%=time%></td>
        <td><%=table_name%></td>
        <td><%=operation%></td>
        <td><%=key_value%></td>

    </tr>

    </tbody>

    <%
        }
    %>
</table>
<%
    }

    else if(op.equals("4"))
    {
        sql1 = "call show_tables(4) ";
        ResultSet rs1 = stat1.executeQuery(sql1);
%>
<div class="container">
    <div class="products-preview">
        <header class="main-header">
            <h1 class="title">商品列表</h1>
        </header>
        <div class="products-builder">
            <ul>
                <li class="build">
                    <section class="products-content">
                        <ul class="products-list">
    <%

        int i=0;
        while(rs1.next()){
            i++;
            String pid = rs1.getString("pid");
            String pname = rs1.getString("pname");
            String qoh=rs1.getString("qoh");
            String qoh_threshold=rs1.getString("qoh_threshold");
            String original_price=rs1.getString("original_price");
            String discnt_rate=rs1.getString("discnt_rate");
            String sid=rs1.getString("sid");

    %>

                            <li>
                                <pre ><%=pname%></pre>
                                <br>

                                <pre ></pre>
                                <br>
                                <img src="${pageContext.request.contextPath }/jsp/resources/images/article/<%=i%>.jpg" height="400px" width="400px"alt="...">
                                <form method="post" action="preArticle.jsp?pid=<%=pid%>&pname=<%=pname%>&qoh=<%=qoh%>&original_price=<%=original_price%>&discnt_rate=<%=discnt_rate%>&i=<%=i%>">
                                <input type="submit" value="查看详情" class="button button-pill button-primary">
                                </form>
                            </li>
    <%
        }
    %>
                        </ul>

                    </section>
            </li>
            </ul>
    </div>
</div>





<%
    }
    else if(op.equals("5"))
    {
        sql1 = "call show_tables(5)";
        ResultSet rs1 = stat1.executeQuery(sql1);
%>
<table class="gridtable">
    <thead>
    <tr>
        <th scope="col" class="rounded-company">puid</th>
        <th scope="col" class="rounded-q1">cid</th>
        <th scope="col" class="rounded-q2">eid</th>
        <th>pid</th>
        <th>qty</th>
        <th>ptime</th>
        <th>total_price</th>
    </tr>
    </thead>

    <%

        while(rs1.next()){
            String purid = rs1.getString("purid");
            String cid = rs1.getString("cid");
            String eid=rs1.getString("eid");
            String pid=rs1.getString("pid");
            String qty=rs1.getString("qty");
            String ptime=rs1.getString("ptime");
            String total_price=rs1.getString("total_price");

    %>
    <tbody>
    <tr>
        <td><%=purid%></td>
        <td><%=cid%></td>
        <td><%=eid%></td>
        <td><%=pid%></td>
        <td><%=qty%></td>
        <td><%=ptime%></td>
        <td><%=total_price%></td>

    </tr>

    </tbody>

    <%
        }
    %>
</table>
<%
    }

    else if(op.equals("6"))
    {
        sql1 = "SELECT * FROM suppliers";
        ResultSet rs1 = stat1.executeQuery(sql1);
%>
<table class="gridtable">
    <thead>
    <tr>
        <th scope="col" class="rounded-company">sid</th>
        <th scope="col" class="rounded-q1">sname</th>
        <th scope="col" class="rounded-q2">city</th>
        <th>telephone_no</th>
    </tr>
    </thead>

    <%

        while(rs1.next()){
            String sid = rs1.getString("sid");
            String sname = rs1.getString("sname");
            String city=rs1.getString("city");
            String telephone_no=rs1.getString("telephone_no");
    %>
    <tbody>
    <tr>
        <td><%=sid%></td>
        <td><%=sname%></td>
        <td><%=city%></td>
        <td><%=telephone_no%></td>


    </tr>

    </tbody>

    <%
        }
    %>
</table>
<%
    }

%>

</body>
</html>
