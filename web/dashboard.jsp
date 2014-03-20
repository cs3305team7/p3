<%-- 
    Document   : dashboard
    Created on : 19-Mar-2014, 17:55:32
    Author     : sor4
--%>

<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.SQLException"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Dashboard</title>
    </head>
    <body>
        <h1>Your Dashboard</h1>
       <%
	   
       HttpSession sess = request.getSession(true);
       if(sess !=null){
        Base.User user=(Base.User)sess.getAttribute("user");
        String PAGE = request.getParameter("page");
        Base.DBManager dbman = new Base.DBManager();
		try{
                       // ResultSet resw_ID= dbman.query("SELECT w_ID FROM charity_sites WHERE" + "url=" +user.getCharityName()+";");
			//ResultSet resw_ID= dbman.query("SELECT w_ID FROM charity_sites WHERE url='donkeys';");
			//int w_ID = resw_ID.getInt("w_ID");
                        ResultSet resset = dbman.query("SELECT w_ID FROM webpages WHERE w_ID = 1");
			//ResultSet resp_ID = dbman.query("SELECT pagename FROM webpages WHERE w_ID = "+w_ID+";");
			String pagename = resset.getString("pagename");
			
				%><h4>Your pages</h4><ul><%
                                int i=0;
				while( resset.next()){
				%>
                                <li>hello</li>
                                <li><a href="
                                <%   
                                    pagename.toString();
                                %>.jsp">
                                    
                                        <% pagename.toString();%>
                                    </a> - <a href="index.html">edit this page,</a><a href="index.html">delete this page</a></li><%
                                    //we need a prompt, do you really want to delete this page?
                                    //use var to determine if the user really wants to delete the page
                                    boolean var= true;
                                    try{
                                            if( var ){
                                              ResultSet pages = dbman.query("DELETE FROM webpages WHERE pagename = "+pagename+";"); 
                                            }
                                       } catch(Exception e){
                                          sess.setAttribute("Error", XMLParser.ErrorRetriever.Error.TEST);
                                          e.printStackTrace();   
                                       }
                                   }
                             
                             %></ul><%   
                       } catch(Exception e){
			sess.setAttribute("Error", XMLParser.ErrorRetriever.Error.TEST);
                         e.printStackTrace();
              }
        try{
                        ResultSet resW_ID= dbman.query("SELECT w_ID FROM charity_sites WHERE" + "url=" +user.getCharityName()+";");
			int W_ID = resW_ID.getInt("w_ID");
			ResultSet resusers = dbman.query("SELECT username FROM registered_users WHERE w_ID = "+W_ID+";");
			String pagename = resusers.getString("pagename");
                        String users = null;
			if(!resusers.first()){
				//no pages
			} else {
				%><h4>Your registered users</h4><ul><%
				while( resusers.next() ){
				%>
                                <li>
                                <%
                                    users = resusers.getString(users);
                                    users.toString();
                                %>- delete this user</li><%
                                 //we need a prompt if this is clicked, do you really want to delete this person?
                                 //use var to determine if the user really wants to delete the person
                                try{
                                                                       
                                } catch(Exception e) {
                                    
                                }
				%></ul><%
                             }
                       }
		}catch(Exception e){
			sess.setAttribute("Error", XMLParser.ErrorRetriever.Error.TEST);
                         e.printStackTrace();
	}
    } %>
    </body>
</html>
