/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */

package Base;
import java.io.File;
import java.io.IOException;
import java.io.PrintWriter;
import java.nio.file.Files;
import java.sql.ResultSet;
import java.sql.SQLException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

/**
 *
 * @author as11
 */
@WebServlet(name = "RegServlet", urlPatterns = {"/RegServlet"})
public class RegServlet extends HttpServlet {
    private String PATH ="Z:/p3-masterV3/build/web/";//"C:/Users/Thomas/Documents/NetBeansProjects/Project1/Project1/build/web/";
    /**
     * Processes requests for both HTTP
     * <code>GET</code> and
     * <code>POST</code> methods.
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
            /* TODO output your page here. You may use following sample code. */
            out.println("<html>");
            out.println("<head>");
            out.println("<title>Servlet RegServlet</title>");            
            out.println("</head>");
            out.println("<body>");
            out.println("<h1>Servlet RegServlet at " + request.getContextPath() + "</h1>");
            out.println("</body>");
            out.println("</html>");
        } finally {   
            out.close();
        }
    }

    // <editor-fold defaultstate="collapsed" desc="HttpServlet methods. Click on the + sign on the left to edit the code.">
    /**
     * Handles the HTTP
     * <code>GET</code> method.
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
     * Handles the HTTP
     * <code>POST</code> method.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        
       
        String hidden_parameter = request.getParameter("pagename");   
        //processRequest(request, response);
        HttpSession session = request.getSession(true);
        
        if(hidden_parameter.equals("register")){  
                
        //DBManager manager = new DBManager();
       
       String fname=request.getParameter("txtFName");
        String lname=request.getParameter("txtLName");
        String email=request.getParameter("txtEmail");
        String password=request.getParameter("txtPassword");
       String charityName=request.getParameter("txtCharityName");
       String UserName=request.getParameter("txtUName");
       System.out.println("FNAME: "+fname+"\n LNAME: "+lname+"\n EMAIL: "+email+
               "\n PASSWORD: "+password+"\n CHARITYNAME: "+ charityName+
               "\n USERNAME: "+UserName);
        if(UserName!=null && fname!=null && lname!=null && email!=null &&
                password!=null && charityName!=null){
            //checkChartityName is Free
            //check email is free
            // check usename is free
            boolean allClear=false;
            DBManager dbman = new DBManager();
            try{
              ResultSet rs =  dbman.query("select * from "
                      + "website_admin where username='"+UserName+"'"+
                      "and email = "+"'"+email+"'");
              ResultSet rs2=dbman.query("select * "
                      + "from charity_sites where url="+"'"+charityName+"'");
                      if(!rs.first() && !rs2.first()){
                          allClear=true;
                          
                      } else {
                          session.setAttribute("Error",
                        XMLParser.ErrorRetriever.Error.CHARITY_ALREADY_EXISTS);
                response.sendRedirect("register.jsp");
                      }
            }catch(Exception e){
                session.setAttribute("Error",
                        XMLParser.ErrorRetriever.Error.DATABASE_CONNECTION);
                e.printStackTrace();
                response.sendRedirect("register.jsp");
            }
            //ASSUME PREV IS TRUE
           if(allClear){   
                    File f= new File(PATH+charityName); 
                    
                    try{

                        if( f.mkdir()){
                            User user =new User(UserName,fname, lname,
                            email, password,charityName);
                            session.setAttribute("user", user);
                            //SET SESSION VARS
                            Register.addWebsite(charityName);
                            Register.addWebAdmin(user);
                            //add user to id center
                            //get his global id
                            //add the charity site
                            //get the site w_id
                            //add user to website_admin
                            //add website to website, with deafult for template values
                            
                            int worked=dbman.update("INSERT INTO id_center(name, guest, "
                                    + "registered_user, administrator, website_admin)"
                                    + " values ( "+"'"+user.getUname()+"'"+", 0, 0, 0, 1)");
                            if(worked!=1){
                            System.out.println("FIRST UPDATE ERROR");
                            session.setAttribute("Error",
                            XMLParser.ErrorRetriever.Error.WEBDIR_NOT_MADE);
                            response.sendRedirect("register.jsp");
                            }
                            
                            ResultSet rs = dbman.query("SELECT g_ID "
                                    + "FROM id_center "
                                    + "WHERE name ="
                                    + ""+"'"+ user.getUname()+"'");
                            
                            if(!rs.first()){
                                System.out.println("SECOND UPDATE ERROR");
                                 session.setAttribute("Error",
                                    XMLParser.ErrorRetriever.Error.WEBDIR_NOT_MADE);
                                    response.sendRedirect("register.jsp");
                                 }
                                
                            int g_ID=rs.getInt("g_ID");
                                 worked=dbman.update("INSERT INTO charity_sites (url)"
                                         +" VALUES ( "+"'"+user.getCharityName()+"'"+")"
                                         + "");
                                 if(worked!=1){
                                     System.out.println("THIRD UPDATE ERROR");
                                     session.setAttribute("Error",
                                    XMLParser.ErrorRetriever.Error.WEBDIR_NOT_MADE);
                                    response.sendRedirect("register.jsp");
                                   }
                                 
                                 rs=dbman.query("SELECT w_ID "
                                         + "FROM charity_sites "
                                         + "WHERE url ="
                                         +" '"+user.getCharityName()+"' ");
                                 if(!rs.first()){
                                     System.out.println("FOURTH UPDATE ERROR");
                                 session.setAttribute("Error",
                                    XMLParser.ErrorRetriever.Error.WEBDIR_NOT_MADE);
                                    response.sendRedirect("register.jsp");
                                 }
                                 
                                 int w_ID=rs.getInt("w_ID");
                                 worked=dbman.update("INSERT INTO website_admin"
                                         + " (g_ID, w_ID, username, firstname, "
                                         + "lastname, password, email) "
                                         + "values ("+g_ID+","+ w_ID+""
                                         + ","+"'"+user.getUname()+"'"+","
                                         +"'"+user.getFname()+"'"+""
                                         + ","+"'"+user.getLname()+"'"+""
                                         + ","+"'"+user.getPassword()+"'"+","+""
                                         +"'"+user.getEmail()+"'"+ ")");
                                 if(worked!=1){
                                     System.out.println("FIFTH UPDATE ERROR");
                                     session.setAttribute("Error",
                                    XMLParser.ErrorRetriever.Error.WEBDIR_NOT_MADE);
                                    response.sendRedirect("register.jsp");
                                   }
                                 
                                 worked=dbman.update("INSERT INTO "
                                         + "website (w_ID, g_ID,t_ID,c_ID)"
                                         + "VALUES("+w_ID+","+g_ID+",0,0)");
                                 if(worked!=1){
                                     System.out.println("SIXTH UPDATE ERROR");
                                     session.setAttribute("Error",
                                    XMLParser.ErrorRetriever.Error.WEBDIR_NOT_MADE);
                                    response.sendRedirect("register.jsp");
                                   }
                                 worked=dbman.update("INSERT INTO "
                                         + "webpages (w_ID)"
                                         + "VALUES("+w_ID+")");
                                 
                                 if(worked!=1){
                                     System.out.println("SIXTH UPDATE ERROR");
                                     session.setAttribute("Error",
                                    XMLParser.ErrorRetriever.Error.WEBDIR_NOT_MADE);
                                    response.sendRedirect("register.jsp");
                                   }
                            /*
                             INSERT INTO id_center(username, guest, registered_user, administrator, website_admin) values ( username, 0, 0, 0, 1);
                             SELECT g_ID FROM id_center WHERE username = username;
                             INSERT INTO website_admin (g_ID, w_ID, username, firstname, lastname, password, email) values (g_ID, w_ID, username, fname,
                             */
                            /*INSERT INTO charity_sites (url) VALUES ( "url" )); 
                            SELECT w_ID FROM charity_sites;
                            INSERT INTO website (w_ID, g_ID);*/
                            
                           response.sendRedirect("welcome.jsp");
                        }
                       else{
                            session.setAttribute("Error",
                            XMLParser.ErrorRetriever.Error.WEBDIR_NOT_MADE);
                            System.out.println("WHAT NOW :O");
                            response.sendRedirect("register.jsp");
                        }
                    }catch(Exception e){
                        //possibly user not added if so must delete just made directory
                        e.printStackTrace();
                        session.setAttribute("Error",
                            XMLParser.ErrorRetriever.Error.WEBDIR_NOT_MADE);
                        response.sendRedirect("register.jsp");
                    }

                User sets =  new User();

                sets.setFname(fname);
                sets.setLname(lname);
                sets.setEmail(email);
                sets.setPassword(password);
                
                }
           else{
              response.sendRedirect("register.jsp");
           }
        }
        }else if (hidden_parameter.equals("login")) {
                String myemail = request.getParameter("txtEmail");
                String mypassword = request.getParameter("txtPassword");
                DBManager dbman = new DBManager();
                User user;
                try{
                     ResultSet rs = dbman.query("SELECT * FROM website_admin WHERE "+
                             "email = "+"'"+myemail+"'");
                     if(!rs.first() || !rs.isLast()){
                          session.setAttribute("Error",
                        XMLParser.ErrorRetriever.Error.DATABASE_CONNECTION);
                        response.sendRedirect("login.jsp");
                     } 
                     else{
                         if(rs.getString("password").equals(mypassword)){
                            ResultSet rs1 = dbman.query("SELECT url FROM"+
                                    " charity_sites WHERE w_ID = "+"'"+
                                    rs.getInt("w_ID")+"'");
                            if(rs1.first() && rs1.isLast()){
                                user=new User(rs.getString("username"),
                                rs.getString("firstname"),rs.getString("lastname"),
                                rs.getString("email"),rs.getString("password"),
                                        rs1.getString("url"));
                                session.setAttribute("user", user);
                                response.sendRedirect("dashboard.jsp");//tony is working on thsi file name might be different
                            }
                         }
                     }
                }catch(SQLException e){
                    session.setAttribute("Error",
                        XMLParser.ErrorRetriever.Error.DATABASE_CONNECTION);
                response.sendRedirect("login.jsp");
                }
               
      
        }
    //end of log in if statement
    
    } //end of doPost
}//end of main Class
