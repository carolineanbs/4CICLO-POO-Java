<%-- 
    Document   : index
    Created on : 2 de mai. de 2022, 15:32:50
    Author     : Fatec
--%>

<%@page import="java.util.ArrayList"%>
<%@page import="demo.Disciplina"%>
<%@page import="java.util.Date"%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>

<%
 
  Disciplina poo = new Disciplina("ILP007", "Programação Orientada a Objeto", "JAVA,JSP,SERVLETS", "Segunda-Feira", "13:10");
  Disciplina meto = new Disciplina("TTG001", "Metodologia da Pesquisa Cientifica Tecnologica", "ABNT, Pesquisa Cientifica, Artigo Cientifico", "Segunda-Feira", "17:00");
  Disciplina banco =  new Disciplina("IBD002", "Bando de dados", "Modelo conceitual, lógico e físico. SQL Oracle", "Terça-Feira", "15:00");
  Disciplina so =  new Disciplina("ISO200", "Sistemas Operacionais II", "Linux, Open-Source, Android, Mac OSX", "Quarta-Feira", "15:00");
  Disciplina eng =  new Disciplina("IES300", "Engenharia de Software III ", "Arquitetura de Software", "Quinta-Feira", "15:00");
  Disciplina ingles =  new Disciplina("LIN400", "Inglês IV ", "Simple Past, Speaking, Job Apply", "Sexta-Feira", "13:10");
  Disciplina ling =  new Disciplina("ILP512", "Linguagem de Programação IV ", "PHP", "Sexta-Feira", "15:00");
  
    ArrayList<Disciplina> lista = new ArrayList<>();
    lista.add(poo); lista.add(meto); lista.add(banco); lista.add(so);
    lista.add(eng); lista.add(ingles); lista.add(ling);
%>


<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Tarefa</title>
    </head>
    <body>
        <h1>Caroline Andrade B. dos Santos</h1>
        
        <%Date agora = new Date();%>
        
        <div> 
            <% 
                out.print(agora);
            %>
        <hr/>
        </div>
        
        
                <br><br>        
        <div>
               
            <table border="1">
                <tr>
                    <th>Disciplina</th> 
                    <th>Sigla:</th>   
                    <th>Ementa:</th>  
                    <th>Dia da Semana:</th>  
                    <th>Horário:</th>  
                   
                </tr>
                <% for(Disciplina d: lista) {%>
                <tr> 
                    <td><%= (d.getNome()!=null) ? d.getNome(): "" %></td>
                    <td><%= (d.getSigla()!=null) ? d.getSigla(): "" %></td>
                   <td><%= (d.getEmenta()!=null) ? d.getEmenta(): "" %></td> 
                    <td><%= (d.getDiadsemana()!=null) ? d.getDiadsemana(): "" %></td> 
                    <td><%= (d.getHorario()!=null) ? d.getHorario(): "" %></td> 
                    
                  

                </tr>
                  <%}%>    
            </table>
            
            
        </div>
    </body>
</html>
