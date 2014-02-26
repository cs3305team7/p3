/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */


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
    public Page(String website, String page){
        this.website=website;
        this.page=page;
        builder= new PageBuilder(getTemplate());
        ContentMap = createPage();
        
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
    *  method to return the page html template as a string
    *
    */
    private String getTemplate(){
        String templateURI=getTemplateLocation();
        //find the page in the file system
        return "";
    }

    //////TODO
    /*
    *query the database for the location uri of this pages template
    * 
    */
    private String getTemplateLocation(){
        DBManager db=new DBManager();
        ResultSet rs=null;
        try{
           rs= db.query("");
        }catch(Exception e){
            e.printStackTrace();
            //error message page content not found
        }
        if(rs!=null){
            //process resultset
        }
           return "";
    }
}
