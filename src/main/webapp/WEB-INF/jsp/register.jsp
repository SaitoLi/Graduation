<%--
  Created by IntelliJ IDEA.
  User: Administrator
  Date: 2019/4/19
  Time: 14:15
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Register</title>
</head>
<body>
<div class="registerPage">
    <div class="top">
        <div class="top-description">
            <h1>Register And Start experiencing</h1>
        </div>
    </div>
    <div class="center">
        <div class="register-form">
            <form action="/register" method="post">
                <table>
                    <tr>
                        <td>用户名：</td>
                        <td><input type="text" name="userName" placeholder="由英文字母、数字组成的4-16位字符，以字母开头">
                        </td>
                    </tr>

                    <tr>
                        <td>昵称：</td>
                        <td><input type="text" name="nickName" placeholder="不超过32个字符">
                        </td>
                    </tr>

                    <tr>
                        <td>密码：</td>
                        <td><input type="password" name="password" placeholder="由英文字母和数字组成的4-16位字符">
                        </td>
                    </tr>

                    <tr>
                        <td>确认密码：</td>
                        <td><input type="password" name="password2" placeholder="确认密码">
                        </td>
                    </tr>

                    <tr>
                        <td>邮箱：</td>
                        <td><input type="text" name="email" placeholder="邮箱账号@域名">
                        </td>
                    </tr>

                    <tr>
                        <td><input type="submit" value="注册"/></td>
                        <td><input type="reset" name="清空"/></td>
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
