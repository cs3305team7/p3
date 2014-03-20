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
        <title>CMS TEMPLATE1</title>
		
        <link rel="stylesheet" type="text/css" href="stylesheets/stylesheetTem.css" id="stylesheet">
		<!--href="../../stylesheets/stylesheetOne.css"--> 
	
	</head>
	<body>
              
            <div id="wrapper">
               	
		<a href="dashboard.jsp" class="btn">Step 6</a>		
                <div id="CONTENT">
		
                    <footer id="FOOTER">
			 <form id="footer" action="processForm.jsp" method="POST">
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
                             <script src="simple.js"></script>
                              <script src="wysihtml5-0.4.0pre.js"></script>
			</form>
                    </footer>
                            <a href="#wrapper" class="btn">Back to Top</a>
                             <a href="#" class="btn" onclick="history.go(-1)">Go Back</a>
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

