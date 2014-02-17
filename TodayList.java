package newpackage;


import java.util.ArrayList;

/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

/**
 *
 * @author Stefanakis
 */
public class TodayList {
    private ArrayList<String> addresses = new ArrayList();

    public TodayList(){
        handlerXml a = new handlerXml();
            //a.processFeed();
            //System.out.println(a.getDate() + "\n " + a.getTitle() + "\n " + a.getDescription());
        addresses = a.getAddresses();
            //for (String s : addresses){
                //if(!s.startsWith("Search"))
              //  System.out.println(s + "\n");
            //}
    }
    /**
     * @return the addresses
     */
    public ArrayList<String> getAddresses() {
        return addresses;
    }

    /**
     * @param addresses the addresses to set
     */
    public void setAddresses(ArrayList<String> addresses) {
        this.addresses = addresses;
    }
    
    
}
