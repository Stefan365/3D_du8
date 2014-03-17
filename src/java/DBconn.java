
import com.mysql.jdbc.Statement;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;
import java.util.logging.Level;
import java.util.logging.Logger;

/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

/**
 *
 * @author User
 */
public class DBconn {
    
    static final String JDBC_DRIVER = "com.mysql.jdbc.Driver";
    static final String DATABASE_URL ="jdbc:mysql://project.iivos.cz:9906/iivos3Dalfa?characterEncoding=utf8";
    Connection connection;
    
    static{
        try{
            Class.forName(JDBC_DRIVER);
        } catch (ClassNotFoundException ex) {
            Logger.getLogger(DBconn.class.getName()).log(Level.SEVERE, null, ex);
        }
        
    }
    
    public DBconn (){
        Statement statement = null;
        
        try{
            connection = DriverManager.getConnection(DATABASE_URL, "veres", "Stefan.Veres");
        } catch (SQLException ex) {
            Logger.getLogger(DBconn.class.getName()).log(Level.SEVERE, null, ex);
        }
    }
    
    public static void main(String[] args){
        DBconn con = new DBconn();
    }
    
}
