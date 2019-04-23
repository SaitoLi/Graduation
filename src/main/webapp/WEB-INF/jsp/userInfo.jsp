<%--
  Created by IntelliJ IDEA.
  User: Administrator
  Date: 2019/4/22
  Time: 13:33
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>编辑用户信息</title>
</head>
<body>
    <div class="user-info">
        <div class="top"></div>
        <div class="center">
            <div class="user-info-edit">

                <form action="/userInfo" method="post">
                    <table>
                        <tr>
                            <td>昵称：</td>
                            <td><input type="text" name="nickName" placeholder="不超过32个字符">
                            </td>
                        </tr>
                        <tr>
                            <td>邮箱：</td>
                            <td><input type="text" name="email" placeholder="邮箱账号@域名">
                            </td>
                        </tr>
                        <tr>
                            <td><input type="submit" value="确定"/></td>
                            <td><input type="reset" name="重置"/></td>
                        </tr>
                    </table>
                </form>
            </div>
        </div>
        <div class="bottom"></div>
    </div>
</body>
</html>
