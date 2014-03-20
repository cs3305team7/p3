<%-- 
    Document   : makePage
    Created on : 20-Mar-2014, 11:55:11
    Author     : Thomas
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<% 
    HttpSession sess = request.getSession(false); 
    if(sess!=null){
        Base.User user =(Base.User)sess.getAttribute("user");
        String pageName= (String)sess.getAttribute("NewPageName");
        sess.removeAttribute("NewPageName");
        Base.PageAdder pageAdder=null;
        if(pageName !=null && user != null){
            
        
            try{
                 pageAdder = new Base.PageAdder(user,pageName);
            }catch(Exception e){
               
                System.out.println("GET AWAY!");
                 response.sendRedirect("themeSelection.jsp");
            }
        }
        if(pageAdder!=null){
            if(pageAdder.addPage()){
                response.sendRedirect("editHeader.jsp");
            }
            else{
                response.sendRedirect("themeSelection.jsp");
                System.out.println("GET AWAY 2!");
            }
        }else{
            
            response.sendRedirect("themeSelection.jsp");
            System.out.println((pageName==null? "null":pageName.toString())+" pagename "+ (user==null?"null":user.toString())+" user");
            System.out.println("GET AWAY 3!");
        }
    }
%>
