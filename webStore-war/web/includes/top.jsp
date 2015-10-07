<%-- 
    Document   : index
    Created on : 15 avr. 2013, 15:36:23
    Author     : Julien
--%>

<!DOCTYPE html> 
<html>
    <head> 
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link rel="stylesheet" href="gumby/css/gumby.css" />
        <link rel="stylesheet" href="gumby/css/style.css" />
        <script type="text/javascript" src="gumby/js/libs/modernizr-2.6.2.min.js"></script>
        <script type="text/javascript" src="js/booksPackage.js"></script>
        <title>WebStore J2EE</title>
     </head>
     <body>
        <div id="container" class="container">
           <div id="header" class="row">
                <h6 class="centered sixteen colums">WebStore J2EE
                <%
                String pseudo = "";
                try {
                    pseudo = (String) session.getAttribute("userPseudo");
                    if(!pseudo.isEmpty())
                        out.println(" " + pseudo );
                } catch (NullPointerException e) {
                    pseudo = "";
                }
                %>
                
                </h6>
            </div>
            <hr/>
            <%  String nbBook ="";
                try {
                   if(!pseudo.isEmpty()) {
                        String[] books = (String[]) session.getAttribute("booksCommand");
                        nbBook+="("+books.length+")";
                   }
                
                } catch (NullPointerException e) {
                       nbBook ="";
                }
                out.println( "<p class=\"row center_text\"><i class=\"icon-home\"></i><a href=\"index.jsp\">Home</a> - <i class=\"icon-tag\"></i><a href=\"addBookForm.jsp\">Add a new Book</a> - <i class=\"icon-basket\"></i><a href=\"listBooks.jsp\">Buy Books</a> - <i class=\"icon-attach\"></i><a href=\"basket.jsp\">Basket " + nbBook + "</a> - <i class=\"icon-alert\"></i><a href=\"commands.jsp\">Commands</a>  - <i class=\"icon-floppy\"></i><a href=\"register.jsp\">Register</a> / <a href=\"login.jsp\">Login</a> / <a href=\"logout.jsp\">Logout</a></p>");
                %>
           
            <hr/>