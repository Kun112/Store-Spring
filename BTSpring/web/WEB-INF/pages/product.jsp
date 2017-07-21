<%-- 
    Document   : product
    Created on : Jun 5, 2017, 5:32:17 PM
    Author     : Anh Quan
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>product</title>
    </head>
    <body>

        <jsp:include page="header.jsp"></jsp:include>

            <div class="col-sm-9 padding-right">
                <div class="features_items"><!--features_items-->
                    <h2 class="title text-center">SẢN PHẨM</h2>
                    <form action="/BTSpring/total/delete" method="post">
                    <c:forEach var="item" items="${listSanPham}">

                        <div class="col-sm-4">
                            <div class="product-image-wrapper">
                                <div class="single-products">
                                    <div class="productinfo text-center">
                                        
                                        <h2>$${item.giaSanPham}</h2>
                                        <p>${item.tenSanPham}</p>
                                        <a href="${pageContext.request.contextPath}/total/update?idsp=${item.idSanPham}" class="btn btn-default add-to-cart"><i class="fa fa-shopping-cart"></i>Sửa sản phẩm</a>
                                        <input type="checkbox" name="idArray" value="${item.idSanPham}"/>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </c:forEach>
                     
                    <div class ="register-but" class="btn-delete">
                        <input class="btn-success" class="btn-delete" type="submit" value="Xóa sản phẩm được chọn">
                        <div class="clearfix"> </div> 
                    </div>
                </form>
            </div>
        </div>
        <jsp:include page="footer.jsp"></jsp:include>

    </body>
</html>
