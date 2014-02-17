/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

package newpackage;

import java.io.IOException;
import java.io.InputStream;
import java.net.URL;
import java.util.ArrayList;
import javax.xml.parsers.SAXParser;
import javax.xml.parsers.SAXParserFactory;
import org.xml.sax.Attributes;
import org.xml.sax.InputSource;
import org.xml.sax.SAXException;
import org.xml.sax.XMLReader;
import org.xml.sax.helpers.DefaultHandler;

/**
 *
 * @author Stefanakis
 */
public class handlerXml extends DefaultHandler {

        private String url = "http://www.fandango.com/rss/top10boxoffice.rss";
	private boolean inUrl = false;
	private boolean inTitle = false;
	private boolean inDescription = false;
	private boolean inItem = false;
	private boolean inDate = false;
	
	int i = 1;
	int j = 1;
	
	private String title = null;
        private static ArrayList<String> titles = new ArrayList<String>();
	private StringBuffer description = new StringBuffer();
	private String date = null;
        
        private ArrayList<String> addresses = new ArrayList();;

	
	public handlerXml(){
            //handlerXml a = new handlerXml();
            this.processFeed();
            //System.out.println(a.getDate() + "\n " + a.getTitle() + "\n " + a.getDescription());
            for (String s : titles){
                if(!s.startsWith("Search"))
                    addresses.add(s);
                //System.out.println(s + "\n");
            }
            
        }
	
	public void processFeed() {
        try {
                
        	SAXParserFactory factory =
        			SAXParserFactory.newInstance();
        			SAXParser parser = factory.newSAXParser();
        			XMLReader reader = parser.getXMLReader();
        			reader.setContentHandler(this);
        			InputStream inputStream = new URL(url).openStream();
        			reader.parse(new InputSource(inputStream));
        			} 
        			catch(IOException e){
        				System.out.println("lala");
        			}
        			catch (Exception e) {
        			}
        			
			
	}

	
	public void startElement(String uri, String localName, String qName,
									Attributes attributes) throws SAXException {
						
		
								if (qName.equals("enclosure")) { 
							        url = attributes.getValue("url");
							}  
								
								if (qName.equals("enclosure")) { inUrl = true; }
								else { inUrl = false; }
							
							if (qName.startsWith("item")) { 
							        inItem = true;
							} else { 
							        if (inItem) { 
							                if (qName.equals("title")) { 
							                        inTitle = true;
							                } else { 
							                        inTitle = false;
							                }
							                
							                if (qName.equals("description")) { 
							                        inDescription = true;
							                } else { 
							                        inDescription = false;
							                }
							                
							                if (qName.equals("pubDate")) { 
							                        inDate = true;
							                } else { 
							                        inDate = false;
							                }
							        }
							}

		}

	
		public void characters(char ch[], int start, int length) {
			String chars = new String(ch).substring(start, start + length);
			if (((inUrl  == true) && (i == 1))) { //url.equals("http://www.nasa.gov/sites/default/files/styles/946xvariable_height/public/9940375573_b2f378733c_o.jpg?itok=lfMCnXb_"
			
				i = 2;}
			if ((inTitle == true)/* && title == null*/) { title = chars;
                        titles.add(title);
                        }
			if (inDescription && (j == 1)) { description.append(chars); 
				j = 2;}
			if (inDate && date == null) { date = chars; }
		}

	
//	public void characters(char ch[], int start, int length) {
//						    String chars = (new String(ch).substring(start, start + length));
//						    
//						    
//						    if (inUrl && url == null) { image = getBitmap(chars); 
//						    
//						    }
//						    if (inTitle) { 
//						           title.append(chars);
//						    }
//						    
//						    if (inDescription) { 
//						            description.append(chars);
//						    }
//						    
//						    if (inDate && date == null) {
//						            //Example: Tue, 21 Dec 2010 00:00:00 EST
//						            String rawDate = chars;
//						            try { 
//						                    SimpleDateFormat parseFormat = new SimpleDateFormat("EEE, dd MMM yyyy HH:mm:ss");
//						                    Date sourceDate = (Date) parseFormat.parse(rawDate);
//						                    
//						                    SimpleDateFormat outputFormat = new SimpleDateFormat("EEE, dd MMM yyyy");
//						                    date = outputFormat.format(sourceDate);
//						            } catch (Exception e) {} 
//						    }
//						    
//		}

	

		
 



		
		public String getTitle() { return title.toString(); }
		public String getDescription() { return description.toString(); }
		public String getDate() { return date; }
		public String getUrl() { return url; }

    /**
     * @return the addresses
     */
    public ArrayList<String> getAddresses() {
        return addresses;
    }
        
		
    
}
