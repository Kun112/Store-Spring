<%-- 
    Document   : addsp
    Created on : Jun 6, 2017, 12:51:13 PM
    Author     : Anh Quan
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Thêm sản phẩm</title>
        
    </head>
    <body>

        <jsp:include page="header.jsp"></jsp:include>

        <div class="shopper-info">
            <p>Thông tin sản phẩm</p>
            
            <form action="/BTSpring/total/add" class="col-md-6" method="post">
                <input type="text" name ="tensp" placeholder="Tên sản phẩm">
                <input class="col-md-6" type="number" name ="giasp" placeholder="Giá sản phẩm">
                <input class="col-md-4 btn-primary"  type="submit" value="Thêm"/>
            </form>
            
           
        </div>
       
    </body>
</html>
