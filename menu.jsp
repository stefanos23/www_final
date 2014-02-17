<%-- 
    Document   : menu
    Created on : Feb 12, 2014, 3:46:29 PM
    Author     : Stefanakis
--%>
   <%
    if ((session.getAttribute("userid") == null) || (session.getAttribute("userid") == "")) {
%>

<jsp:include page="timeout.jsp" />

<%} else {
%>
 <nav class="navbar navbar-default" role="navigation">
        <div class="container">
            <div class="navbar-header">
                <button type="button" class="navbar-toggle" data-toggle="collapse" data-target=".navbar-ex1-collapse">
                    <span class="sr-only">Toggle navigation</span>
                    <span class="icon-bar"></span>
                    <span class="icon-bar"></span>
                    <span class="icon-bar"></span>
                </button>
                <a class="navbar-brand" href="index.html">Business Casual</a>
            </div>

            <!-- Collect the nav links, forms, and other content for toggling -->
            <div class="collapse navbar-collapse navbar-ex1-collapse">
                <ul class="nav navbar-nav">
                    <li><a href="home.jsp">Search</a>
                    </li>
                    <li><a href="ShowTop10.jsp">Box office</a>
                    </li>
                    <li><a href="legacy.jsp">Legacy List</a>
                    </li>
                    <li><a href="contact.jsp">Contact</a>
                    </li>
                     <li><a href="about.jsp">about</a>
                    </li>
                    
                      
                    <li>
                            <a href='logout.jsp'><strong>LogOut</strong></a></li>
                </ul>
            </div>
            <!-- /.navbar-collapse -->
        </div>
        <!-- /.container -->
    </nav>

<%
    }
%> 
