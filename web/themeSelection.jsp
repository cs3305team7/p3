<%-- 
    Document   : welcome
    Created on : 08-Mar-2014, 11:43:21
    Author     : as11
--%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%

    HttpSession sess = request.getSession(false);
    if(sess !=null){
        Base.User user=(Base.User)sess.getAttribute("user");
        String PAGE = request.getParameter("page");
        sess.setAttribute("NewPageName", "index");
    }
%>
<!DOCTYPE html>
<html lang="en">
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
            </ul>
            <h3 class="muted">Charity Management Website</h3>
            </div>  
            <div class="row-fluid marketing">
                <div class="span6">  
                    <a href="editHeader.jsp" class="btn">Step 2</a>
             
                    <section id="themeSection">
                        <h1 id="headingTheme"> Select Theme </h1>
                        <form id="themeSelection" action="processForm.jsp">
                            <br>
                                <input type="hidden" name="Theme" value="theme1"/>
                                <img id="imgs" src="../images/themeOne.png" alt="Charity Case" title=""  />
                                <input id="themebtn" type="submit"  class="btn btn-success" value="Select Theme">
                                    <br>
                                </form>
                                <form id="themeSelection" action="processForm.jsp">
                                    <br>
                                    <input type="hidden" name="Theme" value="theme2"/>
                                    <img id="imgs" src="../images/themeTwo.png" alt="Charity Case" title=""  />
                                    <input id="themebtn" type="submit"  class="btn btn-success" value="Select Theme">
                                </form>
                                <form id="themeSelection" action="processForm.jsp">
                                    <br>
                                    <input type="hidden" name="Theme" value="theme3"/>
                                    <img id="imgs" src="../images/themeThree.png" alt="Charity Case" title=""  />
                                    <input id="themebtn" type="submit"  class="btn btn-success" value="Select Theme">
                                </form>
                                <br>
                                <a href="#" class="btn btn-warning" onclick="history.go(-1)">Go Back</a>
                                <hr>
                                <footer>&copy Team 7.</footer>
                        </section>
                </div>
            </div>
         </div>
                <script src="../assets/js/jquery.js"></script>
                <script src="../assets/js/bootstrap-transition.js"></script>
                <script src="../assets/js/bootstrap-alert.js"></script>
                <script src="../assets/js/bootstrap-modal.js"></script>
                <script src="../assets/js/bootstrap-dropdown.js"></script>
                <script src="../assets/js/bootstrap-scrollspy.js"></script>
                <script src="../assets/js/bootstrap-tab.js"></script>
                <script src="../assets/js/bootstrap-tooltip.js"></script>
                <script src="../assets/js/bootstrap-popover.js"></script>
                <script src="../assets/js/bootstrap-button.js"></script>
                <script src="../assets/js/bootstrap-collapse.js"></script>
                <script src="../assets/js/bootstrap-carousel.js"></script>
                <script src="../assets/js/bootstrap-typeahead.js"></script>
    </body>
</html>

