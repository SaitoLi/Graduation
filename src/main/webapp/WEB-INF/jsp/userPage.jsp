<%--
  Created by IntelliJ IDEA.
  User: Administrator
  Date: 2019/4/20
  Time: 12:38
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>UserPage</title>
</head>
<body>
    <h1>Welcome ${sessionScope.user.nickName} !</h1>
    <div class="userPage">
        <div class="top">

        </div>
        <div class="center">
            <div class="center-left">
                <div class="center-left-userInfo">
                    <div class="center-info-picture">
                        <h3>用户信息：</h3>
                        <form action="/picture" method="post" enctype="multipart/form-data">
                            <table>
                                <tr>
                                    <td><img src="/pictures/${sessionScope.user.picture}" width=200px height=200px></td>
                                    上传头像：<input type="file" name="picture" accept="image/*"  value="浏览"/>
                                    <input type="submit" value="上传">
                                </tr>
                            </table>
                        </form>
                    </div>
                    <div class="center-info-nickName">
                        <form id="form-nick" action="/nickName" method="post">
                            <table>
                                <tr>
                                    <td>昵称：</td>
                                    <td><input id="nickName" name="nickName" value="${sessionScope.user.nickName}" readonly="readonly"/></td>
                                    <td><input type="button" value="修改" onclick="javascript:changeNick()"/></td>
                                    <td><input type="button" value="保存" onclick="javascript:saveNick()"/></td>
                                </tr>
                            </table>
                        </form>
                    </div>
                    <div class="center-info-email">
                        <form id="form-email" action="/email" method="post">
                            <table>
                                <tr>
                                    <td>邮箱：</td>
                                    <td><input id="email" name="email" value="${sessionScope.user.email}" readonly="readonly"/></td>
                                    <td><input type="button" value="修改" onclick="javascript:changeEmail()"/></td>
                                    <td><input type="button" value="保存" onclick="javascript:saveEmail()"/></td>
                                </tr>
                            </table>
                        </form>
                    </div>
                </div>
            </div>
            <div class="center-right">
                <div class="center-right-operation">
                    <div class="upload-img">
                        <form action="/upload" method="post" enctype="multipart/form-data">
                            选择图片：<input type="file" name="file" accept="image/*"  value="浏览"/> <br>
                            <input type="submit" value="上传">
                         </form>
                        <img src="/uploaded/${fileName}" width=720px height=405px>
                    </div>
                </div>
            </div>
        </div>
        <div class="bottom">

        </div>
    </div>

    <script type="text/javascript">
        function changeNick(){
            document.getElementById("nickName").readOnly=false;
        }

        function saveNick(){
            if(document.getElementById("nickName").readOnly == false){
                document.getElementById("form-nick").submit();
            }
        }

        function changeEmail(){
            document.getElementById("email").readOnly=false;
        }

        function saveEmail(){
            if(document.getElementById("email").readOnly == false){
                document.getElementById("form-email").submit();
            }
        }
    </script>
</body>
</html>
