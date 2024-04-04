package com.raju.bean;
import java.sql.*;
import java.util.ArrayList;
import java.util.List;
import com.raju.bean.User;


public class UserDao {

	public static Connection getConnection() {
		Connection con=null;
		try {
			//getting connection for the project
			Class.forName("oracle.jdbc.OracleDriver");
			con=DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:xe","system","system");
			System.out.println("Connection Created");
		}
		catch(Exception e) {
			System.out.println(e);
			System.out.println("Connection Not created");
		}
		return con;
	}
	
	//save contact details for query solving
	public static int save(User u){  
	    int status=0;  
	    try{  
	        Connection con=getConnection();  
	        PreparedStatement ps=con.prepareStatement(  
	"insert into contact(name,mobile,gmail,related,query) values(?,?,?,?,?)");  
	        ps.setString(1,u.getname());  
	        ps.setString(2,u.getmobile());  
	        ps.setString(3,u.getgmail());  
	        ps.setString(4,u.getrelated());  
	        ps.setString(5,u.getquery());  
	        status=ps.executeUpdate();  
	    }catch(Exception e){System.out.println(e);}  
	    return status;  
	}  
	 
}
