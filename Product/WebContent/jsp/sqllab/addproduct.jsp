<%@ page contentType="text/html;charset=UTF-8" language="java" errorPage="error.jsp"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <title>SUI Mobile Demo</title>
    <meta name="description"
          content="MSUI: Build mobile apps with simple HTML, CSS, and JS components.">
    <meta name="author" content="阿里巴巴国际UED前端">
    <meta name="viewport" content="initial-scale=1, maximum-scale=1">
    <link rel="shortcut icon" href="/favicon.ico">
    <meta name="apple-mobile-web-app-capable" content="yes">
    <meta name="apple-mobile-web-app-status-bar-style" content="black">
    <meta name="format-detection" content="telephone=no">

    <!-- Google Web Fonts -->

    <link rel="stylesheet"
          href="//g.alicdn.com/msui/sm/0.6.2/css/sm.min.css">
    <link rel="stylesheet"
          href="//g.alicdn.com/msui/sm/0.6.2/css/sm-extend.min.css">

    <link rel="apple-touch-icon-precomposed"
          href="/assets/img/apple-touch-icon-114x114.png">

</head>
<body>
<form action="add.jsp" method="post">
    <div class="page-group">
        <div id="page-label-input" class="page">
            <header class="bar bar-nav">
                <a class="button button-link button-nav pull-left back"
                   href="/demos/form"> <span class="icon icon-left"></span> 返回
                </a>
                <h1 class="title">添加商品</h1>
            </header>
            <div class="content">
                <div class="list-block">
                    <ul>
                        <li>
                            <div class="item-content">
                                <div class="item-inner">
                                    <div class="item-title label">pid</div>
                                    <div class="item-input">
                                        <input type="text" id="pid" name="pid" placeholder="请输入pid">
                                    </div>
                                </div>
                            </div>
                        </li>
                        <li>
                            <div class="item-content">
                                <div class="item-inner">
                                    <div class="item-title label">pname</div>
                                    <div class="item-input">
                                        <input type="text" id="pname" name="pname" placeholder="请输入pname">
                                    </div>
                                </div>
                            </div>
                        </li>
                        <!-- Text inputs -->
                        <li>
                            <div class="item-content">
                                <div class="item-inner">
                                    <div class="item-title label">qoh</div>
                                    <div class="item-input">
                                        <input type="text" id="qoh" name="qoh" placeholder="请输入qoh">
                                    </div>
                                </div>
                            </div>
                        </li>
                        <li>
                            <div class="item-content">
                                <div class="item-inner">
                                    <div class="item-title label">qoh_threshold</div>
                                    <div class="item-input">
                                        <input type="text" id="qoh_threshold" name="qoh_threshold" placeholder="请输入qoh_threshold">
                                    </div>
                                </div>
                            </div>
                        </li>


                        <li>
                            <div class="item-content">
                                <div class="item-inner">
                                    <div class="item-title label">original_price</div>
                                    <div class="item-input">
                                        <input type="text" id="original_price" name="original_price" placeholder="请输入original_price">
                                    </div>
                                </div>
                            </div>
                        </li>
                        <li>
                            <div class="item-content">
                                <div class="item-inner">
                                    <div class="item-title label">discnt_rate</div>
                                    <div class="item-input">
                                        <input type="text" id="discnt_rate" name="discnt_rate" placeholder="请输入discnt_rate">
                                    </div>
                                </div>
                            </div>
                        </li>
                        <li>
                            <div class="item-content">
                                <div class="item-inner">
                                    <div class="item-title label">sid</div>
                                    <div class="item-input">
                                        <input type="text" id="sid" name="sid" placeholder="请输入sid">
                                    </div>
                                </div>
                            </div>
                        </li>



                    </ul>
                </div>
                <div class="content-block">
                    <div class="row">
                        <div class="col-50">
                            <a href="" class="button button-big button-fill button-danger">返回</a>
                        </div>
                        <div class="col-50">
                            <input type="submit" value ="确定" class="button button-big button-fill button-success"
                                   id="submit">
                    </div>
                </div>
            </div>
        </div>
    </div>

    </div>
</form>
<script type='text/javascript'
        src='//g.alicdn.com/sj/lib/zepto/zepto.min.js' charset='utf-8'></script>
<script type='text/javascript'
        src='//g.alicdn.com/msui/sm/0.6.2/js/sm.min.js' charset='utf-8'></script>
<script type='text/javascript'
        src='//g.alicdn.com/msui/sm/0.6.2/js/sm-extend.min.js' charset='utf-8'></script>
<script type='text/javascript' src='../resources/js/common/common.js'
        charset='utf-8'></script>
<script type='text/javascript'
        src='../resources/js/shop/shopoperation.js' charset='utf-8'></script>
</body>
</html>
