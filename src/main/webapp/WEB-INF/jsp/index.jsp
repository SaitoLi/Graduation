<%--
  Created by IntelliJ IDEA.
  User: Administrator
  Date: 2019/4/19
  Time: 13:26
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Hello</title>
</head>
<body>
<div>
    <div id="top">
        <div id="top-introduce">
            <h1>Hello Graduation!</h1>
            <p>
                This is my graduation project.<br>
                The first step is to log in or register your own account.<br>
                Then, you can start the experiencing.
            </p>
        </div>
    </div>
    <div id="center">
        <div id="center-button">
            <%-- 注意这里，WEB-INF目录下的jsp页面之间不允许直接跳转，所以添加PageController来处理直接跳转 --%>
            <input type="button" name="login" value="登录" onclick="window.location.href='/page/login'"/>
            <input type="button" name="register" value="注册" onclick="window.location.href='/page/register'"/>
        </div>
    </div>
    <div id="bottom">
        <div id="bottom-description"></div>
    </div>
</div>
</body>
</html>
