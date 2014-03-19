<%-- 
    Document   : admin
    Created on : 16-Feb-2014, 12:32:11
    Author     : as11
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%

    HttpSession sess = request.getSession(false);
    if(sess !=null){
        User user=(User)sess.getAttribute("user");
        String PAGE = request.getParameter("page");
    }
%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Insert title here</title>
    </head>
    <body>
        Welcome Admin.
    </body>
</html>
