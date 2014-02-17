/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 *
 * @author Stefanakis
 */
public class Search_database extends HttpServlet {

    /**
     * Processes requests for both HTTP <code>GET</code> and <code>POST</code>
     * methods.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        PrintWriter out = response.getWriter();
        try {
            RequestDispatcher view = request.getRequestDispatcher("timeout.jsp");
            view.forward(request, response);
            /* TODO output your page here. You may use following sample code. */
            out.println("<!DOCTYPE html>");
            out.println("<html>");
            out.println("<head>");
            out.println("<title>Servlet Search_database</title>");            
            out.println("</head>");
            out.println("<body>");
            out.println("<h1> You are not logged in! </h1>");
            out.println("</body>");
            out.println("</html>");
        } finally {
            out.close();
        }
    }

    // <editor-fold defaultstate="collapsed" desc="HttpServlet methods. Click on the + sign on the left to edit the code.">
    /**
     * Handles the HTTP <code>GET</code> method.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        processRequest(request, response);
    }

    /**
     * Handles the HTTP <code>POST</code> method.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html");
        PrintWriter out = response.getWriter();

        System.out.println("MySQL Connect Example.");
        Connection conn = null;
        String url = "jdbc:mysql://localhost:3306/";;
        String dbName = "test_login";
        String driver = "com.mysql.jdbc.Driver";
        String userName = "root";
        String password = "1514";

        List title = new ArrayList();
        List date = new ArrayList();
        List rating = new ArrayList();
        List director = new ArrayList();
        List tags = new ArrayList();
        List url2 = new ArrayList();
        
        Statement st;
        try {
        Class.forName(driver).newInstance();
        conn = DriverManager.getConnection(url+dbName,userName,password);
        System.out.println("Connected to the database");
        String name = request.getParameter("Movie_Keywords:");
        if(name.equals("from any category")){
            name = "action";
        }
        String query = "select * from movies where tags LIKE '%"+name+"%'";
        st = conn.createStatement();
        ResultSet rs = st.executeQuery(query);
        //out.println("<table border='1'><tr><th>Row Num</th><th>Item Code</th><th>Item Name</th><th>Item Price</th></tr>");
        while(rs.next()){
        title.add(rs.getString(2));
        date.add(rs.getString(3));
        rating.add(rs.getString(4));
        director.add(rs.getString(5));
        tags.add(rs.getString(6));
        url2.add(rs.getString(7));
        
        //out.println("<tr><td>"+rs.getString(2)+"</td><td>"+rs.getString(2)+"</td><td>"+rs.getString(3)+"</td><td>"+rs.getString(5)+"</td></tr>");
        }
        //out.println("</table>");
        conn.close();
        System.out.println("Disconnected from database");
        } catch (Exception e) {
        e.printStackTrace();
        }
        
        request.setAttribute("titles", title);
        request.setAttribute("dates", date);
        request.setAttribute("ratings", rating);
        request.setAttribute("director", director);
        request.setAttribute("tags", tags);
        request.setAttribute("url", url2);
        RequestDispatcher view = request.getRequestDispatcher("ShowResults.jsp");
        view.forward(request, response);
        
    }

    /**
     * Returns a short description of the servlet.
     *
     * @return a String containing servlet description
     */
    @Override
    public String getServletInfo() {
        return "Short description";
    }// </editor-fold>

}
