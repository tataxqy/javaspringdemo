<%--
  Created by IntelliJ IDEA.
  User: Aces
  Date: 2018/11/15
  Time: 22:08
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>

    <title>insert</title>
    <meta charset="UTF-8">
    <link rel="stylesheet" id="templatecss" type="text/css" href="../css/basic-grey.css">


</head>
<body>
<%
    String op=request.getParameter("op");
    if(op.equals("1"))
    {
        %>
<form action="save.jsp?op=1" method="post">
    <h1>customers insert
        <span>Please insert information.</span>
    </h1>
    <label>
        <span>Themplate :</span>
        <select id="template" name="themplate" onchange="changeStyle();">
            <option value="basic-grey">basic-grey</option>
            <option value="elegant-aero">elegant-aero</option>

        </select>
    </label>
    <label>
        <span>cid:</span>
        <input id="cid" type="text" name="cid" placeholder="eg:c000" />
    </label>
    <label>
        <span>cname:</span>
        <input id="cname" type="text" name="cname" placeholder="eg:Mike" />
    </label>
    <label>
        <span>city:</span>
        <input id="city" type="text" name="city" placeholder="eg:China" />
    </label>
    <label>
        <span>visits_made:</span>
        <input type="text" onkeyup="this.value=this.value.replace(/\D/g,'')" name="vm" id="vm" placeholder="eg:2" />
    </label>
    <label>
        <span>last_visit_time:</span>
        <input id="lvt" type="date" name="lvt" placeholder="eg:2018-01-01" />
    </label>

    <label>
        <span>&nbsp;</span>
        <input type="submit" class="button" value="Insert" />
    </label>

</form>
<script>
    function changeStyle() {
        var template = document.getElementById("template");
        var index = template.selectedIndex;
        var templatevalue = template.options[index].value;
        var templatecss = document.getElementById("templatecss");
        templatecss.setAttribute("href","css/" + templatevalue + ".css");
        document.getElementsByTagName("form")[0].setAttribute("class",templatevalue);
    }
</script>

<%
    }
    else if(op.equals("2"))
    {
        %>

<form action="save.jsp?op=2" method="post">

    <!--这里是一个表单,意思是以post方式把下面输入的数据传到save页面. ,表单以</form>结束-->
    <h1>employees insert
        <span>Please insert information.</span>
    </h1>
    <label>
        <span>Themplate :</span>
        <select id="template" name="themplate" onchange="changeStyle();">
            <option value="basic-grey">basic-grey</option>
            <option value="elegant-aero">elegant-aero</option>

        </select>
    </label>
    <label>
        <span>cid:</span>
        <input id="eid" type="text" name="eid" placeholder="eg:e00" />
    </label>
    <label>
        <span>cname:</span>
        <input id="ename" type="text" name="ename" placeholder="eg:Mike" />
    </label>
    <label>
        <span>city:</span>
        <input id="city" type="text" name="city" placeholder="eg:China" />
    </label>


    <label>
        <span>&nbsp;</span>
        <input type="submit" class="button" value="Insert" />
    </label>

</form>
<script>
    function changeStyle() {
        var template = document.getElementById("template");
        var index = template.selectedIndex;
        var templatevalue = template.options[index].value;
        var templatecss = document.getElementById("templatecss");
        templatecss.setAttribute("href","css/" + templatevalue + ".css");
        document.getElementsByTagName("form")[0].setAttribute("class",templatevalue);
    }
</script>
<%
    }
    else if(op.equals("3"))
    {
        %>
<form action="save.jsp?op=3" method="post">

    <!--这里是一个表单,意思是以post方式把下面输入的数据传到save页面. ,表单以</form>结束-->
    <h1>logs insert
        <span>Please insert information.</span>
    </h1>
    <label>
        <span>Themplate :</span>
        <select id="template" name="themplate" onchange="changeStyle();">
            <option value="basic-grey">basic-grey</option>
            <option value="elegant-aero">elegant-aero</option>

        </select>
    </label>
    <label>
        <span>logid:</span>
        <input id="logid" type="text" name="logid" placeholder="eg:c000" />
    </label>
    <label>
        <span>who:</span>
        <input id="who" type="text" name="who" placeholder="eg:Mike" />
    </label>
    <label>
        <span>time:</span>
        <input id="time" type="text" name="time" placeholder="" />
    </label>
    <label>
        <span>table_name:</span>
        <input type="text" name="tn" id="tn" placeholder="" />
    </label>
    <label>
        <span>operation:</span>
        <input id="operation" type="text" name="operation" placeholder="" />
    </label>
    <label>
        <span>key_value:</span>
        <input id="kv" type="text" name="kv" placeholder="" />
    </label>

    <label>
        <span>&nbsp;</span>
        <input type="submit" class="button" value="Insert" />
    </label>

</form>
<script>
    function changeStyle() {
        var template = document.getElementById("template");
        var index = template.selectedIndex;
        var templatevalue = template.options[index].value;
        var templatecss = document.getElementById("templatecss");
        templatecss.setAttribute("href","css/" + templatevalue + ".css");
        document.getElementsByTagName("form")[0].setAttribute("class",templatevalue);
    }
</script>
<%
    }
    else if(op.equals("4"))
    {
        %>
<form action="save.jsp?op=4" method="post">

    <!--这里是一个表单,意思是以post方式把下面输入的数据传到save页面. ,表单以</form>结束-->
    <h1>products insert
        <span>Please insert information.</span>
    </h1>
    <label>
        <span>Themplate :</span>
        <select id="template" name="themplate" onchange="changeStyle();">
            <option value="basic-grey">basic-grey</option>
            <option value="elegant-aero">elegant-aero</option>

        </select>
    </label>
    <label>
        <span>pid:</span>
        <input id="pid" type="text" name="pid" placeholder="eg:pr00" />
    </label>
    <label>
        <span>pname:</span>
        <input id="pname" type="text" name="pname" placeholder="eg:Mike" />
    </label>
    <label>
        <span>qoh:</span>
        <input type="text" onkeyup="this.value=this.value.replace(/\D/g,'')" name="qoh" id="qoh" placeholder="eg:12" />

    </label>
    <label>
        <span>qoh_threshold:</span>
        <input id="qt" type="text" onkeyup="this.value=this.value.replace(/\D/g,'')" name="qt" placeholder="eg:10" />
    </label>
    <label>
        <span>original_price:</span>
        <input type="text"  name="orp" id="orp" placeholder="eg:2.40" />
    </label>
    <label>
        <span>discnt_rate:</span>
        <input id="dr" type="text" name="dr" placeholder="eg:0.10" />
    </label>
    
    <label>
        <span>sid:</span>
        <input id="sid" type="text" name="sid" placeholder="eg:s0" />
    </label>

    <label>
        <span>&nbsp;</span>
        <input type="submit" class="button" value="Insert" />
    </label>

</form>
<script>
    function changeStyle() {
        var template = document.getElementById("template");
        var index = template.selectedIndex;
        var templatevalue = template.options[index].value;
        var templatecss = document.getElementById("templatecss");
        templatecss.setAttribute("href","css/" + templatevalue + ".css");
        document.getElementsByTagName("form")[0].setAttribute("class",templatevalue);
    }
</script>
<%
    }
    else if(op.equals("5"))
    {
        %>
<form action="save.jsp?op=5" method="post">

    <!--这里是一个表单,意思是以post方式把下面输入的数据传到save页面. ,表单以</form>结束-->
    <h1>customers insert
        <span>Please insert information.</span>
    </h1>
    <label>
        <span>Themplate :</span>
        <select id="template" name="themplate" onchange="changeStyle();">
            <option value="basic-grey">basic-grey</option>
            <option value="elegant-aero">elegant-aero</option>

        </select>
    </label>
    <label>
        <span>purid:</span>
        <input id="purid" type="text" name="purid" placeholder="eg:p000" />
    </label>
    <label>
        <span>cid:</span>
        <input id="cid" type="text" name="cid" placeholder="eg:c000" />
    </label>
    <label>
        <span>eid:</span>
        <input id="eid" type="text" name="eid" placeholder="eg:e00" />
    </label>
    <label>
        <span>pid:</span>
        <input type="text" name="pid" id="pid" placeholder="eg:pr00" />
    </label>
    <label>
        <span>qty:</span>
        <input id="qty" type="text" name="qty" onkeyup="this.value=this.value.replace(/\D/g,'')" placeholder="1" />
    </label>
    <label>
        <span>ptime:</span>
        <input id="ptime" type="date" name="ptime" placeholder="eg:2017-10-22 12:34:22" />

    </label>
    <label>
        <span>total_price:</span>
        <input id="tp" type="text" name="tp" placeholder="eg:2.16" />

    </label>

    <label>
        <span>&nbsp;</span>
        <input type="submit" class="button" value="Insert" />
    </label>

</form>
<script>
    function changeStyle() {
        var template = document.getElementById("template");
        var index = template.selectedIndex;
        var templatevalue = template.options[index].value;
        var templatecss = document.getElementById("templatecss");
        templatecss.setAttribute("href","css/" + templatevalue + ".css");
        document.getElementsByTagName("form")[0].setAttribute("class",templatevalue);
    }
</script>
<%
    }
    else if(op.equals("6"))
    {
        %>
<form action="save.jsp?op=6" method="post">

    <!--这里是一个表单,意思是以post方式把下面输入的数据传到save页面. ,表单以</form>结束-->
    <h1>customers insert
        <span>Please insert information.</span>
    </h1>
    <label>
        <span>Themplate :</span>
        <select id="template" name="themplate" onchange="changeStyle();">
            <option value="basic-grey">basic-grey</option>
            <option value="elegant-aero">elegant-aero</option>

        </select>
    </label>
    <label>
        <span>sid:</span>
        <input id="sid" type="text" name="sid" placeholder="eg:s0" />
    </label>
    <label>
        <span>sname:</span>
        <input id="sname" type="text" name="sname" placeholder="eg:Supplier1" />
    </label>
    <label>
        <span>city:</span>
        <input id="city" type="text" name="city" placeholder="eg:China" />
    </label>
    <label>
        <span>telephone_no:</span>
        <input type="text" onkeyup="this.value=this.value.replace(/\D/g,'')" name="tn" id="tn" placeholder="eg:6075555431" />
    </label>

    <label>
        <span>&nbsp;</span>
        <input type="submit" class="button" value="Insert" />
    </label>

</form>
<script>
    function changeStyle() {
        var template = document.getElementById("template");
        var index = template.selectedIndex;
        var templatevalue = template.options[index].value;
        var templatecss = document.getElementById("templatecss");
        templatecss.setAttribute("href","css/" + templatevalue + ".css");
        document.getElementsByTagName("form")[0].setAttribute("class",templatevalue);
    }
</script>
<%
    }
%>



</body>
</html>
