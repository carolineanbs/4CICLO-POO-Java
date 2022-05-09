<%-- 
    Document   : index
    Created on : 9 de mai. de 2022, 14:32:50
    Author     : rlarg
--%>
<%@page import="model.Cliente"%>
<%@page import="java.util.ArrayList"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<%
    Exception requestEx = null;
    ArrayList<Cliente> list = new ArrayList<>();
    int count = 0;
    try{
        count = Cliente.getCount();
        list = Cliente.getList();
    }catch(Exception e){
        requestEx = e;
    }
%>
<html>
<!-- CSS only -->
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3" crossorigin="anonymous">
<!-- JavaScript Bundle with Popper -->
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js" integrity="sha384-ka7Sk0Gln4gmtz2MlQnikT1wXgYsOg+OMhuP+IlRH9sENBO0LRn5q+8nbTov4+1p" crossorigin="anonymous"></script>   
    <head>
        <meta name="viewport" content="width=device-width, initial-scale=1"> 
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Caroline Santos App</title>
    </head>
    <body>
         <nav class="navbar navbar-expand-lg navbar-dark bg-dark">
            
  <div class="container-fluid">
    <a class="navbar-brand">App</a>
    <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
      <span class="navbar-toggler-icon"></span>
    </button>
    <div class="collapse navbar-collapse" id="navbarSupportedContent">
      <ul class="navbar-nav me-auto mb-2 mb-lg-0">
        <li class="nav-item">
          <a class="nav-link active" aria-current="page" href="index.jsp">Index</a>
        </li>

      </ul>
      
          
  </div>
</nav> 
        
        <div align="center" >
            
            
           
           <h5 class="display-8"> Caroline Andrade Bispo dos Santos</h5>
           <h5 class="display-8"><b>RA</b>: 1290482022029</h5><br>
            <h5 class="display-8"> Rodrigo de Alencar Xavier</h5>
            <h5 class="display-8"><b>RA</b>: 1290481922044</h5>
            
            
            <a href="costumer.jsp" class="btn btn-outline-success" role="button" aria-pressed="true">Clientes(<%= count %> registros)</a> 
            <a href="employee.jsp" class="btn btn-outline-success" role="button" aria-pressed="true">Funcionários(<%= count %> registros)</a> 
            
        </div>  
        
        
        <!<!-- comment -->


        
        

        </table>
    </body>
</html>
