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
            String PAGE = request.getParameter("page");
            User user;
            if(null!=(user=(User)session.getAttribute("USER"))){
                String name =(String)session.getAttribute("form");
                String value;
                if((value=request.getParameter("Theme"))!=null){
                    //response.sendRedirect("");
                    if(value.equals("theme1")){
                        DBManager dbman = new DBManager();
                        
                        try{
                            dbman.update("INSERT INTO "
                                    + "website (t_ID,c_ID) values(1,1)"
                                    + "WHERE w_ID = "+"'"+
                                    user.getCharityName()+"'");
                        }catch(Exception e){
                            response.sendRedirect("themeSelection.jsp");
                        }
                    }
                    else if(value.equals("theme2")){
                        DBManager dbman = new DBManager();
                        
                        try{
                            dbman.update("INSERT INTO "
                                    + "website (t_ID,c_ID) values(1,2)"
                                    + "WHERE w_ID = "+"'"+
                                    user.getCharityName()+"'");
                        }catch(Exception e){
                            response.sendRedirect("themeSelection.jsp");
                        }
                    }
                    else if(value.equals("theme3")){
                        DBManager dbman = new DBManager();
                        
                        try{
                            dbman.update("INSERT INTO "
                                    + "website (t_ID,c_ID) values(2,1)"
                                    + "WHERE w_ID = "+"'"+
                                    user.getCharityName()+"'");
                        }catch(Exception e){
                            response.sendRedirect("themeSelection.jsp");
                        }
                    }
                    else{
                        //session.setErrors
                        response.sendRedirect("themeSelection.jsp");
                    }

                }
            }
            
        }
        %>
    </body>
</html>
