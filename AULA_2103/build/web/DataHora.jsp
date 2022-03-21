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
        
        <h1>TAREFA</h1>
        <hr>
        <%
            out.println("<h2> A data/hora atual são: </h2>");
            int dia = Integer.parseInt((new SimpleDateFormat("dd")).format(new Date()));
            int mes = Integer.parseInt((new SimpleDateFormat("M")).format(new Date()));
            int ano = Integer.parseInt((new SimpleDateFormat("yyyy")).format(new Date()));
                
            Format f = new SimpleDateFormat("HH:mm:ss");
            String strResult = f.format(new Date());
            switch(mes){
                case 1: 
                    out.println("Hoje é " + dia + " de Janeiro de "+ ano);
                    out.println(" " + strResult);
                case 2: 
                    out.println("Hoje é " + dia + " de Fevereiro de "+ ano);
                    out.println(" "+ strResult);
                break;    
                case 3: 
                    out.println("Hoje é " + dia + " de Março de "+ ano);
                    out.println(" "+ strResult);
                break;    
                case 4: 
                    out.println("Hoje é " + dia + " de Abril de "+ ano);
                break;    
                case 5: 
                    out.println("Hoje é " + dia + " de Maio de "+ ano);
                break;    
                case 6: 
                    out.println("Hoje é " + dia + " de Junho de "+ ano);
                break;    
                case 7: 
                    out.println("Hoje é " + dia + " de Julho de "+ ano);
                break;    
                case 8: 
                    out.println("Hoje é " + dia + " de Agosto de "+ ano);
                break;    
                case 9: 
                    out.println("Hoje é " + dia + " de Setembro de "+ ano);
                break;    
                case 10: 
                    out.println("Hoje é " + dia + " de Outubro de "+ ano);
                break;    
                case 11: 
                    out.println("Hoje é " + dia + " de Novebbro de "+ ano);
                break;    
                case 12: 
                    out.println("Hoje é " + dia + " de Dezembro de "+ ano);
                break;  
            }
            %>
            <h6><a href="index.jsp">Voltar</a></h6>
            </body>
</html>
