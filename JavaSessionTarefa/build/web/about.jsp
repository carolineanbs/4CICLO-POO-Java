<%-- 
    Document   : about
    Created on : 20 de abr de 2022, 10:58:49
    Author     : Caroline
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>About Me</title>
    </head>
    <body>
        <%@include file="WEB-INF/jspf/header.jspf" %>
        <%if(session.getAttribute("username")!=null){%>
        <div align="center" > 
        
  <img src="image/download20210203094230.png" class="rounded-circle" alt="..." height="120" width="120">

        
           <h5 class="display-8"> Caroline Andrade Bispo dos Santos</h5>
            <h5 class="display-8"><b>RA</b>: 1290482022029</h5>
            
            
            <a href="https://github.com/carolineanbs" class="btn btn-outline-success" role="button" aria-pressed="true">Meu GitHub</a>
          
        <%}%>
        </div>
    </body>
</html>
