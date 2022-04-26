<%-- 
    Document   : index
    Created on : 25 de abr de 2022, 20:38:58
    Author     : carol
--%>


<%@page import = "demo.Horario" %>


<%
    Horario timedate = new Horario();
    Horario atual = new Horario();
    
    atual.setHour(22);
    atual.setMinutes(35);
    atual.setSeconds(10);
    
    Horario intervalo = new Horario();
%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>

    
<!DOCTYPE html>
<html>
    <!-- CSS only -->
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3" crossorigin="anonymous">
<!-- JavaScript Bundle with Popper -->
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js" integrity="sha384-ka7Sk0Gln4gmtz2MlQnikT1wXgYsOg+OMhuP+IlRH9sENBO0LRn5q+8nbTov4+1p" crossorigin="anonymous"></script>   
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Index</title>
    </head>
    <body>
       <div align="center"> 
           <h1><span class="badge bg-primary">Programação Orientada a Objeto</h1></span>
       </div>
        <hr>
        <div><h3><b>Caroline Andrade Bispo dos Santos</b>  </h3>
        
       <div><h3><b>RA:</b> 1290482022029</h3>
        <a href="https://github.com/carolineanbs" class="btn btn-outline-primary" role="button" aria-pressed="true">Meu GitHub</a>
        </div>
        </div>
        <br>
        <!-- comment -->
       
        <div align="center">

       
    <ul class="list-group">
  <li class="list-group-item"><b>Horário atual:</b> <%= atual.getHorario()%></li>
  <li class="list-group-item"><b>Horário do intervalo [FATEC]:</b> <%= intervalo.getHorario() %></li>

    </ul>
        </div>
    </body>
</html>
