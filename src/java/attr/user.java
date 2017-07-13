/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package attr;
import utill.MyDb;
import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.logging.Level;
import java.util.logging.Logger;

public class user {
    
    public ResultSet Login(String uname , String pass){
        ResultSet rs = null;
        try {
        MyDb db = new MyDb();
           Connection con =db.getCon();
           Statement stmt;
        
            stmt = con.createStatement();
            rs = stmt.executeQuery("select * from users where user_name = '"+uname+"' and user_pass = '"+pass+"'"); 
        
        } catch (SQLException ex) {
            Logger.getLogger(user.class.getName()).log(Level.SEVERE, null, ex);
        
           
    }
        
        return rs;
    }
    
}
