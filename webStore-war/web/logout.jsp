<%-- 
    Document   : logout
    Created on : 7 oct. 2015, 15:18:47
    Author     : sommerard
--%>

<%@page import="users.Users"%>

<%
   session.removeAttribute("userPseudo");
   session.removeAttribute("userPermission");
   session.removeAttribute("booksCommand");
   
   response.setStatus(response.SC_MOVED_TEMPORARILY);
   response.setHeader("Location", "/webStore-war/"); 
%>