<%-- 
    Document   : editTemplate
    Created on : 08-Mar-2014, 17:58:32
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
			<script type="text/javascript" src="http://ajax.aspnetcdn.com/ajax/jQuery/jquery-2.0.3.js"></script>
			<script type="text/javascript" src="jquery-1.3.2.min.js"></script>
			<!--library used to test was jqurey 1.11.0-->
		<script type="text/javascript">
		 //////////////////////////////////////////////////////////////////// JAVASCRIPT FOR NAVIGATION
		$(document).ready(function(){
			var counter = 1;
                        $("#addButton").click(function () {
			if(counter>9){
				alert("Only 10 textboxes allow");
				return false;
			}   
			var newTextBoxDiv = $(document.createElement('div'))
				 .attr("id", 'TextBoxDiv' + counter);
		 
			newTextBoxDiv.after().html('<label>Name #'+ counter + ' : </label>' +
				  '<input type="text" name="textbox' + counter + 
				  '" id="textbox' + counter + '" value="" >' +     '<label>URL #'+ counter + ' : </label>' +
				  '<input type="text" name="textbox' + counter + 
				  '" id="url' + counter + '" value="" >');
		 
			newTextBoxDiv.appendTo("#TextBoxesGroup");
                        counter++;
			 });
		 
			 $("#removeButton").click(function () {
			if(counter==1){
				  alert("No more textbox to remove");
				  return false;
			   }   
		 
			counter--;
		 
				$("#TextBoxDiv" + counter).remove();
		 
			 });
		 
			 $("#getButtonValue").click(function () {
			var msg = '';
			for(i=1; i<=counter; i++){
				msg += "\n Textarea #" + i + " : " + $('#textbox' + i).val() + " URL #"+ i + ":" + $('#url' + i).val();     
			}
			alert(msg);
			$.ajax({
				   type: "POST",
				   url: "process.jsp",
				   data: $("#nav-form").serialize(), // serializes the form's elements. as array of string
				   success: function(data)
				   {
					   alert(data); // show response from the jsp script.
				   }
				 });

			return false; // avoid to execute the actual submit of the form.	  
				  
			 });
		  });
		  
		// this is the id of the form
		//$("#nav-form").submit(function() {

			//var url = "process.jsp"; // the script where you handle the form input.

			//$.ajax({
			//	   type: "POST",
			//	   url: "process.jsp",
				   //data: $("#nav-form").serialize(), // serializes the form's elements.
				//   success: function(data)
				//   {
				//	   alert(data); // show response from the jsp script.
				 //  }
				 //});

			//return false; // avoid to execute the actual submit of the form.
		//});
////////////////////////////////////////////////////////////////////////////////////// END OF JAVASCRIPT FOR NAVIGATION		
////////////////////////////////////////////////////////////////////////////////////// textarea javascript code

 $(document).ready(function() {
   $('#textarea').click(function() {
 
          $.ajax({ 
              type: "POST", 
              url: "process.jsp",//get response from this file
              success: function(response){ 
               $("textarea#text").val(response);//send response to textarea
			}
	    });
});
});
///////////////////////////////////////////////////////////////////////////////////////////// end of textarea for javascript
</script>
	</head>
	<body>
                
	  <div id="wrapper">
	  <a href="editHeader_footer.jsp" class="btn">Step 1</a>
        <a href="editTemplate.jsp" class="btn">Step 2</a>
         <a href="themeSelection.jsp" class="btn">Step 3</a>	
	   <div>
		</div> 
			<nav id="EDITABLENAV">
						<form id="nav-form">
                              <h2>Navigation Form</h2>
						 <%/** out.print(p.Get("EDITABLENAV"));**/%><br>
						 <br>
						 <div id='TextBoxesGroup'>
								<div id="TextBoxDiv1">
									<label>Name #0 : </label><input type='textbox' id='textbox' >
									<label> URL #0: </label><input type='textbox' id='url' >
								</div>
							</div>
							<input type='button' value='Add Button' id='addButton'>
							<input type='button' value='Remove Button' id='removeButton'>
							<input type='button' value='Get TextBox Value' id='getButtonValue'>
						 </form>
			</nav> 
                    <aside id="PICS">
                        <h2>Images Column</h2>
                        <%/** out.print(p.Get("PICS"));*/%><br> <br>
						IMAGE UPLOAD INCOMPLETE!
		   </aside>


                    <div id="CONTENT">
                        
						<form name="ajaxform" id="ajaxform">
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

