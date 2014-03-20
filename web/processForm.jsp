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

        //System.out.println("SESSION EXISTS");
        HttpSession sess = request.getSession(false);
        if(sess !=null){
            
            String PAGE = request.getParameter("page");
            Base.User user;
            if(null!=(user=(Base.User)session.getAttribute("USER"))){
                String name =(String)session.getAttribute("form");
                String value;
                if((value=request.getParameter("Theme"))!=null){
                    //response.sendRedirect("");
                   // System.out.println("tHIS IS BROKEN");
                    if(value.equals("theme1")){
                        Base.DBManager dbman = new Base.DBManager();
                        
                        try{
                            user.getCharityName();
                           ResultSet t= dbman.query("SELECT w_ID "
                                    + "FROM charity_sites "
                                    + "WHERE url ="
                                    + ""+"'"+ user.getCharityName()+"'");
                           if(!t.first()){
                               response.sendRedirect("editHeader.jsp");
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
                        response.sendRedirect("makePage.jsp");
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
                        response.sendRedirect("makePage.jsp");
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
                        response.sendRedirect("makePage.jsp");
                    }
                    else{
                        //session.setErrors
                       
                        response.sendRedirect("themeSelection.jsp");
                    }

                }
                else if((value=request.getParameter("text2"))!=null){
                  // out.println("I AM HERE WORK PLEASE");
                    Base.DBManager dbman = new Base.DBManager();
                    try{
                        //editHeader
                        ResultSet t= dbman.query("SELECT w_ID "
                                    + "FROM charity_sites "
                                    + "WHERE url ="
                                    + ""+"'"+ user.getCharityName()+"'");
                           if(!t.first()){
                               session.setAttribute("Error",XMLParser.ErrorRetriever.Error.TEST);
                               //System.out.println("I'm in the not if");
                               response.sendRedirect("editHeader.jsp");
                           }
                          
                           int w_ID=t.getInt("w_ID");
                          // System.out.println("value is: "+value);
                          // System.out.println("w_ID is: "+w_ID);
                         dbman.update("UPDATE  "
                                    + "webpages SET header = '"+value+"'"
                                    + " WHERE w_ID = "+
                                        w_ID );
                    }catch(SQLException e){
                        session.setAttribute("Error",XMLParser.ErrorRetriever.Error.TEST);
                        e.printStackTrace();
                        response.sendRedirect("editHeader.jsp");
                    }
                                       
                    response.sendRedirect("editHeader.jsp");
                }
                else if((value=request.getParameter("text4"))!=null){
                    //editFooter
                    Base.DBManager dbman = new Base.DBManager();
                    try{
                    dbman.update("INSERT INTO webpages(footer) VALUES "
                            + "("+"'"+value+"'" +")");
                    response.sendRedirect("editFooter.jsp");
                    }catch(SQLException e){
                        
                    }
                }
                else if(request.getParameter("name")!=null && request.getParameter("url")!=null){
                     //out.println("THIS IS A PROBLEM I DON'T UNDERSTAND THIS");
                     response.sendRedirect("editFooter.jsp");
                               }
                    
            }
            
        }
        %>
    </body>
</html>
