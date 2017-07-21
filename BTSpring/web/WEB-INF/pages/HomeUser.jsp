<%-- 
    Document   : HomeUser
    Created on : Jun 6, 2017, 11:22:15 PM
    Author     : Anh Quan
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Welcome to Anh Quan shop!</title>

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

        <jsp:include page="headerUser.jsp"></jsp:include>
        
            <div class="col-sm-9 padding-right">
                <div class="features_items"><!--features_items-->
                    <h2 class="title text-center">SẢN PHẨM</h2>

                <c:forEach var="item" items="${listSanPham}">

                    <div class="col-sm-4">
                        <div class="product-image-wrapper">
                            <div class="single-products">
                                <div class="productinfo text-center">
                                   
                                    <h2>$${item.giaSanPham}</h2>
                                    <p>${item.tenSanPham}</p>
                                    <a href="#" class="btn btn-default add-to-cart"><i class="fa fa-shopping-cart"></i>Add to cart</a>
                                </div>
                                <div class="product-overlay">
                                    <div class="overlay-content">
                                        <h2>$${item.giaSanPham}</h2>
                                        <p>${item.tenSanPham}</p>
                                        <a href="#" class="btn btn-default add-to-cart"><i class="fa fa-shopping-cart"></i>Add to cart</a>
                                    </div>
                                </div>

                            </div>

                        </div>
                    </div>
                </c:forEach>  
            </div>
        </div>


    </body>
</html>
