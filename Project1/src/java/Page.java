/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */


import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;

/**
 *
 * @author Thomas Carr
 */
public class Page {
    
    private String website,page;
    private PageBuilder builder;

    public Page(String website, String page){
        this.website=website;
        this.page=page;
        builder= new PageBuilder(getTemplate());
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
