<%-- 
    Document   : suasp
    Created on : Jun 6, 2017, 5:44:44 PM
    Author     : Anh Quan
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Sửa sản phẩm</title>
    </head>
    <body>

        <jsp:include page="header.jsp"></jsp:include>

            <div class="shopper-informations">
                <div class="row">
                    <div class="col-sm-3">
                        <div class="shopper-info">
                            <p>Sửa sản phẩm</p>
                            <form action="/BTSpring/total/update" method="post">
                                <input type="hidden" name="idsp" value="${timSP.idSanPham}">
                                <input type="text" name="tensp" value="${timSP.tenSanPham}">
                                <input type="number" name="giasp" value="${timSP.giaSanPham}">
                                <input type="submit" value ="Cập nhật">
                            </form>
                            
                        </div>
                    </div>
                    <div class="col-sm-5 clearfix">
                        
                    </div>
                    				
                </div>
            </div>
            

        <jsp:include page="footer.jsp"></jsp:include>

    </body>
</html>
