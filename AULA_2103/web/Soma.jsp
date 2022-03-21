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
    boolean hasParameter = request.getParameter("soma") !=null;
    String errorMessage= null;
    double num1=0, num2=0, soma=0;
    try{
        if(request.getParameter("soma") !=null){
            String p1 = request.getParameter("num1");
            num1 = Double.parseDouble(p1);
            String p2 = request.getParameter("num2");
            num2 = Double.parseDouble(p2);
            soma = num1+num2;
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
    <%
     if(errorMessage!=null) {%>
     <h4 style="color:red"><%= errorMessage %></h4>
     <%}else if(hasParameter){%>
     <h4><%= num1 %> + <%= num2 %> = <u><%= soma %></u></h4>
     <hr/>
     <%}%>
                  
         <form action="Soma.jsp">
            <input type="number" name="num1" value="<%= num1 %>"/>+
            <input type="number" name="num2" value="<%= num2 %>"/>
            <input type="submit" name="soma"  value="="/>
        </form><br><br>
    
    <h6><a href="index.jsp">Voltar</a></h6>
    </body>
</html>
