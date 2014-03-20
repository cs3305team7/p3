/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

package Base;

import java.io.File;

/**
 *
 * @author Thomas
 */
public class PageAdder {
    private User user;
    private String pagename;
    private String PATH = "C:/Users/as11.CS-DOMAIN/Downloads/p3-master/build/web/";
    
    public PageAdder(User user, String name){
        this.user=user;
        this.pagename=name;
        PATH+=user.getCharityName()+"/";
    }
    
    public boolean addPage(){
        File f= new File(PATH+pagename); 
        
        try{
            if(f.createNewFile()){
                
            }
        }catch(Exception e){
            
        }
        return true;
    }
}
