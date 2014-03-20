<%-- 
    Document   : editHeader
    Created on : 19-Mar-2014, 20:55:51
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
        <title>CMS TEMPLATE1</title>
		
        <link rel="stylesheet" type="text/css" href="stylesheets/stylesheetTem.css" id="stylesheet">
		<!--href="../../stylesheets/stylesheetOne.css"--> 
	</head>
	<body>
              
            <div id="wrapper">
            
                <a href="eContent.jsp" class="btn">Step 3</a>	
               					
                <div id="CONTENT">
		
                    <header id="HEADER">
						<form id="header" action="processForm.jsp" method="POST" >
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
							  
							
							  
							 
							  var log2 = document.getElementById("log2");
							
							  
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
								
								
								
								
							</script>
		</div> <!--end of wrapper-->      
                 
	</body>
</html>

