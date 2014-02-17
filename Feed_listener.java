package newpackage;


import java.util.ArrayList;
import javax.servlet.ServletContext;
import javax.servlet.ServletContextEvent;
import javax.servlet.ServletContextListener;

/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

/**
 *
 * @author Stefanakis
 */
public class Feed_listener implements ServletContextListener{

    @Override
    public void contextInitialized(ServletContextEvent sce) {
       ServletContext sc = sce.getServletContext();
        //String dogBreed = sc.getInitParameter("breed");
        TodayList d = new TodayList();
        //String la = new String();
        //la = "1222222222222222222222222222222222222222222222";
        ArrayList<String> addresses = d.getAddresses();
        sc.setAttribute("lista", addresses);
    }

    @Override
    public void contextDestroyed(ServletContextEvent sce) {
        throw new UnsupportedOperationException("Not supported yet."); //To change body of generated methods, choose Tools | Templates.
    }
    
}
