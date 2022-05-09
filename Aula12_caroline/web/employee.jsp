<%-- 
    Document   : costumer
    Created on : 9 de mai. de 2022, 16:20:41
    Author     : Fatec
--%>

<%@page import="model.Funcionario"%>
<%@page import="java.util.ArrayList"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<%
    Exception requestEx = null;
    ArrayList<Funcionario> list = new ArrayList<>();
    int count = 0;
    try{
        count = Funcionario.getCount();
        list = Funcionario.getList();
    }catch(Exception e){
        requestEx = e;
    }
%>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Lista de Funcionários</title>
    </head>
    <body>
                <h1>JDBC</h1>
        <h2>Lista de Clientes (<%= count %> registros)</h2>
        <%if(requestEx!=null){%>
        <h3 style="color: red"><%= requestEx.getMessage() %></h3>
        <%}%>
        <table border="1">
            <tr><th>Id</th><th>FirstName</th><th>LastName</th><th>Company</th></tr>
            <%for(Funcionario a: list){%>
            <tr>
                <td><%= a.getEmployeeId() %></td>
                <td><%= a.getFirstName() %></td>
                <td><%= a.getLastName() %></td>
                <td><%= a.getTitle() %></td>
            </tr>
            <%}%>
        </table>
    </body>
</html>
