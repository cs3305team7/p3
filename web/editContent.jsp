<%-- 
    Document   : editContent
    Created on : 18-Mar-2014, 12:18:07
    Author     : Thomas
--%>


<%@page import="java.io.File"%>
<%@page import="org.jsoup.nodes.Element"%>
<%@page import="org.jsoup.nodes.Document"%>
<%@page import="org.jsoup.Jsoup"%>
<% 
    HttpSession sess = request.getSession(false);

    if(sess !=null){
        User user=(User)sess.getAttribute("user");
        String PAGE = request.getParameter("page");
        //get content either nav or text
        // header or footer
        // images maybe

            //if nav
            //read in nav elements
            //for each element 
            // make element string
            // create html string
            Page mypage = new Page(user.getCharityName(),PAGE);
            //querydatabase for content
            String content = mypage.getContent();
            Document doc = Jsoup.parseBodyFragment(content);
            Element nav=doc.getElementById("EDITABLENAV");
            for(int i=1;i<=10;i++){
          /*
                String html = "";//get this from input
            
                nav.append(html); //may need to insert into doc
           */ //to be implemented
            }
            Element ul = doc.select("ul").first(); // <div></div>
            ul.append(html); // <div><p>lorem ipsum</p></div>
            //if header footer text
            String html1 = "";//get this from input.
            Document doc1 = Jsoup.parseBodyFragment(html);
            Element body1 = doc1.body();
    }
%>
