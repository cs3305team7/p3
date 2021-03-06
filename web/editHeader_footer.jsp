<%-- 
    Document   : header_footer
    Created on : 08-Mar-2014, 17:57:58
    Author     : as11
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
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
  <!DOCTYPE html>
  <html lang="en">
  <head>
    <meta charset="utf-8">
    <title>Template &middot; Bootstrap</title>
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta name="description" content="">
    <meta name="author" content="">
		
        <link rel="stylesheet" type="text/css" href="stylesheets/stylesheetTem.css" id="stylesheet">
		<!--href="../../stylesheets/stylesheetOne.css"--> 
		<script type="text/javascript">
	

		$(document).ready(function() {
		   $('#textarea2').click(function() {
				  $.ajax({ 
					  type: "POST", 
					  url: "processForm.jsp",//get response from this file
					  success: function(response){ 
					   $("textarea#text2").val(response);//send response to textarea
					}
				});
		});
		});
		//////////////////////////////////////////////////////////////////////////////// end of header 
		////////////////////////////////////////////////////////////////////////////////start of footer
		$(document).ready(function() {
		   $('#textarea4').click(function() {
				  $.ajax({ 
					  type: "POST", 
					  url: "processForm.jsp",//get response from this file
					  success: function(response){ 
					   $("textarea#text4").val(response);//send response to textarea
					}
				});
		});
		});

		</script>
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
                    <h1>Congratulations on registering! </h1>
                    <p>You are now a couple steps away from setting up your Website!</p>
                    <a href="editHeader_footer.jsp" class="btn">Step 1</a>
                    <a href="editTemplate.jsp" class="btn">Step 2</a>
                    <a href="themeSelection.jsp" class="btn">Step 3</a>	
          
			<form id="header">
                        <h4>Header Content</h4>
                              <div id="toolbar2" style="display: none;">
                               <a data-wysihtml5-action="change_view" class="btn">html view</a> <br> <br>
                                    <a data-wysihtml5-command="bold" title="CTRL+B" class="btn">bold</a> 
                                    <a data-wysihtml5-command="italic" title="CTRL+I" class="btn">italic</a>
                                    <a data-wysihtml5-command="formatBlock" data-wysihtml5-command-value="h1" class="btn">h1</a> 
                                    <a data-wysihtml5-command="formatBlock" data-wysihtml5-command-value="h2" class="btn">h2</a> 
                              </div>
                              <textarea name="text2" id="textarea2" placeholder="Enter text ..."><%/* out.print(p.Get("HEADER"));*/%></textarea>
                              <br><input type="reset" value="Reset form!">
                                    <input class="buttons" id="Submit2" type="submit" value="Submit!">

                            <div id="log2"></div>
                            <script src="simple.js"></script>
                            <script src="wysihtml5-0.4.0pre.js"></script>
                
			</form>
                      	<form id="footer">
                        <h4>Footer Content</h4>
                            <div id="toolbar4" style="display: none;">
                            <a data-wysihtml5-action="change_view" class="btn">html view</a> <br> <br>
                            <a data-wysihtml5-command="bold" title="CTRL+B" class="btn">bold</a> 
                            <a data-wysihtml5-command="italic" title="CTRL+I" class="btn">italic</a>
                            </div>
                            <textarea name ="text4" id="textarea4" placeholder="Enter text ..."><%/* out.print(p.Get("FOOTER"));*/%></textarea>
                            <br><input type="reset" value="Reset form!">
                            <input class="buttons" id="Submit2" type="submit" value="Submit!">
                            <div id="log4"></div>
                            
			</form>
                        </div>
                    </div>		

                            <a href="#wrapper" class="btn">Back to Top</a>
                             <a href="#" class="btn" onclick="history.go(-1)">Go Back</a>
                              <footer>&copy Team 7.</footer>  
                    </div>	
               
                            
					<script>
							
							  
							  	 var editor2 = new wysihtml5.Editor("textarea2", {
								toolbar:        "toolbar2",
								stylesheets:    "stylesheet.css",
								parserRules:    wysihtml5ParserRules
							  });
							  
							
							  
							    var editor4 = new wysihtml5.Editor("textarea4", {
								toolbar:        "toolbar4",
								stylesheets:    "stylesheet.css",
								parserRules:    wysihtml5ParserRules
							  });
							  
							  var log2 = document.getElementById("log2");
							  var log4 = document.getElementById("log4");
							  
							  
								editor2
								.on("load", function() {
								  log2.innerHTML += "";
								})
								.on("focus", function() {
								  log2.innerHTML += "";
								})
								.on("blur", function() {
								  log2.innerHTML += "";
								})
								.on("change", function() {
								  log2.innerHTML += "";
								})
								.on("paste", function() {
								  log2.innerHTML += "";
								})
								.on("newword:composer", function() {
								  log2.innerHTML += "";
								})
								.on("undo:composer", function() {
								  log2.innerHTML += "";
								})
								.on("redo:composer", function() {
								  log2.innerHTML += "";
								});
								
								
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

