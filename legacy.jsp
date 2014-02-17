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
                    <h2 class="intro-text text-center"><strong>Top 5</strong>
                    </h2>
                    <hr>
                </div>
                <div class="col-lg-5 text-center">
                    <img class="img-responsive img-border img-full" src="img/top2.jpg" alt="">
                    <h2>Moovie Mood Selection
                        <br>
                        <small>February, 2014</small>
                    </h2>
                    <p>Top 5 movies everybody should see.</p>
                </div>
                
                 <div class="col-lg-7">
                    
                     <table border="2" align="center">
                        <thead>
                            <tr>
                                <th>num</th>
                                <th>movie</th>
                                <th>date</th>
                                <th>rating</th>
                            </tr>
                        </thead>
                        <tbody>
                            <tr>
                                <td>1.</td>
                                <td>Rambo</td>
                                <td>2000</td>
                                <td>9.2</td>
                            </tr>
                            <tr>
                                <td>2.</td>
                                <td>Escape Plan</td>
                                <td>2013</td>
                                <td>7.6</td>
                            </tr>
                            <tr>
                                <td>3.</td>
                                <td>Die Hard</td>
                                <td>1999</td>
                                <td>7.4</td>
                            </tr>
                            <tr>
                                <td>4.</td>
                                <td>2 Guns</td>
                                <td>2012</td>
                                <td>7.1</td>
                            </tr>
                            <tr>
                                <td>5.</td>
                                <td>Mortal Kombat</td>
                                <td>1993</td>
                                <td>6.9</td>
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
