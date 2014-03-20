<%-- 
    Document   : editContent
    Created on : 18-Mar-2014, 12:18:07
    Author     : Thomas
--%>


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
        //get content either nav or text
        // header or footer
        // images maybe

            if(session.getAttribute("Nav")!=null){//if nav
            //read in nav elements
            //for each element 
            // make element string
            // create html string
               String[] linkelts= (String[])session.getAttribute("Nav") ;
            Base.Page mypage = new Base.Page(user.getCharityName(),PAGE);
            //querydatabase for content
            String content = mypage.getContent();
            Document doc = Jsoup.parseBodyFragment(content);
            Element nav=doc.getElementById("EDITABLENAV");
            Elements uls=nav.getElementsByTag("ul");
           Element ul = uls.get(1);
            for(int i=0;i<linkelts.length;i++){
          
                String html = "<li><a href='"+ linkelts[i++]+"'> "+linkelts[i]+"</a></li>";//get this from input
                
                ul.append(html); //may need to insert into doc
            //to be implemented
            }
            //now attach the ul back to the doc somehow
            ul = doc.select("ul").first(); // <div></div>
            ul.append(html); // <div><p>lorem ipsum</p></div>
            //if header footer text
            }
            String html1 = "";//get this from input.
            Document doc1 = Jsoup.parseBodyFragment(html);
            Element body1 = doc1.body();
    }
%>
