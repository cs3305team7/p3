/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

package Base;

import java.io.BufferedReader;
import java.io.BufferedWriter;
import java.io.File;
import java.io.FileReader;
import java.io.FileWriter;
import java.io.IOException;
import java.sql.ResultSet;

/**
 *
 * @author Thomas
 */
public class PageAdder {
    private User user;
    private String pagename;
    private String PATH = "Z:/p3-masterV3/build/web/";
    private String TemplatePath="Z:/p3-masterV3/build/web/";
    
   
    public PageAdder(User user, String name)throws Exception{
        this.user=user;
        this.pagename=name;
        PATH+=user.getCharityName()+"/";
        String templ=getTemplate();
        String lol="lol";
        if(templ!=null){
            TemplatePath+=templ;
        }
        else{
            throw new Exception();
        }
    }
    private String getTemplate(){
        DBManager dbman = new DBManager();
        ResultSet rs;
        String retval=null;
        System.out.println("IN GET TEMPLATE");
        try{
           rs= dbman.query("SELECT t_ID,c_ID FROM website WHERE w_ID = (SELECT"
                    + " w_ID FROM charity_sites "
                    + "WHERE url = '"+user.getCharityName()+"'"+")");
            System.out.println("QUERY EXECUTED");
           if(rs!=null && rs.first() && rs.isLast()){
               if(rs.getInt("t_ID")==0){
                   retval="template/template.jsp";
                   File file = new File(TemplatePath+"template/template.html");
                   String File_content=this.ReadInFile(file);
                   dbman.update("UPDATE registered_users SET"
                           + " textual_content= '"+File_content+"' Where "
                           + " w_ID = (SELECT w_ID From charity_sites WHERE "
                           + " url = '"+user.getCharityName()+"' ) and p_ID =( "
                           + "SELECT p_ID FROM webpages WHERE pagename = '"+pagename+"')"
                           + " and w_ID = (SELECT w_ID From charity_sites WHERE "
                           + " url= '"+user.getCharityName()+"')");
               }else if(rs.getInt("t_ID")==1){
                   File file = new File(TemplatePath+"template/template.html");
                   String File_content=this.ReadInFile(file);
                   dbman.update("UPDATE registered_users SET"
                           + " textual_content= '"+File_content+"' Where "
                           + " w_ID = (SELECT w_ID From charity_sites WHERE "
                           + " url = '"+user.getCharityName()+"' ) and p_ID =( "
                           + "SELECT p_ID FROM webpages WHERE pagename = '"+pagename+"')"
                           + " and w_ID = (SELECT w_ID From charity_sites WHERE "
                           + " url= '"+user.getCharityName()+"')");
                   System.out.println("TEMPLATE ID WAS 1");
                   retval="template/template.jsp";
               }else if(rs.getInt("t_ID")==2){
                   File file = new File(TemplatePath+"template/template2.html");
                   String File_content=this.ReadInFile(file);
                   dbman.update("UPDATE registered_users SET"
                           + " textual_content= '"+File_content+"' Where "
                           + " w_ID = (SELECT w_ID From charity_sites WHERE "
                           + " url = '"+user.getCharityName()+"' ) and p_ID =( "
                           + "SELECT p_ID FROM webpages WHERE pagename = '"+pagename+"')"
                           + " and w_ID = (SELECT w_ID From charity_sites WHERE "
                           + " url= '"+user.getCharityName()+"')");
                   retval="template/template2.jsp";
               }
               
            }
        }catch(Exception e){
            e.printStackTrace();
            System.out.println("QUERY EXCEPTION");
        }
        
        return retval;
    }
   
    public boolean addPage(){
        File f= new File(PATH+pagename+".jsp"); 
        if(f.canWrite()){
            System.out.println("I HAVE PRIVELEGE");
        }
        else{
            System.out.println("I DON'T HAVE PRIVELEGE");
        }
        File Template = new File(TemplatePath);
        if(Template.exists()){
            String Text = ReadInFile(Template);
        if(Text!=null){
            try{
                if(f.createNewFile()){
                    FileWriter fw = new FileWriter(f.getAbsoluteFile());
                            BufferedWriter bw = new BufferedWriter(fw);
                            bw.write(Text);
                            bw.close();
                }
            }catch(Exception e){

                return false;
            }
        }
        return true;
        }
        return false;
    }
    
    private String ReadInFile(File f){
        BufferedReader br = null;
        String values="";
            try {
                String sCurrentLine;
                br = new BufferedReader(new FileReader(f.getAbsoluteFile()));
                while ((sCurrentLine = br.readLine()) != null) {
				values+=sCurrentLine;
			}
                } catch (IOException e) {
			e.printStackTrace();
		} finally {
			try {
				if (br != null)br.close();
			} catch (IOException ex) {
				ex.printStackTrace();
			}
		}
        return values.equals("")? "":values;
    }
}
