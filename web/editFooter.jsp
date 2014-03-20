<%-- 
    Document   : editFooter
    Created on : 19-Mar-2014, 21:02:17
    Author     : as11
--%>


<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    
    <% /*
        Page p = new Page("","");
        out.print(p.createPage());
    */%>
 <%

    HttpSession sess = request.getSession(false);
    if(sess !=null){
        Base.User user=(Base.User)sess.getAttribute("user");
        String PAGE = request.getParameter("page");
        XMLParser.ErrorRetriever.Error e = (XMLParser.ErrorRetriever.Error)sess.getAttribute("Error");
        if(e!=null){
            out.println("<h1>"+e.toString()+"</h1>");
        }
    }
%>
<head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <meta name="description" content="">
        <meta name="author" content="">       
        <title>CMS TEMPLATE1</title>
		

		<!--href="../../stylesheets/stylesheetOne.css"--> 
			<script type="text/javascript" src="http://ajax.aspnetcdn.com/ajax/jQuery/jquery-2.0.3.js"></script>
			<script type="text/javascript" src="jquery-2.1.0.min.js"></script>
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
                    <a href="editFooter.jsp" class="btn">Step 5</a>
			 <form id="footer" action="processForm.jsp" method="POST">
                        <h2>Footer Content</h2>
                            <div id="toolbar4" style="display: none;">
                             <br>
                            <a data-wysihtml5-command="bold" title="CTRL+B" class="btn btn-default">bold</a> 
                            <a data-wysihtml5-command="italic" title="CTRL+I" class="btn btn-default">italic</a>
                            </div> <br>
                            <textarea name ="text4" id="textarea4" placeholder="Enter text ..."><%/* out.print(p.Get("FOOTER"));*/%></textarea>
                            <br><input type="reset" class="btn btn-danger" value="Reset form!">
                            <input class="btn btn-success" id="Submit2" type="submit" value="Submit!">
                            <div id="log4"></div>
                             <script src="simple.js"></script>
                              <script src="wysihtml5-0.4.0pre.js"></script>
			</form>
                    </footer>
                    <br>
                             <a href="#" class="btn btn-warning" onclick="history.go(-1)">Go Back</a>
                             <hr>
                              <footer>&copy Team 7.</footer>  
                    </div>	
               
                            
					<script>
							
						
							  
							
							  
							    var editor4 = new wysihtml5.Editor("textarea4", {
								toolbar:        "toolbar4",
								stylesheets:    "stylesheet.css",
								parserRules:    wysihtml5ParserRules
							  });
							  
						
							  var log4 = document.getElementById("log4");
							  
							  
								
								
								
								editor4
								.on("load", function() {
								  log4.innerHTML += "";
								})
								.on("focus", function() {
								  log4.innerHTML += "";
								})
								.on("blur", function() {
								  log4.innerHTML += "";
								})
								.on("change", function() {
								  log4.innerHTML += "";
								})
								.on("paste", function() {
								  log4.innerHTML += "";
								})
								.on("newword:composer", function() {
								  log4.innerHTML += "";
								})
								.on("undo:composer", function() {
								  log4.innerHTML += "";
								})
								.on("redo:composer", function() {
								  log4.innerHTML += "";
								});
								
								
							</script>
		</div> <!--end of wrapper-->      
                 
	</body>
</html>

