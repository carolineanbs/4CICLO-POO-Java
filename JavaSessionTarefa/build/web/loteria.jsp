<%-- 
    Document   : loteria
    Created on : 20 de abr de 2022, 10:58:49
    Author     : Caroline
--%>
<%@page import="java.util.Random"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Dicas para loteria</title>
    </head>
    <body>
        <%@include file="WEB-INF/jspf/header.jspf" %>  
          
        <br>
                  <%if(session.getAttribute("username")!=null){%>
                <div align="center"/>
                
  <img src="image/coins.png" class="rounded" alt="..." height="120" width="120">
                <h5 class="text-success"> Os números gerados para jogar na loteria são: </h5>
        
                <%  Random numeros = new Random();
        for(int y = 0;y<=5;++y)
        {
        int n = numeros.nextInt(61);
    
        out.print("<table border=>");
        out.print("<tr>");
        out.print(" <th>");

        out.print("<b>N°</b>: "+ n +"<br/>");

        out.print(" </th>");
        out.print("</tr>");
        out.print("</table>");
        }%>
                
                </div>
                <%}%>
            
                    
        </div>
    </body>
</html>
