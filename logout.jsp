<%-- 
    Document   : logout
    Created on : Feb 10, 2014, 11:10:52 AM
    Author     : Stefanakis
--%>

<%
session.setAttribute("userid", null);
session.invalidate();
response.sendRedirect("index.jsp");
%>
