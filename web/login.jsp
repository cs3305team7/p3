<%-- 
    Document   : login
    Created on : 16-Feb-2014, 12:31:20
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
    <meta charset="utf-8">
    <title>Template &middot; Bootstrap</title>
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
        <div class="container-narrow">
            <div class="masthead">
                <ul class="nav nav-pills pull-right">
                  <li><a href="index.html">Home</a></li>
                  <li><a href="about.html">About</a></li>
                  <li><a href="contactUs.html">Contact</a></li>
                  <li><a href="faq.html">FAQ</a></li>
                </ul>
            <h3 class="muted">Charity Management Website</h3>
            </div>  
            <div class="row-fluid marketing">
                <div class="span6">
                    <form name="login" method="post" action="RegServlet">
                        <input type="hidden" name="pagename" value="login"/>
                        <h2 class="form-signin-heading">Please login</h2>
                        <input type="text" name="txtEmail" class="form-control" placeholder="Your Email" required autofocus>
                        <input type="password" name="txtPassword" class="form-control" placeholder="Your Password" required autofocus>
                        <input type="password" name="txtPassword"/>
                        <button class="btn btn-lg btn-success btn-block" type="submit">Login</button>
                    </form>
    </body>
</html>
