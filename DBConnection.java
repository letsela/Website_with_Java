package connect;

//import java.sql.*;
import java.sql.Connection;
import java.sql.DriverAction;
import java.sql.DriverManager;
import java.sql.SQLException;

public class DBConnection {
    
    
        //database connection
    static String URL = "localhost:3306/";
    static String DATABASE_NAME = "stusubmission";
    static String USERNAME = "root";
    static String PASSWORD = "";
    
    public static Connection getConnection(){
        Connection con = null;
        try{
            Class.forName("com.mysql.jdbc.Driver");
            con = DriverManager.getConnection("jdbc:mysql://" + URL + DATABASE_NAME, USERNAME, PASSWORD);
        }catch (ClassNotFoundException | SQLException e){
            System.out.println(e);
        }
        return con;  
    }
    
}
