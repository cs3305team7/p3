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
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>CMS TEMPLATE1</title>
		
        <link rel="stylesheet" type="text/css" href="stylesheets/stylesheetTem.css" id="stylesheet">
		<!--href="../../stylesheets/stylesheetOne.css"--> 
		
	</head>
	<body>
                
	  <div id="wrapper">
                 <a href="editHeader.jsp" class="btn">Step 1</a>
                <a href="editFooter.jsp" class="btn">Step 2</a>
                <a href="editNav.jsp" class="btn">Step 3</a>	
                <a href="eContent.jsp" class="btn">Step 4</a>	
		<a href="themeSelection.jsp" class="btn">Step 5</a>	
	   <div>
		</div> 
                    <div id="CONTENT">
                        
			<form name="ajaxform" id="ajaxform" action="processForm.jsp" method="POST">
                           <h2>Main Content</h2>
						  <div id="toolbar" style="display: none;">
						  <a data-wysihtml5-action="change_view">html view</a> <br> <br>
							<a data-wysihtml5-command="bold" title="CTRL+B">bold</a> |
							<a data-wysihtml5-command="italic" title="CTRL+I">italic</a> |
							<a data-wysihtml5-command="createLink">insert link</a> |
							<a data-wysihtml5-command="insertImage">insert image</a> |
							<a data-wysihtml5-command="formatBlock" data-wysihtml5-command-value="h1">h1</a> |
							<a data-wysihtml5-command="formatBlock" data-wysihtml5-command-value="h2">h2</a> |
							<a data-wysihtml5-command="insertUnorderedList">insertUnorderedList</a> |
							<a data-wysihtml5-command="insertOrderedList">insertOrderedList</a>
							
							
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
						  <textarea name ="text" id="textarea" placeholder="Enter text ..."><% /**out.print(p.Get("CONTENT"));*/%></textarea>
						  <br>
						  <input class="buttons" type="submit" value="Submit!">
						</form><!--End of form -->
						<div id="log"></div>
							<script src="advanced.js"></script>
							<script src="wysihtml5-0.4.0pre.js"></script>
                                     <a href="#wrapper" class="btn">Back to Top</a>
                                     <a href="#" class="btn" onclick="history.go(-1)">Go Back</a>
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

