<%-- 
    Document   : login
    Created on : 16-Feb-2014, 12:31:20
    Author     : as11
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Login</title>
    </head>
    <body>
    <form name="login" method="post" action="RegServlet">
    <input type="hidden" name="pagename" value="login"/>
    <table>
            <tr>
                    <td>Email</td>
                    <td><input type="text" name="txtEmail"/></td>
            </tr>
            <tr>
                    <td>Password</td>
                    <td><input type="password" name="txtPassword"/></td>
            </tr>
            <tr>
                    <td><button type="submit">Login</button></td>
                    <td><label>Register</label></td>
            </tr>
    </table>
    </form>
    </body>
</html>