<%-- 
    Document   : reg
    Created on : Feb 10, 2014, 10:40:20 AM
    Author     : Stefanakis
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        
       
        <meta charset="utf-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <meta name="description" content="">
        <meta name="author" content="">

        <title>MovieMood</title>

        <!-- Bootstrap core CSS -->
        <link href="css/bootstrap.css" rel="stylesheet">

        <!-- Add custom CSS here -->
        <link href="css/business-casual.css" rel="stylesheet">

        <link rel="stylesheet" type="text/css" href="css.css">

    </head>
    <body>
        
        <jsp:include page="head.jsp" />
        
         <div class="container">

            <div class="row">
                  <div class="box">
                            <form method="post" action="registration.jsp">
                                <center>
                                <table border="1" width="30%" cellpadding="5">
                                    <thead>
                                        <tr>
                                            <th colspan="2">Enter Information Here</th>
                                        </tr>
                                    </thead>
                                    <tbody>
                                        <tr>
                                            <td>First Name</td>
                                            <td><input type="text" name="fname" value="" /></td>
                                        </tr>
                                        <tr>
                                            <td>Last Name</td>
                                            <td><input type="text" name="lname" value="" /></td>
                                        </tr>
                                        <tr>
                                            <td>Email</td>
                                            <td><input type="text" name="email" value="" /></td>
                                        </tr>
                                        <tr>
                                            <td>User Name</td>
                                            <td><input type="text" name="uname" value="" /></td>
                                        </tr>
                                        <tr>
                                            <td>Password</td>
                                            <td><input type="password" name="pass" value="" /></td>
                                        </tr>
                                        <tr>
                                            <td><input type="submit" value="Submit" /></td>
                                            <td><input type="reset" value="Reset" /></td>
                                        </tr>
                                        <tr>
                                            <td colspan="2">Already registered!! <a href="index.jsp">Login Here</a></td>
                                        </tr>
                                    </tbody>
                                </table>
                                </center>
                            </form>
                          </div>
            </div>
            
             
        </div>
    </body>
</html>
