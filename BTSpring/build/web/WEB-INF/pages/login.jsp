<%-- 
    Document   : login
    Created on : Jun 4, 2017, 10:15:07 PM
    Author     : Anh Quan
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>login</title>

        <link href="<c:url value="/resources/css/animate.css" />" rel="stylesheet">
        <link href="<c:url value="/resources/css/bootstrap.min.css" />" rel="stylesheet">
        <link href="<c:url value="/resources/css/font-awesome.min.css" />" rel="stylesheet">
        <link href="<c:url value="/resources/css/main.css" />" rel="stylesheet">
        <link href="<c:url value="/resources/css/prettyPhoto.css" />" rel="stylesheet">
        <link href="<c:url value="/resources/css/price-range.css" />" rel="stylesheet">
        <link href="<c:url value="/resources/css/responsive.css" />" rel="stylesheet">

        <script src="<c:url value="/resources/js/bootstrap.min.js" />"type="text/javascript"></script>
        <script src="<c:url value="/resources/js/gmaps.js" />"type="text/javascript"></script>
        <script src="<c:url value="/resources/js/html5shiv.js" />"type="text/javascript"></script>
        <script src="<c:url value="/resources/js/jquery.js" />"type="text/javascript"></script>
        <script src="<c:url value="/resources/js/jquery.prettyPhoto.js" />"type="text/javascript"></script>
        <script src="<c:url value="/resources/js/jquery.scrollUp.min.js" />"type="text/javascript"></script>
        <script src="<c:url value="/resources/js/main.js" />"type="text/javascript"></script>
        <script src="<c:url value="/resources/js/price-range.js" />"type="text/javascript"></script>

    </head>
    <body>

<div class="col-sm-4 col-sm-offset-1">
        <div class="login-form"><!--login form-->
            <h2>Login to your account</h2>
            <form action="checklogin" method="post">
                <input type="text" name ="username" placeholder="Tên đăng nhập" />
                <input type="password" name ="pass" placeholder="Mật khẩu" />
                
                <button type="submit" class="btn btn-default">Login</button>
                ${msg}
            </form>
        </div><!--/login form-->
</div>

    </body>
</html>
