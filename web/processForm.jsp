<%-- 
    Document   : processForm
    Created on : 17-Mar-2014, 22:27:19
    Author     : Thomas
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <%
        
        HttpSession sess = request.getSession(false);
        if(sess !=null){
            User user=(User)sess.getAttribute("user");
            String PAGE = request.getParameter("page");
        
            String name =(String)session.getAttribute("form");
            String value;
            if((value=request.getParameter("Theme"))!=null){
                //response.sendRedirect("");
                if(value.equals("theme1")){
                    
                }
                else if(value.equals("theme2")){
                
                }
                else if(value.equals("theme3")){
                    
                }
                else{
                    //session.setErrors
                    response.sendRedirect("themeSelection.jsp");
                }
            }
            
        }
        %>
    </body>
</html>
