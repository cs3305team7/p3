<!DOCTYPE html>
	<html lang="en">
    <head>
        <meta charset="utf-8" />
		<link rel="stylesheet" href="stylesheet.css" />
        <title>CMS</title>
		</head>


<body onload="checkEdits()">
<div id="wrapper">
	<header>
     <div id="edit5" contenteditable="true">
		<header id="headerContent">
				<h1>Charity Management System</h1>
				<h2> 
					&#34;The greatness of a nation and its moral progress can be judged by the way its animals are treated.&#34;
					</br><small>By: Mahatma Gandhi </small>
				</h2>
		</header>
	</div> <!--end of header div-->
    </header>

	<nav>
	<ul>
		<li><a href="index.html">HOME</a></li>
		<li><a href="aboutUs.html">ABOUT US</a></li>
		<li><a href="contactUs.html">CONTACT US</a></li>
	</ul>
	</nav>	
	
	<section id="mainContent">	
			<article>
				</br>
				<?php
					// Contact subject
					$subject = $_POST['subject']; 

					// Details
					$message= $_POST['detail'];

					// Mail of sender
					$mail_from= $_POST['customer_mail'];

					// Name of Sender 
					$name = $_POST['name'];

					// From 
					$header="from: $name <$mail_from>";

					//mail of receiver
					$to = $_POST['receiver_mail'];
					$send_contact=mail($to,$subject,$message,$header);

					// Check, if message sent to your email 
					// display message "We've recived your information"
					if($send_contact){
						echo "You Email has been sent to {$to}. Successfull Request!";
					}
					else {
						echo "An Error seems to have occured! Failed Request. Try Again! ";
					}
					?>
			</article>
	</section>	

     
    <footer>
        <p>
            <small>
                &copy; Team04 UCC. All rights reserved.
            </small>
        </p>
    </footer>
		<div id="update"> </div>
	</div>
</body>
</html>