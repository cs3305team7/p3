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
        XMLParser.ErrorRetriever.Error e = (XMLParser.ErrorRetriever.Error)sess.getAttribute("Error");
        if(e!=null){
            out.println("<h1>"+e.toString()+"</h1>");
        }
    }
%>
<!DOCTYPE html>
<html>
    <head>
       <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>CMS Builder</title>
        <link href="../stylesheets/stylesheetTem.css" rel="stylesheet" type="text/css">
    </head>
    <body>
        <div id="wrapper">
        <a href="editHeader_footer.jsp" class="btn">Step 1</a>
        <a href="editTemplate.jsp" class="btn">Step 2</a>
         <a href="themeSelection.jsp" class="btn">Step 3</a>	
         <section id="themeSection">
         <h1 id="headingTheme"> Select Theme </h1>
        <form id="themeSelection" action="processForm.jsp">
        <br>
        <input type="hidden" name="Theme" value="theme1"/>
        <img id="imgs" src="../images/themeOne.png" alt="Charity Case" title=""  />
        <input id="themebtn" type="submit" value="Select Theme">
        <br>
        </form>
        <form id="themeSelection" action="processForm.jsp">
        <br>
        <input type="hidden" name="Theme" value="theme2"/>
        <img id="imgs" src="../images/themeTwo.png" alt="Charity Case" title=""  />
        <input id="themebtn" type="submit" value="Select Theme">
        </form>
        <form id="themeSelection" action="processForm.jsp">
        <br>
        <input type="hidden" name="Theme" value="theme3"/>
        <img id="imgs" src="../images/themeThree.png" alt="Charity Case" title=""  />
        <input id="themebtn" type="submit" value="Select Theme">
        </form>
         <a href="#wrapper" class="btn">Back to Top</a>
        <a href="#" class="btn" onclick="history.go(-1)">Go Back</a>
        <footer>&copy Team 7.</footer>
       
         </section>
        </div><!--closing wrapper div-->
    </body>
</html>

