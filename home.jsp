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
    
    <link rel="stylesheet" type="text/css" href="css.css">
</head>

<body>


   <jsp:include page="head.jsp" />
   <jsp:include page="menu.jsp" />
   

   
    <div class="container">
        
        <div class="row">
            <div class="box">
                <div class="col-lg-12 text-center">
                    <h1> 
                                 <span class="brand-name">Turn your mood into movie!</span>
                                  </h1>
                </div>
            </div>
        </div>

        <div class="row">
            <div class="box">
                <div class="col-lg-5 text-center">
                    <div id="carousel-example-generic" class="carousel slide">
                        <!-- Indicators -->
                        <ol class="carousel-indicators hidden-xs">
                            <li data-target="#carousel-example-generic" data-slide-to="0" class="active"></li>
                            <li data-target="#carousel-example-generic" data-slide-to="1"></li>
                            <li data-target="#carousel-example-generic" data-slide-to="2"></li>
                        </ol>

                        <!-- Wrapper for slides -->
                        <div class="carousel-inner">
                            <div class="item active">
                                <img class="img-responsive img-full" src="img/slide-1.jpg" alt="">
                            </div>
                            <div class="item">
                                <img class="img-responsive img-full" src="img/slide-2.jpg" alt="">
                            </div>
                            <div class="item">
                                <img class="img-responsive img-full" src="img/slide-3.jpg" alt="">
                            </div>
                        </div>

                        <!-- Controls -->
                        <a class="left carousel-control" href="#carousel-example-generic" data-slide="prev">
                            <span class="icon-prev"></span>
                        </a>
                        <a class="right carousel-control" href="#carousel-example-generic" data-slide="next">
                            <span class="icon-next"></span>
                        </a>
                    </div>
                    <h2>
                        <small>Welcome to</small>
                    </h2>
                    <h1>
                        <span class="brand-name">MovieMood</span>
                    </h1>
                    <hr class="tagline-divider">
                    <h2>
                        <small>By <strong>Start Bootstrap</strong></small>
                    </h2>
                </div>
                 <div class="col-lg-7 text-right">
                        <form method="POST" action="Search_data" align="right" style="float:left;">
                                 
                                  <h2> 
                                 <span class="brand-name">Selects keywords based on your mood:</span>
                                  </h2>
                                 <span class="brand-name">I feel:</span>
                                 <select name="Movie_Keywords:" size="1" align='left'>
                                     <option>from any category</option>
                                     <option>action</option>
                                     <option>clever</option>
                                     <option>scary</option>
                                     <option>sexy</option>
                                     <option>rough</option>
                                     <option>thought provoking</option>
                                 </select>
                                 <br>
                                 
                                 <br><br>
                                 <input type="submit" value="Search" />
                             </form>

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
    <script>
    // Activates the Carousel
    $('.carousel').carousel({
        interval: 5000
    })
    </script>

</body>

</html>
<%
    }
%>     
