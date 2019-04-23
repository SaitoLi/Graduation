<%--
  Created by IntelliJ IDEA.
  User: Administrator
  Date: 2019/4/20
  Time: 13:13
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>注册成功</title>
</head>
<body>
    <h1>注册成功</h1>
    <h3>2秒后跳转到登录页面...</h3>
    <h3>没有跳转请<a href="/page/login">点击</a></h3>

    <script type="text/javascript">
        var time = 2;
        function tiaozhuan()
        {
            if(time==0)
            {
                window.location.href="/page/login";
            }
            time--;
        }
        setInterval("tiaozhuan()",1000);
    </script>
</body>
</html>
