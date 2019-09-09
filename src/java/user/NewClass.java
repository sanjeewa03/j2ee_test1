/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package user;


import java.sql.*;
import java.util.ArrayList;

/**
 *
 * @author sanjeewa_s
 */
public class NewClass {
    
    private int user_id;
    private String name;
    private String password;

    public NewClass(int user_id, String name,String password){
        this.user_id = user_id;
        this.name = name;
        this.password =password;
    }
    
    public NewClass(){
        
    }
    /**
     * @return the user_id
     */
    public int getUser_id() {
        return user_id;
    }

    /**
     * @param user_id the user_id to set
     */
    public void setUser_id(int user_id) {
        this.user_id = user_id;
    }

    /**
     * @return the name
     */
    public String getName() {
        return name;
    }

    /**
     * @param name the name to set
     */
    public void setName(String name) {
        this.name = name;
    }

    /**
     * @return the password
     */
    public String getPassword() {
        return password;
    }

    /**
     * @param password the password to set
     */
    public void setPassword(String password) {
        this.password = password;
    }
    
    public ArrayList getUsers(){
         ArrayList list = null;
         ArrayList list2 = null;
        try{  
            Class.forName("com.mysql.jdbc.Driver");  
            Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/sanjeewa_db","sanjeewa","sanjeewa");  
            //here sonoo is database name, root is username and password  
            Statement stmt=con.createStatement();  
            ResultSet rs=stmt.executeQuery("select * from users");  
            while(rs.next())
                 list2.add(rs.getInt(user_id));
                list.add(list2);
            }catch(Exception e){ System.out.println(e);}
        System.out.println(list);
        return list;
    }
    
    
}
