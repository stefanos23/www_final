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
</head>

<body>

    <jsp:include page="head.jsp" />
    <jsp:include page="menu.jsp" />

    <div class="container">

        <div class="row">
            <div class="box">
                <div class="col-lg-12">
                    <hr>
                    <h2 class="intro-text text-center"> <strong>About</strong>
                    </h2>
                    <hr>
                </div>
               
                <div class="col-md-6">
                    <p><strong>What is MoovieMood?</strong></p>
                    <p>MovieMood is a movie recommendation engine,which give you results based on your mood.</p>
                    <p><strong>How big is MovieMood database?</strong></p>
                    <p>Our database is huge and always up to date.</p>
                    <p><strong>Can MovieMood match personal recommendations to your Entertainment Personality?</strong></p>
                    <p>Not yet but we are working it out.</p>
                </div>
                <div class="clearfix"></div>
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
