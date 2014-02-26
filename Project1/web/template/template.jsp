<%-- 
    Document   : template
    Created on : 25-Feb-2014, 20:34:22
    Author     : Thomas
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    
    <% 
        Page p = new Page("","");
       // out.print(p.createPage());
    %>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>CMS TEMPLATE1</title>
        <link rel="stylesheet" href=<%out.print(p.getStyles());%> <!--href="../../stylesheets/stylesheetOne.css"--> />
	</head>
	<body>
                
	  <div id="wrapper">
	   <div id="edit2" contenteditable="true">
		<header id="headerContent">
				<h1>Enter Title of you Website</h1>
				<h2> 
					Enter a Quote if you wish!
				</h2>
		</header>
		</div> <!--end of header div-->
		
		<nav>
		<ul>
			<li><a href="index.jsp">HOME</a></li>
			<li><a href="aboutUs.jsp">ABOUT US</a></li>
			<li><a href="contactUs.jsp">CONTACT US</a></li>
			<li><a href="lostFound.jsp">LOST & FOUND</a></li>
			<li><a href="adoption.jsp">ADOPTION</a></li>	
		</ul>
		</nav>
		
		<aside id="pics">
			<img src="../../images/themeOne/panda1.jpg" alt="Charity Case" title=""  />
			<img src="../../images/themeOne/panda2.jpg" alt="Charity Case" title="" />
			<img src="../../images/themeOne/penguin1.jpg" alt="Charity Case" title="" />
			<img src="../../images/themeOne/penguin2.jpg" alt="Charity Case" title="" />
		</aside>
		
		
		<div>
			<h1> Enter Heading </h1>
		 <p> 	The combination of Red, Green and Blue values from 0 to 255 gives a total of more than 16 million different colors to play with (256 x 256 x 256).

						Most modern monitors are capable of displaying at least 16384 different colors.

						If you look at the color table below, you will see the result of varying the red light from 0 to 255, while keeping the green and blue light at zero.

						To see a full list of color mixes when the red light varies from 0 to 255, click on one of the hex or rgb values below.
                                                 Green and Blue values from 0 to 255 gives a total of more than 16 million different colors to play with (256 x 256 x 256).

						Most modern monitors are capable of displaying at least 16384 different colors.

						If you look at the color table below, you will see the result of varying the red light from 0 to 255, while keeping the green and blue light at zero.

		To see a full list of color mixes when the red light varies from 0 to 255, click on one of the hex or rgb values below.
		</p>
		  <h2>Enter Heading2 </h2>
		 <p> 	The combination of Red, Green and Blue values from 0 to 255 gives a total of more than 16 million different colors to play with (256 x 256 x 256).

						Most modern monitors are capable of displaying at least 16384 different colors.

						If you look at the color table below, you will see the result of varying the red light from 0 to 255, while keeping the green and blue light at zero.

						To see a full list of color mixes when the red light varies from 0 to 255, click on one of the hex or rgb values below.
                                                 Green and Blue values from 0 to 255 gives a total of more than 16 million different colors to play with (256 x 256 x 256).

						Most modern monitors are capable of displaying at least 16384 different colors.

						If you look at the color table below, you will see the result of varying the red light from 0 to 255, while keeping the green and blue light at zero.

						To see a full list of color mixes when the red light varies from 0 to 255, click on one of the hex or rgb values below.
		</p>
		</div>
		</div> <!--end of wrapper-->
		
		<footer>
			<p>
				<small>
					&copyright; Team04 UCC.
				</small>
			</p>
		</footer>
	</body>
</html>


