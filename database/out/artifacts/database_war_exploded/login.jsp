<%--
  Created by IntelliJ IDEA.
  User: aibo
  Date: 2022/1/3
  Time: 14:47
  To change this template use File | Settings | File Templates.
--%>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>

<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>人力资源管理系统登录</title>
    <link rel="stylesheet" href="css/login.css">
</head>

<body style="background-color:#6faeea">
<div id="login" class=gcs-login>
    <div class="gcs-login-panel">
        <div class="login-title">
            <h1>人力资源管理系统</h1><br><br><br>
            <h2>管理员登陆</h2>
        </div>
        <form action="login" method="post" id="loginForm">
            <div class="gcs-login-container">
                <input type="text" class="input" placeholder="请输入用户名" name="uname" id="uname"
                       value="${messageModel.object.user}">
            </div>
            <div class="gcs-login-container">
                <input type="password" class="input" placeholder="请输入密码" name="upwd" id="upwd"
                       value="${messageModel.object.pwd}">
            </div>
            <div class="gcs-login-container">
                <input type="button" value="立即登录" id="loginBtn" class="btn-login"/>
            </div>
        </form>
    </div>
</div>
</body>


<script type="text/javascript" src="js/jquery-3.4.1.js"></script>

<script type="text/javascript">
    $("#loginBtn").click(function () {
        var uname = $("#uname").val();
        var upwd = $("#upwd").val();
        //判断姓名是否为空
        if (isEmpty(uname)) {
            $("#Msg").html("用户名不可为空！");
            return;
        }
        if (isEmpty(upwd)) {
            $("#Msg").html("密码不可为空！");
            return;
        }
        $("#loginForm").submit();
    });

    /**
     * 判断字符串是否为空
     * @param str
     * @returns
     */
    function isEmpty(str) {
        if (str == null || str.trim() == "") {
            return true;
        }
        return false;
    }
</script>
</html>