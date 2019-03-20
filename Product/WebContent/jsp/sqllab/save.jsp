<%@ page import="java.sql.*" %><%--
  Created by IntelliJ IDEA.
  User: Aces
  Date: 2018/11/15
  Time: 22:19
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>operationpage</title>
</head>

<body>
<%
    String  op=request.getParameter("op");
    request.setCharacterEncoding("UTF-8");
    if(op.equals("1"))
    {

        String cid = request.getParameter("cid");
        String cname = request.getParameter("cname");
        String city = request.getParameter("city");
        String made = request.getParameter("vm");
        String time = request.getParameter("lvt");
        Class.forName("com.mysql.jdbc.Driver");
        Connection conn = DriverManager.getConnection("jdbc:mysql://120.77.253.61:3306/mydatabaselab?&useSSL=false&useUnicode=true&characterEncoding=utf8","xuanqiuyi","102354");
        Statement stat = conn.createStatement();
        String sql = "INSERT INTO customers(cid,cname,city,visits_made,last_visit_time) VALUES(?,?,?,?,?)";

        PreparedStatement ps=conn.prepareStatement(sql);
        ps.setObject(1,cid);
        ps.setObject(2,cname);
        ps.setObject(3,city);
        ps.setObject(4,made);
        ps.setObject(5,time);
        int rs=ps.executeUpdate();
        ps.close();
        response.sendRedirect("search.jsp?op=1");


    }
    else if(op.equals("2"))
    {
        String eid = request.getParameter("eid");
        String ename = request.getParameter("ename");
        String city = request.getParameter("city");

        Class.forName("com.mysql.jdbc.Driver");
        Connection conn = DriverManager.getConnection("jdbc:mysql://120.77.253.61:3306/mydatabaselab?&useSSL=false&useUnicode=true&characterEncoding=utf8","xuanqiuyi","102354");
        Statement stat = conn.createStatement();
        String sql = "INSERT INTO employees(eid,ename,city) VALUES(?,?,?)";

        PreparedStatement ps=conn.prepareStatement(sql);
        ps.setObject(1,eid);
        ps.setObject(2,ename);
        ps.setObject(3,city);
        int rs=ps.executeUpdate();
        ps.close();
        response.sendRedirect("search.jsp?op=2");

    }
    else if(op.equals("3"))
    {
        String logid = request.getParameter("logid");
        String who= request.getParameter("who");
        String time = request.getParameter("time");
        String table_name=request.getParameter("tn");
        String operation=request.getParameter("operation");
        String key_value=request.getParameter("kv");

        Class.forName("com.mysql.jdbc.Driver");
        Connection conn = DriverManager.getConnection("jdbc:mysql://120.77.253.61:3306/mydatabaselab?&useSSL=false&useUnicode=true&characterEncoding=utf8","xuanqiuyi","102354");
        Statement stat = conn.createStatement();
        String sql = "INSERT INTO logs(logid,who,time,table_name,operation,key_value) VALUES(?,?,?,?,?,?)";

        PreparedStatement ps=conn.prepareStatement(sql);
        ps.setObject(1,logid);
        ps.setObject(2,who);
        ps.setObject(3,time);
        ps.setObject(4,table_name);
        ps.setObject(5,operation);
        ps.setObject(6,key_value);
        int rs=ps.executeUpdate();
        ps.close();
        response.sendRedirect("search.jsp?op=3");


    }

    else if(op.equals("4"))
    {
        String pid = request.getParameter("pid");
        String pname= request.getParameter("pname");
        String qoh = request.getParameter("qoh");
        String qt=request.getParameter("qt");
        String orp=request.getParameter("orp");
        String dr=request.getParameter("dr");
        String sid=request.getParameter("sid");

        Class.forName("com.mysql.jdbc.Driver");
        Connection conn = DriverManager.getConnection("jdbc:mysql://120.77.253.61:3306/mydatabaselab?&useSSL=false&useUnicode=true&characterEncoding=utf8","xuanqiuyi","102354");
        Statement stat = conn.createStatement();
        String sql = "INSERT INTO products(pid,pname,qoh,qoh_threshold,original_price,discnt_rate,sid) VALUES(?,?,?,?,?,?,?)";

        PreparedStatement ps=conn.prepareStatement(sql);
        ps.setObject(1,pid);
        ps.setObject(2,pname);
        ps.setObject(3,qoh);
        ps.setObject(4,qt);
        ps.setObject(5,orp);
        ps.setObject(6,dr);
        ps.setObject(7,sid);
        int rs=ps.executeUpdate();
        ps.close();
        response.sendRedirect("search.jsp?op=4");


    }
    else if(op.equals("5"))
    {
        String puid = request.getParameter("purid");
        String cid= request.getParameter("cid");
        String eid = request.getParameter("eid");
        String pid=request.getParameter("pid");
        String qty=request.getParameter("qty");
        String ptime=request.getParameter("ptime");
        String tp=request.getParameter("tp");

        Class.forName("com.mysql.jdbc.Driver");
        Connection conn = DriverManager.getConnection("jdbc:mysql://120.77.253.61:3306/mydatabaselab?&useSSL=false&useUnicode=true&characterEncoding=utf8","xuanqiuyi","102354");
        Statement stat = conn.createStatement();
        String sql = "INSERT INTO purchases(purid,cid,eid,pid,qty,ptime,total_price) VALUES(?,?,?,?,?,?,?)";

        PreparedStatement ps=conn.prepareStatement(sql);
        ps.setObject(1,puid);
        ps.setObject(2,cid);
        ps.setObject(3,eid);
        ps.setObject(4,pid);
        ps.setObject(5,qty);
        ps.setObject(6,ptime);
        ps.setObject(7,tp);
        int rs=ps.executeUpdate();
        ps.close();
        response.sendRedirect("search.jsp?op=5");

    }

    else if(op.equals("6"))
    {
        String sid = request.getParameter("sid");
        String sname= request.getParameter("sname");
        String city = request.getParameter("city");
        String telephone_no=request.getParameter("tn");


        Class.forName("com.mysql.jdbc.Driver");
        Connection conn = DriverManager.getConnection("jdbc:mysql://120.77.253.61:3306/mydatabaselab?&useSSL=false&useUnicode=true&characterEncoding=utf8","xuanqiuyi","102354");
        Statement stat = conn.createStatement();
        String sql = "INSERT INTO suppliers(sid,sname,city,telephone_no) VALUES(?,?,?,?)";

        PreparedStatement ps=conn.prepareStatement(sql);
        ps.setObject(1,sid);
        ps.setObject(2,sname);
        ps.setObject(3,city);
        ps.setObject(4,telephone_no);

        int rs=ps.executeUpdate();
        ps.close();
        response.sendRedirect("search.jsp?op=6");

    }
%>


</body>
</html>
