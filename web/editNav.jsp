<%-- 
    Document   : editNav
    Created on : 19-Mar-2014, 21:08:02
    Author     : as11
--%>

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
			<script type="text/javascript" src="jquery-2.1.0.min.js"></script>
			<!--library used to test was jqurey 1.11.0-->
		<script type="text/javascript">
                        function create(param) {
                            'use strict';

                            var i;

                            $("#screens").empty();

                            for (i = 0; i < param; i += 1) {
                                $('#screens').append('Name: <input type="text" name="name">  ');
                                $('#screens').append('URL:<input type="text" name="name"><br>');
                            }
                        }

                        $('#createTextboxes').change(function () {
                            'use strict';
                            create($(this).val());
                        });
		
                </script>
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
			<nav id="EDITABLENAV">
			<form id="nav-form" action="processForm.jsp" method="POST">
                              <h2>Navigation Form</h2>
                                      
                                <label for='createTextboxes'>Number of boxes to create:</label>
                                <select id='createTextboxes'>
                                    <option>0</option>
                                    <option>1</option>
                                    <option>2</option>
                                    <option>3</option>
                                    <option>4</option>
                                    <option>5</option>
                                    <option>6</option>
                                </select>
                                <div id=screens></div>
                                <input type="submit" />
                                </form>
			</nav> 
               
                        <script src="jquery-2.1.0.min.js"></script>
                
                                     <a href="#wrapper" class="btn">Back to Top</a>
                                     <a href="#" class="btn" onclick="history.go(-1)">Go Back</a>
                              <footer>&copy Team 7.</footer>           
                             
		</div> <!--end of wrapper-->            
	</body>
</html>

