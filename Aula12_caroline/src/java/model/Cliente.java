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
public class Cliente {
    
    private Integer CustomerId;
    private String FirstName;
    private String  LastName;
    private String Company;
    
    
     public static int getCount() throws Exception{
        ArrayList<Cliente> list = new ArrayList<>();
        Class.forName("org.sqlite.JDBC");
        //O caminho do arquivo deve ser diferente se executado do seu PC
        //https://www.sqlitetutorial.net/sqlite-sample-database/
        String url = "jdbc:sqlite:C:\\Users\\Fatec\\chinook.db";
        Connection con = DriverManager.getConnection(url);
        Statement stmt = con.createStatement();
        ResultSet rs = stmt.executeQuery("select count(*) as count from customers");
        int count = 0;
        while(rs.next()){
            count = rs.getInt("count");
        }
        rs.close();
        stmt.close();
        con.close();
        return count;
    }
    
    public static ArrayList<Cliente> getList() throws Exception{
        ArrayList<Cliente> list = new ArrayList<>();
        Class.forName("org.sqlite.JDBC");
        
        String url = "jdbc:sqlite:C:\\Users\\Fatec\\chinook.db";
        Connection con = DriverManager.getConnection(url);
        Statement stmt = con.createStatement();    
        ResultSet rs = stmt.executeQuery("select * from customers");
        while(rs.next()){
            Integer CustomerId = rs.getInt("CustomerId");
            String FirstName = rs.getString("FirstName");
            String  LastName  = rs.getString("LastName");
            String Company = rs.getString("Company");
            
            
            Cliente a = new Cliente (CustomerId, FirstName, LastName,Company);
            list.add(a);
        }
         rs.close();
         stmt.close();
         con.close();
        return list;
    }

    public Cliente(Integer CustomerId, String FirstName, String LastName, String Company) {
        this.CustomerId = CustomerId;
        this.FirstName = FirstName;
        this.LastName = LastName;
        this.Company = Company;
    }

    public Integer getCustomerId() {
        return CustomerId;
    }

    public void setCustomerId(Integer CustomerId) {
        this.CustomerId = CustomerId;
    }

    public String getFirstName() {
        return FirstName;
    }

    public void setFirstName(String FirstName) {
        this.FirstName = FirstName;
    }

    public String getLastName() {
        return LastName;
    }

    public void setLastName(String LastName) {
        this.LastName = LastName;
    }

    public String getCompany() {
        return Company;
    }

    public void setCompany(String Company) {
        this.Company = Company;
    }
    
    
    
    
    
    
    
}
