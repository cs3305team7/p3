<%-- 
    Document   : processForm
    Created on : 17-Mar-2014, 22:27:19
    Author     : Thomas
--%>

<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.SQLException"%>
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
            Base.User user;
            if(null!=(user=(Base.User)session.getAttribute("USER"))){
                String name =(String)session.getAttribute("form");
                String value;
                if((value=request.getParameter("Theme"))!=null){
                    //response.sendRedirect("");
                    if(value.equals("theme1")){
                        Base.DBManager dbman = new Base.DBManager();
                        
                        try{
                            user.getCharityName();
                           ResultSet t= dbman.query("SELECT w_ID "
                                    + "FROM charity_sites "
                                    + "WHERE url ="
                                    + ""+"'"+ user.getCharityName()+"'");
                           if(!t.first()){
                               response.sendRedirect("editHeader_footer");
                           }
                           int w_ID=t.getInt("w_ID");
                            dbman.update("UPDATE  "
                                    + "website SET t_ID = 1 , c_ID = 1"
                                    + " WHERE w_ID = '"
                                        +w_ID + "'");
                        }catch(Exception e){
                            sess.setAttribute("Error", XMLParser.ErrorRetriever.Error.TEST);
                            e.printStackTrace();
                            response.sendRedirect("themeSelection.jsp");
                        }
                    }
                    else if(value.equals("theme2")){
                        Base.DBManager dbman = new Base.DBManager();
                        
                        try{
                             user.getCharityName();
                           ResultSet t= dbman.query("SELECT w_ID "
                                    + "FROM charity_sites "
                                    + "WHERE url ="
                                    + ""+"'"+ user.getCharityName()+"'");
                           if(!t.first()){
                               response.sendRedirect("editHeader_footer");
                           }
                           int w_ID=t.getInt("w_ID");
                            dbman.update("UPDATE  "
                                    + "website SET t_ID = 1 , c_ID = 2"
                                    + " WHERE w_ID = '"
                                        +w_ID + "'");
                        }catch(Exception e){
                            response.sendRedirect("themeSelection.jsp");
                        }
                    }
                    else if(value.equals("theme3")){
                        Base.DBManager dbman = new Base.DBManager();
                        
                        try{
                             user.getCharityName();
                           ResultSet t= dbman.query("SELECT w_ID "
                                    + "FROM charity_sites "
                                    + "WHERE url ="
                                    + ""+"'"+ user.getCharityName()+"'");
                           if(!t.first()){
                               response.sendRedirect("themeSelection.jsp");
                           }
                           int w_ID=t.getInt("w_ID");
                            dbman.update("UPDATE  "
                                    + "website SET t_ID = 2 , c_ID = 1"
                                    + " WHERE w_ID = '"
                                        +w_ID + "'");
                        }catch(Exception e){
                            response.sendRedirect("themeSelection.jsp");
                        }
                    }
                    else{
                        //session.setErrors
                        response.sendRedirect("themeSelection.jsp");
                    }

                }
                else if((value=request.getParameter("text1"))!=null){
                    Base.DBManager dbman = new Base.DBManager();
                    try{
                        ResultSet t= dbman.query("SELECT w_ID "
                                    + "FROM charity_sites "
                                    + "WHERE url ="
                                    + ""+"'"+ user.getCharityName()+"'");
                           if(!t.first()){
                               session.setAttribute("Error",XMLParser.ErrorRetriever.Error.TEST);
                               response.sendRedirect("editHeader_footer.jsp");
                           }
                           int w_ID=t.getInt("w_ID");
                         dbman.update("UPDATE  "
                                    + "webpages SET header = '"+value+"'"
                                    + " WHERE w_ID = '"+
                                        w_ID + "'");
                    dbman.update("INSERT INTO webpages(header) VALUES "
                            + "("+"'"+value+"'" +")");
                    }catch(SQLException e){
                    session.setAttribute("Error",XMLParser.ErrorRetriever.Error.TEST);
                    e.printStackTrace();
                    response.sendRedirect("editHeader_footer.jsp");
                    }
                                       
                    response.sendRedirect("editHeader_footer.jsp");
                }
                else if((value=request.getParameter("text2"))!=null){
                    Base.DBManager dbman = new Base.DBManager();
                    try{
                    dbman.update("INSERT INTO webpages(footer) VALUES "
                            + "("+"'"+value+"'" +")");
                    response.sendRedirect("editHeader_footer.jsp");
                    }catch(SQLException e){
                        
                    }
                }
                    
            }
            
        }
        %>
    </body>
</html>
