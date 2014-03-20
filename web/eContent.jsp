<%-- 
    Document   : eContent
    Created on : 19-Mar-2014, 21:05:15
    Author     : as11
--%>


<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    
    <% 
        /**Page p = new Page("","");
        out.print(p.createPage());**/
    %>
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
                    <a href="editNav.jsp" class="btn">Step 4</a>
                        
			<form name="ajaxform" id="ajaxform" action="processForm.jsp" method="POST">
                           <h2>Main Content</h2>
						  <div id="toolbar" style="display: none;">
						   <br>
							<a data-wysihtml5-command="bold" title="CTRL+B" class="btn btn-default">bold</a> 
							<a data-wysihtml5-command="italic" title="CTRL+I" class="btn btn-default">italic</a> 
							<a data-wysihtml5-command="createLink" class="btn btn-default">insert link</a> 
							<a data-wysihtml5-command="insertImage" class="btn btn-default">insert image</a> 
							<a data-wysihtml5-command="formatBlock" data-wysihtml5-command-value="h1" class="btn btn-default">h1</a> 
							<a data-wysihtml5-command="formatBlock" data-wysihtml5-command-value="h2" class="btn btn-default">h2</a> 
							<a data-wysihtml5-command="insertUnorderedList" class="btn btn-default">insertUnorderedList</a> 
							<a data-wysihtml5-command="insertOrderedList" class="btn btn-default">insertOrderedList</a>
                                                        
							
							
							<div data-wysihtml5-dialog="createLink" style="display: none;">
							  <label>
								Link:
								<input data-wysihtml5-dialog-field="href" value="http://">
							  </label>
							  <a data-wysihtml5-dialog-action="save">OK</a>&nbsp;<a data-wysihtml5-dialog-action="cancel">Cancel</a>
							</div>
							
							<div data-wysihtml5-dialog="insertImage" style="display: none;">
							  <label>
								Image:
								<input data-wysihtml5-dialog-field="src" value="http://">
							  </label>
							  <label>
								Align:
								<select data-wysihtml5-dialog-field="className">
								  <option value="">default</option>
								  <option value="wysiwyg-float-left">left</option>
								  <option value="wysiwyg-float-right">right</option>
								</select>
							  </label>
							  <a data-wysihtml5-dialog-action="save">OK</a>&nbsp;<a data-wysihtml5-dialog-action="cancel">Cancel</a>
							</div>
						  </div> <!--end of toolbar div of text Editor-->
                                                  <br>
						  <textarea name ="text" id="textarea" placeholder="Enter text ..."><% /**out.print(p.Get("CONTENT"));*/%></textarea>
						  <br>
						  <input class="btn btn-success" type="submit" value="Submit!">
						</form><!--End of form -->
						<div id="log"></div>
							<script src="advanced.js"></script>
							<script src="wysihtml5-0.4.0pre.js"></script>
                                                        <br>
                                     <a href="#" class="btn btn-warning" onclick="history.go(-1)">Go Back</a>
                                     <hr>
                              <footer>&copy Team 7.</footer>           
                    </div><!--End of CONTENT div-->
                 
					<script>
							  var editor = new wysihtml5.Editor("textarea", {
								toolbar:        "toolbar",
								stylesheets:    "stylesheet.css",
								parserRules:    wysihtml5ParserRules
							  });

							  
							  var log = document.getElementById("log");							 
	
							 						  
							  editor
								.on("load", function() {
								  log.innerHTML += "";
								})
								.on("focus", function() {
								  log.innerHTML += "";
								})
								.on("blur", function() {
								  log.innerHTML += "";
								})
								.on("change", function() {
								  log.innerHTML += "";
								})
								.on("paste", function() {
								  log.innerHTML += "";
								})
								.on("newword:composer", function() {
								  log.innerHTML += "";
								})
								.on("undo:composer", function() {
								  log.innerHTML += "";
								})
								.on("redo:composer", function() {
								  log.innerHTML += "";
								});
								
								
							</script>
                                                    
		</div> <!--end of wrapper-->            
	</body>
</html>

