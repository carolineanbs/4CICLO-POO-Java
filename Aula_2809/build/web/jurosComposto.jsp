<%-- 
    Document   : index
    Created on : 28 de mar. de 2022, 13:50:55
    Author     : Fatec
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<!-- CSS only -->
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3" crossorigin="anonymous">
<!-- JavaScript Bundle with Popper -->
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js" integrity="sha384-ka7Sk0Gln4gmtz2MlQnikT1wXgYsOg+OMhuP+IlRH9sENBO0LRn5q+8nbTov4+1p" crossorigin="anonymous"></script> 
  
    <head>
        <meta name="viewport" content="width=device-width, initial-scale=1"> 
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Aula 28 de Março</title>
    </head>
    <body>
        <%@include file="WEB-INF/jspf/navbar.jspf" %>
        <div class="container-fluid">
            <h1>Juros Composto</h1>
            <%@include file="WEB-INF/jspf/juros.jspf" %>
            <%
            String errorMessage=null;
            boolean hasParameters=request.getParameter("juros")!=null;
            double n1=0, n2=0, soma=0;
    if(hasParameters){
    try{
      n1=Double.parseDouble(request.getParameter("n1"));
      n2=Double.parseDouble(request.getParameter("n2"));
      soma=n1+n2;
    }catch(Exception ex){
    errorMessage="Erro ao tentar ler parametros";}}
    
%>
               
            <%@include file="WEB-INF/jspf/tabela.jspf" %>
             
        </div>
    
        
    </body>
</html>
