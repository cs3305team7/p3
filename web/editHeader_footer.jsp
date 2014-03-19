<%-- 
    Document   : header_footer
    Created on : 08-Mar-2014, 17:57:58
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
	        User user=(User)sess.getAttribute("user");
	        String PAGE = request.getParameter("page");
	    }
            else{
                response.sendRedirect("index.jsp");
            }
    %>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>CMS TEMPLATE1</title>
		
        <link rel="stylesheet" type="text/css" href="stylesheets/stylesheetTem.css" id="stylesheet">
		<!--href="../../stylesheets/stylesheetOne.css"--> 
		<script type="text/javascript">
<<<<<<< HEAD
		function submitForm() {
                    $.ajax({type:'POST', url: 'processForm.jsp', data:$('#form2').serialize(), success: function(response) {
                        $('#form2').find('.form_result').html(response);
                    }});
=======
		$(document).ready(function() {
		   $('#textarea2').click(function() {
				  $.ajax({ 
					  type: "POST", 
					  url: "process.jsp",//get response from this file
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
					  url: "process.jsp",//get response from this file
					  success: function(response){ 
					   $("textarea#text4").val(response);//send response to textarea
					}
				});
		});
		});
>>>>>>> 87bc950075d57710978fe1fbdc0ea0a121e0ca6f
		</script>
	</head>
	<body>
              
            <div id="wrapper">
                <a href="editHeader_footer.jsp" class="btn">Step 1</a>
                <a href="editTemplate.jsp" class="btn">Step 2</a>
                <a href="themeSelection.jsp" class="btn">Step 3</a>		
                <div id="CONTENT">
		
                    <header id="HEADER">
			<form id="header">
                        <h2>Header Content</h2>
                              <div id="toolbar2" style="display: none;">
                               <a data-wysihtml5-action="change_view">html view</a> <br> <br>
                                    <a data-wysihtml5-command="bold" title="CTRL+B">bold</a> |
                                    <a data-wysihtml5-command="italic" title="CTRL+I">italic</a>|
                                    <a data-wysihtml5-command="formatBlock" data-wysihtml5-command-value="h1">h1</a> |
                                    <a data-wysihtml5-command="formatBlock" data-wysihtml5-command-value="h2">h2</a> 
                              </div>
                              <textarea name="text2" id="textarea2" placeholder="Enter text ..."><%/* out.print(p.Get("HEADER"));*/%></textarea>
                              <br><input type="reset" value="Reset form!">
                                    <input class="buttons" id="Submit2" type="submit" value="Submit!">

                            <div id="log2"></div>
                    <script src="simple.js"></script>
                    <script src="wysihtml5-0.4.0pre.js"></script>
                
			</form>
                    </header>
		
		
                    <footer id="FOOTER">
			 <form id="footer">
                        <h2>Footer Content</h2>
                            <div id="toolbar4" style="display: none;">
                            <a data-wysihtml5-action="change_view">html view</a> <br> <br>
                            <a data-wysihtml5-command="bold" title="CTRL+B">bold</a> |
                            <a data-wysihtml5-command="italic" title="CTRL+I">italic</a>
                            </div>
                            <textarea name ="text4" id="textarea4" placeholder="Enter text ..."><%/* out.print(p.Get("FOOTER"));*/%></textarea>
                            <br><input type="reset" value="Reset form!">
                            <input class="buttons" id="Submit2" type="submit" value="Submit!">
                            <div id="log4"></div>
                            
			</form>
                    </footer>
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
                 
	</body>
</html>

