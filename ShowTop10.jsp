<%@page import="java.util.Iterator"%>
<%@page import="java.util.List"%>
<!DOCTYPE html>
   <%
    if ((session.getAttribute("userid") == null) || (session.getAttribute("userid") == "")) {
%>

<jsp:include page="timeout.jsp" />

<%} else {
%>
<html lang="en">

<head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta name="description" content="">
    <meta name="author" content="">

    <title>MovieMood</title>

    <!-- Bootstrap core CSS -->
    <link href="css/bootstrap.css" rel="stylesheet">

    <!-- Add custom CSS here -->
    <link href="css/business-casual.css" rel="stylesheet">
     <style>
            th, td
            {   
            padding:15px;
            }   
         </style>
</head>

<body>

    <jsp:include page="head.jsp" />

    <jsp:include page="menu.jsp" />

    <div class="container">

            <div class="row">
            <div class="box">
                <div class="col-lg-12">
                    <hr>
                    <h2 class="intro-text text-center"><strong>Rss feed</strong>
                    </h2>
                    <hr>
                </div>
                <div class="col-lg-5 text-center">
                    <img class="img-responsive img-border img-full" src="img/box.jpg" alt="">
                    <h2>Top 10
                        <br>
                        <small>February, 2014</small>
                    </h2>
                    <p>Usa box office rss</p>
                </div>
                 <%
                        
                        List top  = (List)getServletContext().getAttribute("lista");  
                       
                        Iterator sarbel = top.iterator();
                        %>
                 <div class="col-lg-7">
                    
                     <table border="2" align="center">
                        <thead>
                            <tr>
                                <th>USA box office</th>
                               
                            </tr>
                        </thead>
                        <tbody>
                            <tr>
                                <td><%out.print(" " + sarbel.next());%></td>
                                
                            </tr>
                            <tr>
                                <td><%out.print(" " + sarbel.next());%></td>
                                
                            </tr>
                            <tr>
                                <td><%out.print(" " + sarbel.next());%></td>
                                
                            </tr>
                            <tr>
                                <td><%out.print(" " + sarbel.next());%></td>
                                
                            </tr>
                            <tr>
                                <td><%out.print(" " + sarbel.next());%></td>
                               
                            </tr>
                            <tr>
                                <td><%out.print(" " + sarbel.next());%></td>
                               
                            </tr>
                            <tr>
                                <td><%out.print(" " + sarbel.next());%></td>
                               
                            </tr>
                            <tr>
                                <td><%out.print(" " + sarbel.next());%></td>
                               
                            </tr>
                            <tr>
                                <td><%out.print(" " + sarbel.next());%></td>
                               
                            </tr>
                            <tr>
                                <td><%out.print(" " + sarbel.next());%></td>
                               
                            </tr>
                        </tbody>
                    </table>
                </div>
                
               
            </div>
        </div>

    </div>
    <!-- /.container -->

    <footer>
        <div class="container">
            <div class="row">
                <div class="col-lg-12 text-center">
                    <p>Magnesia,Volos,2013</p>
                </div>
            </div>
        </div>
    </footer>

    <!-- JavaScript -->
    <script src="js/jquery-1.10.2.js"></script>
    <script src="js/bootstrap.js"></script>

</body>

</html>
<%
    }
%> 
