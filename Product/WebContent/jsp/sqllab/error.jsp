<%--
  Created by IntelliJ IDEA.
  User: Aces
  Date: 2018/11/23
  Time: 22:27
  To change this template use File | Settings | File Templates.
--%>
<%@ page isErrorPage="true"  contextType="text/html; charset=Big5"%>

<HTML>

<BODY>



<H1>Error page </H1>



<BR>An error occured in the bean. Error Message is: <%= exception.getMessage() %><BR>

Stack Trace is : <PRE><FONT COLOR="RED"><%

    java.io.CharArrayWriter cw = new java.io.CharArrayWriter();

    java.io.PrintWriter pw = new java.io.PrintWriter(cw,true);

    exception.printStackTrace(pw);



%></FONT></PRE>

<BR></BODY>

</HTML>

