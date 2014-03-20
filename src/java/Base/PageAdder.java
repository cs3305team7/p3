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
    private String PATH = "C:/Users/as11.CS-DOMAIN/Downloads/p3-master/build/web/";
    private String TemplatePath="C:/Users/as11.CS-DOMAIN/Downloads/p3-master/build/web/";
    public PageAdder(User user, String name)throws Exception{
        this.user=user;
        this.pagename=name;
        PATH+=user.getCharityName()+"/";
        String templ=getTemplate();
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
        try{
           rs= dbman.query("SELECT t_ID,c_ID FROM website WHERE w_ID = (SELECT"
                    + "w_ID FROM charity_sites "
                    + "WHERE url ='"+user.getCharityName()+"'"+")");
           
           if(rs!=null && rs.first() && rs.isLast()){
               if(rs.getInt("t_ID")==0){
                   
               }else if(rs.getInt("t_ID")==1){
                   retval="template/template.jsp";
               }else if(rs.getInt("t_ID")==2){
                   retval="template/template2.jsp";
               }
               
            }
        }catch(Exception e){
            
        }
        
        return retval;
    }
    public boolean addPage(){
        File f= new File(PATH+pagename+".jsp"); 
        
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
