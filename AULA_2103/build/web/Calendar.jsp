<%-- 
    Document   : Calendar
    Created on : 21 de mar. de 2022, 16:25:21
    Author     : Fatec
--%>

<%@page import="java.util.Calendar"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP - Calendar</title>
    </head>
    <body>
        
         <h1> Digite um mês e ano válidos</h1>
    <form>
        <input name="year" type="text" placeholder="Ano ex: 2008">
        <input name="month" type="text" placeholder="Mes ex: 05">
        <input type="submit">
    </form>
        <%
    int year = 0;
    int month = 0;
    int day = 0;
    try {
        year = Integer.parseInt(request.getParameter("year"));
        month = Integer.parseInt(request.getParameter("month"));
    } catch (Exception e) {
        year = Calendar.getInstance().get(Calendar.YEAR);
        month = Calendar.getInstance().get(Calendar.MONTH)+1;
    }
    Calendar calendar = Calendar.getInstance();
    calendar.set(year, month-1, 1);
    int firstDayOfWeek = calendar.get(Calendar.DAY_OF_WEEK);
    int daysOfMounth = calendar.getActualMaximum(Calendar.DAY_OF_MONTH);
%>
<body>
</h1>
<br/>
    <table>
        <tr>
            <th>DOM</th>
            <th>SEG</th>
            <th>TER</th>
            <th>QUA</th>
            <th>QUI</th>
            <th>SEX</th>
            <th>SÁB</th>
        </tr>

        <%for(int weekDays = 1; weekDays <= 6; weekDays++){%>
        <tr>
            <%for(int weekDay = 1; weekDay <= 7; weekDay++){%>
            <%if(day == 0 && firstDayOfWeek == weekDay){
                day = 1;
            }%>

            <%if(day==0 || day>daysOfMounth){%>
            <td style="color: transparent">0</td>
            <%}else{%>
            <td><%= day++ %></td>
            <%}%><%}}%>
        </tr>
    </table>
    <h6><a href="index.jsp">Voltar</a></h6>
    </body>
</html>
