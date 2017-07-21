<%-- 
    Document   : login
    Created on : Jun 4, 2017, 10:15:07 PM
    Author     : Anh Quan
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>login</title>
    </head>
    <body>

        <jsp:include page="header.jsp"></jsp:include>

            <div class="login-form"><!--login form-->
                <h2>Login to your account</h2>
                <form action="#">
                    <input type="text" placeholder="Name" />
                    <input type="email" placeholder="Email Address" />
                    <span>
                        <input type="checkbox" class="checkbox"> 
                        Keep me signed in
                    </span>
                    <button type="submit" class="btn btn-default">Login</button>
                </form>
            </div><!--/login form-->
        <jsp:include page="footer.jsp"></jsp:include>

    </body>
</html>
