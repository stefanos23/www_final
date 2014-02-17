<%-- 
    Document   : ShowResults
    Created on : Feb 11, 2014, 3:59:18 PM
    Author     : Stefanakis
--%>

   <%
    if ((session.getAttribute("userid") == null) || (session.getAttribute("userid") == "")) {
%>

<jsp:include page="timeout.jsp" />

<%} else {
%>

<%@page import="java.util.*"%>
<!DOCTYPE html>

<html>
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
                <div class="col-lg-12">
                    <hr>
                    <h2 class="intro-text text-center"> <strong>Our recommendation</strong>
                    </h2>
                    <hr>
                </div>
                 <%
                        List titles = (List)request.getAttribute("titles");
                        List dates = (List)request.getAttribute("dates");
                        List ratings  = (List)request.getAttribute("ratings");
                        List director = (List)request.getAttribute("director");
                        List tags = (List)request.getAttribute("tags");
                        List url  = (List)request.getAttribute("url");  
                        Iterator st = titles.iterator();
                        Iterator da = dates.iterator();
                        Iterator ra = ratings.iterator();
                        Iterator ka = director.iterator();
                        Iterator pa = tags.iterator();
                        Iterator sarbel = url.iterator();
                        %>
                <div class="col-md-6">
                     <iframe width="560" height="315" src=<%=sarbel.next()%> frameborder="0" allowfullscreen></iframe>
                </div>
                <div class="col-md-6">
                   
                        <p><strong>Title</strong>:<%out.print(" " + st.next());%></p>
                    <p><strong>Date</strong>:<%out.print(" " + da.next());%></p>
                    <p><strong>Imdb rating</strong>:<%out.print(" " + ra.next());%></p>
                    <p><strong>Director</strong>:<%out.print(" " + ka.next());%></p>
                    <p><strong>Tags</strong>:<%out.print(" " + pa.next());%></p>
                </div>
                <div class="clearfix"></div>
                 <div class="col-lg-12">
                   <div class="n">
                    <div id="fb-root" class="fb_reset">
                        <div style="position: absolute; top: -10000px; height: 0px; width: 0px;">
                                    </div>
                        </div>
                        <script src="http://connect.facebook.net/en_US/all.js#appId=APP_ID&amp;xfbml=1" type="text/javascript">
                        </script>
                        <script type="text/javascript" language="javascript">

                        //<![CDATA[
                        document.write("<fb:comments href='http://localhost:8084/MovieMood_v2/About.jsp' num_posts='10' width='500'><\/fb:comments>");
                        //]]>
                        </script>
                     </div>
                </div>
                <div class="col-lg-5"></div>
                <div class="col-lg-7">
                    <form action="home.jsp">
                        <input type="submit" value="Back to Search" />
                    </form>
                </div>
            </div>
        </div>
    
</div>
                
                 <footer>
        <div class="container">
            <div class="row">
                <div class="col-lg-12 text-center">
                    <p>Magnesia,Volos,2013</p>
                </div>
            </div>
        </div>
    </footer>

</body>
</html>

<%
    }
%> 
