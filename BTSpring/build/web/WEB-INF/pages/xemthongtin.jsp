<%-- 
    Document   : xemthongtin
    Created on : Jun 7, 2017, 10:26:15 AM
    Author     : Anh Quan
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Xem thông tin</title>
    </head>
    <body>
        <jsp:include page="headerUser.jsp"></jsp:include>

            <div class="row">    		
                <div>    			   			
                    <h2 class="title text-center">Thông <strong>tin</strong></h2>    			    				    				
                 
                    <div class="title text-center">
                        <div>
                            <h4>Họ tên:  ${sessionScope.hoTen} </h4>
                    </div>
                    <div class="title text-center">
                
                        <h4>Phân quyền:  ${sessionScope.phanquyen} </h4>
                    </div>
                    <div class="title text-center">
                        <h4>Tên tài khoản:  ${sessionScope.username} </h4>
                    </div>
                    <div class="title text-center">
                        <h4>Mật khẩu  ${sessionScope.password} </h4>
                    </div>
                </div>
            </div>	

        </div>


    </body>
</html>
