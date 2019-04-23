<%--
  Created by IntelliJ IDEA.
  User: Administrator
  Date: 2019/4/22
  Time: 10:35
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>上传失败</title>
</head>
<body>
    <h1>上传失败，请重新上传...</h1>
    <script type="text/javascript">
        var time = 2;
        function tiaozhuan()
        {
            if(time==0)
            {
                window.location.href="/page/userPage";
            }
            time--;
        }
        setInterval("tiaozhuan()",1000);
    </script>
</body>
</html>
