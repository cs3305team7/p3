<!DOCTYPE html>
<html lang="en">
  <head>
    <meta charset="utf-8">
    <title>Your Dashboard</title>
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta name="description" content="">
    <meta name="author" content="">

    <!-- Le styles -->
    <link href="css/bootstrap.css" rel="stylesheet">
    <style type="text/css">
      body {
        padding-top: 20px;
        padding-bottom: 40px;
      }

      /* Custom container */
      .container-narrow {
        margin: 0 auto;
        max-width: 700px;
      }
      .container-narrow > hr {
        margin: 30px 0;
      }

      /* Main marketing message and sign up button */
      .jumbotron {
        margin: 60px 0;
        text-align: center;
      }
      .jumbotron h1 {
        font-size: 72px;
        line-height: 1;
      }
      .jumbotron .btn {
        font-size: 21px;
        padding: 14px 24px;
      }

      /* Supporting marketing content */
      .marketing {
        margin: 60px 0;
      }
      .marketing p + h4 {
        margin-top: 28px;
      }
    </style>
    <link href="../assets/css/bootstrap-responsive.css" rel="stylesheet">

    <!-- HTML5 shim, for IE6-8 support of HTML5 elements -->
    <!--[if lt IE 9]>
      <script src="../assets/js/html5shiv.js"></script>
    <![endif]-->

    <!-- Fav and touch icons -->
    <link rel="apple-touch-icon-precomposed" sizes="144x144" href="../assets/ico/apple-touch-icon-144-precomposed.png">
    <link rel="apple-touch-icon-precomposed" sizes="114x114" href="../assets/ico/apple-touch-icon-114-precomposed.png">
      <link rel="apple-touch-icon-precomposed" sizes="72x72" href="../assets/ico/apple-touch-icon-72-precomposed.png">
                    <link rel="apple-touch-icon-precomposed" href="../assets/ico/apple-touch-icon-57-precomposed.png">
                                   <link rel="shortcut icon" href="../assets/ico/favicon.png">
  </head>

  <body>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.SQLException"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
    <div class="container-narrow">

      <div class="masthead">
        <ul class="nav nav-pills pull-right">
          <li><a href="#">Visit Your Homepage</a></li>
          <li><a href="faq.html">FAQ</a></li>
        </ul>
        <h3 class="muted">Charity Management Website</h3>
      </div>
        <br>
        <br>
        <br>
      <%
	   
       HttpSession sess = request.getSession(true);
       if(sess !=null){
        Base.User user=(Base.User)sess.getAttribute("user");
        String PAGE = request.getParameter("page");
        Base.DBManager dbman = new Base.DBManager();
        
		try{
                  /*      ResultSet resw_ID= dbman.query("SELECT w_ID FROM charity_sites WHERE" + "url=" +user.getCharityName());
			if(resw_ID.first()){ 
                           int w_ID = resw_ID.getInt("w_ID");*/
                             ResultSet resp_ID = dbman.query("SELECT pagename FROM webpages WHERE w_ID = 1");
                             resp_ID.first();    
                             String pagename = resp_ID.getString("pagename");
                                    
                                    while( resp_ID.next() ){
                                  %>

                                  <p><a href="C://Users/sor4/p3-master/
                                           <//% user.getCharityName(); %> /
                                            <% //out.print(pagename);%>.
                                    jsp">
                                            <%out.print(pagename);
                                         pagename = resp_ID.getString("pagename");%></a>
                                                <a class="btn btn-primary btn-sm" href="editPage.jsp">Edit This Page<a>
                                           <a class="btn btn-danger btn-sm" href="delete.jsp">Delete Page</a><p><%
                                           
                                       }

                                 %></ul><%
                       } catch(Exception e){
			sess.setAttribute("Error", XMLParser.ErrorRetriever.Error.DATABASE_CONNECTION);
                         e.printStackTrace();
              }%>
              
                                           <hr>
                                           
              <%try{
                      /*  ResultSet resW_ID= dbman.query("SELECT w_ID FROM charity_sites WHERE" + "url=" +user.getCharityName());
                        resW_ID.first())
                        int W_ID = resW_ID.getInt("w_ID");*/		
						
                        ResultSet resusers = dbman.query("SELECT username FROM registered_users WHERE w_ID = 1" );
                        resusers.first();
                        String users = resusers.getString("username");
                                %><h3>Your registered users</h3><ul><%
                                while( resusers.next() ){
                                %>
                                <p>
                                <%
                                        out.print(users);
                                        users = resusers.getString("username");
                                %>  <a class="btn btn-danger btn-sm" href="deleteUser.jsp"> Delete This User</a></p><%
                               }
                        %></ul><%
		}catch(Exception e){
			sess.setAttribute("Error", XMLParser.ErrorRetriever.Error.DATABASE_CONNECTION);
                         e.printStackTrace();
	}
    } %>
    <hr>
    </div>
    </body>
</html>
