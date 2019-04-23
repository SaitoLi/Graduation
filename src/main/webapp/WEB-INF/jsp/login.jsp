<%--
  Created by IntelliJ IDEA.
  User: Administrator
  Date: 2019/4/19
  Time: 14:14
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Login</title>
</head>
<body>
    <div class="loginPage">
        <div class="top">
            <div class="top-description">
                <h1>Login And Start！！</h1>
            </div>
        </div>
        <div class="center">
            <div class="login-form">
                <form action="/login" method="post">
                    <table>
                        <tr>
                            <td>用户名：</td>
                            <td><input type="text" name="userName" placeholder="由英文字母、数字组成的4-16位字符，以字母开头">
                            </td>
                        </tr>

                        <tr>
                            <td>密码：</td>
                            <td><input type="password" name="password" placeholder="由英文字母和数字组成的4-16位字符">
                            </td>
                        </tr>

                        <tr>
                            <td><input type="submit" value="登录"/></td>
                            <td><input type="button" name="register" value="注册" onclick="window.location.href='/page/register'"/></td>
                        </tr>
                    </table>
                </form>

            </div>
        </div>
        <div class="bottom">
            <div id="bottom-description"></div>
        </div>
    </div>
</body>
</html>
