/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package model;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.Statement;
import java.util.ArrayList;

/**
 *
 * @author Fatec
 */
public class Funcionario {
    
    private Integer EmployeeId;
    private String LastName;
    private String FirstName;
    private String Title;
    
   public static int getCount() throws Exception{
        ArrayList<Funcionario> list = new ArrayList<>();
        Class.forName("org.sqlite.JDBC");
        //O caminho do arquivo deve ser diferente se executado do seu PC
        //https://www.sqlitetutorial.net/sqlite-sample-database/
        String url = "jdbc:sqlite:C:\\Users\\Fatec\\chinook.db";
        Connection con = DriverManager.getConnection(url);
        Statement stmt = con.createStatement();
        ResultSet rs = stmt.executeQuery("select count(*) as count from employees");
        int count = 0;
        while(rs.next()){
            count = rs.getInt("count");
        }
        rs.close();
        stmt.close();
        con.close();
        return count;
    }
    
    public static ArrayList<Funcionario> getList() throws Exception{
        ArrayList<Funcionario> list = new ArrayList<>();
        Class.forName("org.sqlite.JDBC");
        
        String url = "jdbc:sqlite:C:\\Users\\Fatec\\chinook.db";
        Connection con = DriverManager.getConnection(url);
        Statement stmt = con.createStatement();    
        ResultSet rs = stmt.executeQuery("select * from employees");
        while(rs.next()){
              Integer EmployeeId = rs.getInt("EmployeeId");
                String LastName = rs.getString("LastName");
             String FirstName = rs.getString("FirstName");
            String Title = rs.getString("Title");
            Funcionario a = new Funcionario(EmployeeId, FirstName, LastName, Title);
            list.add(a);
        }
         rs.close();
         stmt.close();
         con.close();
        return list;
    }
    
    

    public Funcionario(Integer EmployeeId, String LastName, String FirstName, String Title) {
        this.EmployeeId = EmployeeId;
        this.LastName = LastName;
        this.FirstName = FirstName;
        this.Title = Title;
    }

    public Integer getEmployeeId() {
        return EmployeeId;
    }

    public void setEmployeeId(Integer EmployeeId) {
        this.EmployeeId = EmployeeId;
    }

    public String getLastName() {
        return LastName;
    }

    public void setLastName(String LastName) {
        this.LastName = LastName;
    }

    public String getFirstName() {
        return FirstName;
    }

    public void setFirstName(String FirstName) {
        this.FirstName = FirstName;
    }

    public String getTitle() {
        return Title;
    }

    public void setTitle(String Title) {
        this.Title = Title;
    }
    
    
    
    
}
