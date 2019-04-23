<%--
  Created by IntelliJ IDEA.
  User: Administrator
  Date: 2019/4/20
  Time: 13:05
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>注册错误</title>
</head>
<body>
    <h1>遇到如下错误：</h1>
    <h2>用户名已存在</h2>
    <h3>2秒后跳转到注册页面...</h3>
    <h3>没有跳转请<a href="/page/register">点击</a></h3>

    <script type="text/javascript">
        var time = 2;
        function tiaozhuan()
        {
            if(time==0)
            {
                window.location.href="/page/register";
            }
            time--;
        }
        setInterval("tiaozhuan()",1000);
    </script>
</body>
</html>
