<!DOCTYPE html>
<html lang="en">
  <head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <meta name="description" content="">
    <meta name="author" content="">
    <link rel="shortcut icon" href="../../assets/ico/favicon.ico">

    <title>Register</title>

    <!-- Bootstrap core CSS -->
    <link href="css/bootstrap.min.css" rel="stylesheet">

    <!-- Custom styles for this template -->
    <link href="signin.css" rel="stylesheet">

    <!-- Just for debugging purposes. Don't actually copy this line! -->
    <!--[if lt IE 9]><script src="../../assets/js/ie8-responsive-file-warning.js"></script><![endif]-->

    <!-- HTML5 shim and Respond.js IE8 support of HTML5 elements and media queries -->
    <!--[if lt IE 9]>
      <script src="https://oss.maxcdn.com/libs/html5shiv/3.7.0/html5shiv.js"></script>
      <script src="https://oss.maxcdn.com/libs/respond.js/1.4.2/respond.min.js"></script>
    <![endif]-->
  </head>

  <body>

    <div class="container">
		        <h1>hello <% 
        
        
        XMLParser.ErrorRetriever.Error e=(XMLParser.ErrorRetriever.Error)session.getAttribute("Error");
        XMLParser.ErrorRetriever ret = new XMLParser.ErrorRetriever();
        if(e!=null){
            out.println(e.toString());
        }
        
        
       %></h1>

      <form class="form-signin" action ="RegServlet"  method="post" id="register" role="form">
          <input type="hidden" name="pagename" value="register"/>
        <h2 class="form-signin-heading">Please register</h2>
        <input type="text" name="txtFName" class="form-control" placeholder="First Name" required autofocus>
        <input type="text" name="txtLName" class="form-control" placeholder="Last Name" required autofocus>
        <input type="text" name="txtUName" class="form-control" placeholder="User Name" required autofocus>
        <input type="text" name="txtCharityName" class="form-control" placeholder="Charity Name" required autofocus>
        <input type="text" name="txtEmail" class="form-control" placeholder="Email address" required autofocus>
        <input type="password" name="txtPassword" class="form-control" placeholder="Password" required>
        <label class="checkbox">
          <input type="checkbox" value="remember-me"> Remember me
        </label>
        <button class="btn btn-lg btn-primary btn-block" type="submit">Register</button>
      </form>

    </div> <!-- /container -->


    <!-- Bootstrap core JavaScript
    ================================================== -->
    <!-- Placed at the end of the document so the pages load faster -->
  </body>
</html>
