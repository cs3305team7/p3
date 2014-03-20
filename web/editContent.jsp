<%-- 
    Document   : editContent
    Created on : 18-Mar-2014, 12:18:07
    Author     : Thomas
--%>


<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.SQLException"%>
<%@page import="org.jsoup.select.Elements"%>
<%@page import="java.io.File"%>
<%@page import="org.jsoup.nodes.Element"%>
<%@page import="org.jsoup.nodes.Document"%>
<%@page import="org.jsoup.Jsoup"%>
<% 
    HttpSession sess = request.getSession(false);

    if(sess !=null){
        Base.User user=(Base.User)sess.getAttribute("user");
        String PAGE = request.getParameter("page");
        Base.Page mypage = new Base.Page(user.getCharityName(),PAGE);
        String content = mypage.getContent();
        Document doc = Jsoup.parseBodyFragment(content);
        //get content either nav or text
        // header or footer
        // images maybe

            if(session.getAttribute("Nav")!=null){//if nav
            //read in nav elements
            //for each element 
            // make element string
            // create html string
               String[] linknames= request.getParameterValues("name");
               String[] linkvals=request.getParameterValues("url");
            
            //querydatabase for content
            Element nav=doc.getElementById("EDITABLENAV");
            Elements uls=nav.getElementsByTag("ul");
           Element ul = uls.get(0);
            for(int i=0;i<linknames.length && i<linkvals.length;i++){
          
                String html = "<li><a href='"+ linkvals[i]+"'> "+linknames[i]+"</a></li>";//get this from input
                
                ul.append(html); //may need to insert into doc
            //to be implemented
            }   
            String htmlToSave = doc.html();
                Base.DBManager dbman = new Base.DBManager();
                try{
                    ResultSet rs=dbman.query("SELECT charity_sites.w_ID , webpages.p__ID FROM charity_sites,webpages"
                            + " WHERE url='"+user.getCharityName()+"' and "
                            + "pagename='"+PAGE+"' and webpages.w_ID=(SELECT w_ID"
                            + "FROM charity_sites where url='"+user.getCharityName()+"')");
                    if(!(rs.first() && rs.isLast())){
                        response.sendRedirect("");
                    }
                     String query = "UPDATE regular_content SET textual_content = '"
                        + htmlToSave+"' WHERE w_ID = "+rs.getInt("w_ID")+" and"
                             + "p_ID = "+rs.getInt("p_ID");
                     if(!(rs.first() && rs.isLast())){
                         response.sendRedirect("");
                     }
                    
                }catch(SQLException e){
                    
                }
                //save it back to the db
                
               
            }
            /*String html1 = "";//get this from input.
            Document doc1 = Jsoup.parseBodyFragment(html);
            Element body1 = doc1.body();*/
    }
%>
