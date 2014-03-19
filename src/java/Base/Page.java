/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

package Base;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.HashMap;
/**
 *
 * @author Thomas Carr
 */
public class Page {
    
    private String website,page;
    private PageBuilder builder;
    private String pageContent;
    private HashMap<String,String> ContentMap;
    private String styleTemplate;
    
   
    public static enum Template{
        TEMPLATE1,TEMPLATE2;
        
        public static ArrayList<String> getTemplateHeaders(Template t){
            ArrayList<String> retList = new ArrayList<>();
            switch(t){
                case TEMPLATE1:
                    retList.add("EDITABLENAV");
                    retList.add("PICS");
                    retList.add("CONTENT");
                    break;
                case TEMPLATE2:
                    retList.add("EDITABLENAV");
                    retList.add("PICS");
                    retList.add("CONTENT");
                    retList.add("CONTENT2");
                default:
                    break;
            }
            return retList;
        }
    }
    public Page(String website, String page){
        this.website=website;
        this.page=page;
        builder= new PageBuilder(getTemplate());
        ContentMap = createPage();
        
    }
    
    public String getContent(){
        return builder.getContentstr();
    }
    
    private HashMap<String,String> createPage(){
       return builder.build();
    }
    public String Get(String contentID){
        return ContentMap.get(contentID);
    }
    public String getStyles(){
        
        return ContentMap.get("Styles");
    }
    //////TODO
    /*
    *  method to return the page html template enum identifier
    *
    */
    private Template getTemplate(){
        //add qeury to retrieve actual template for site
        Template t = getTemplate(/* query string value here*/);
        //find the page in the file system
        return t;
    }
    
    private Template getTemplate(String template){
        
        switch(template){
            case "t1":
                    return Template.TEMPLATE1;
            default: return null;
        }
    }

}
