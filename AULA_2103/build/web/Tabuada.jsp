<%-- 
    Document   : index
    Created on : 21 de mar. de 2022, 13:40:05
    Author     : Fatec
--%>

<%@page import="java.text.Format"%>
<%@page import="java.text.FieldPosition"%>
<%@page import="java.text.SimpleDateFormat"%>
<%@page import="java.util.Date"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%
    boolean hasParameter = request.getParameter("tabuada") !=null;
    String errorMessage= null;
    int num=0, resultado =0;
    try{
        if(request.getParameter("tabuada") !=null){
            String p1 = request.getParameter("num");
            num = Integer.parseInt(p1);
        }
    }catch(Exception err) {
        errorMessage = err.getMessage();
    }

%>
<!DOCTYPE html>
<html>
    
<!-- CSS only -->
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3" crossorigin="anonymous">
<!-- JavaScript Bundle with Popper -->
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js" integrity="sha384-ka7Sk0Gln4gmtz2MlQnikT1wXgYsOg+OMhuP+IlRH9sENBO0LRn5q+8nbTov4+1p" crossorigin="anonymous"></script> 
    
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JAVAEE JSP - Aula 21 de Março</title>
    </head>
    <body>
          <form action="Tabuada.jsp">
            <input type="number" name="num" value="<%= num %>"/>
            <input type="submit" name="tabuada"  value="tabuada"/>
        </form><br>
    <%
     if(errorMessage!=null) {%>
     <h4 style="color:red"><%= errorMessage %></h4>
     <%}else if(hasParameter){%>
     <hr/>
     <table>
         <%for(int i=1; i<=10; i++) {%>
         <tr>   
             <td> <%= num %></td>
             <td>x</td>
              <td> <%= i %></td>
              <td> = </td>
               <td> <%= i*num %></td>
         </tr>
         <%}%>
         </table>
     <%}%>
     <h6><a href="index.jsp">Voltar</a></h6>
    </body>
</html>
