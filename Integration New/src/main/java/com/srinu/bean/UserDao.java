package com.srinu.bean;
import java.sql.*;
import java.util.ArrayList;
import java.util.List;
import com.srinu.bean.User;

public class UserDao {
	public static Connection getConnection() {
		Connection con=null;
		try {
			Class.forName("oracle.jdbc.OracleDriver");
			con=DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:xe","system","system");
			System.out.println("Connection Created");
		}
		catch(Exception e) {
			System.out.println(e);
			System.out.println("Connection Not created");
		}
		return con;
	}//function for get connection
	public static int save(User u){  
	    int status=0;  
	    try{  
	        Connection con=getConnection();  
	        PreparedStatement ps=con.prepareStatement(  
	     "insert into donar(name,mobile,gmail,password,cpassword) values(?,?,?,?,?)");    
	        ps.setString(1,u.getname());
	        ps.setString(2,u.getmobile());
	        ps.setString(3,u.getgmail());
	        ps.setString(4,u.getpassword());
	        ps.setString(5,u.getcpassword());
	        status=ps.executeUpdate();
	        con.close();
	        System.out.println("connection close");
	    }catch(Exception e){System.out.println(e);}  
	    return status;  
	}//function for saving the records  
	
	public static int check(User u){ 
	    int status=0;  
	    try{  
	        Connection con=getConnection();  
	        PreparedStatement ps=con.prepareStatement(  
	"select * from donar where gmail=? and password=? ");  
	        ps.setString(1,u.getlgmail());  
	        ps.setString(2,u.getlpassword());  
	        status=ps.executeUpdate();  
	    }catch(Exception e){System.out.println(e);}  
	    return status;  
	}//function for validating the user
	
	public static int checkAdmin(User u){  
	    int status=0;  
	    try{  
	        Connection con=getConnection();  
	        PreparedStatement ps=con.prepareStatement(  
	"select * from admin where gmail=? and password=? ");  
	        ps.setString(1,u.getadmingmail());  
	        ps.setString(2,u.getadminpassword());  
	        status=ps.executeUpdate(); 
	    }catch(Exception e){System.out.println(e);}  
	    return status; 
	    
	}//function for validating admin
	
	public static List<User> getAllRecords(){
		List<User> list=new ArrayList<User>();
		try {
		  Connection con=getConnection();
		  PreparedStatement ps=con.prepareStatement("select * from donar");
		  ResultSet rs=ps.executeQuery();
		  while(rs.next()) {
			  User u=new User();
			  u.setid(rs.getInt("id"));
			  u.setname(rs.getString("name"));
			  u.setmobile(rs.getString("mobile"));
			  u.setgmail(rs.getString("gmail"));
			  u.setpassword(rs.getString("password"));
			  u.setcpassword(rs.getString("cpassword"));
			  u.setddate(rs.getString("ddate"));
			  list.add(u);
		  }//while
		}
		catch(Exception e) {
			   System.out.println(e);
		}
		return list;
	}//getAllRecords
	
	public static int update(User u){  
	    int status=0;  
	    try{  
	        Connection con=getConnection();  
	        PreparedStatement ps=con.prepareStatement(  
	"update donar set name=?,mobile=?,gmail=?,password=?,cpassword=? where id=?");  
	        ps.setString(1,u.getname());  
	        ps.setString(2,u.getmobile());  
	        ps.setString(3,u.getgmail());  
	        ps.setString(4,u.getpassword());  
	        ps.setString(5,u.getcpassword());  
	        ps.setInt(6,u.getid());  
	        status=ps.executeUpdate();  
	    }catch(Exception e){System.out.println(e);}  
	    return status;  
	}
	
	
	public static User getRecordById(int id){  
	    User u=null;  
	    try{  
	        Connection con=getConnection();  
	        PreparedStatement ps=con.prepareStatement("select * from donar where id=?");  
	        ps.setInt(1,id);  
	        ResultSet rs=ps.executeQuery();  
	        while(rs.next()){  
	            u=new User();  
	            u.setid(rs.getInt("id"));
	            u.setname(rs.getString("name"));  
	            u.setmobile(rs.getString("mobile"));  
	            u.setgmail(rs.getString("gmail"));  
	            u.setpassword(rs.getString("password"));  
	            u.setcpassword(rs.getString("cpassword"));  
	        }  
	    }catch(Exception e){System.out.println(e);}  
	    return u;  
	} //get element by id @userform edit
	
	
	//get record by name
	public static List<User> getRecordByName(String Name){  
		List<User> list=new ArrayList<User>();  
	    try{  
	    	//function for getting record uniquely
	        Connection con=getConnection();  
	        PreparedStatement ps=con.prepareStatement("select * from donar where name=?");  
	        ps.setString(1,Name);  
	        ResultSet rs=ps.executeQuery();  
	        while(rs.next()){  
	            User u=new User();  
	            u.setid(rs.getInt("id"));
	            u.setname(rs.getString("name"));  
	            u.setmobile(rs.getString("mobile")); 
	            u.setgmail(rs.getString("gmail"));  
	            u.setpassword(rs.getString("password"));  
	            u.setddate(rs.getString("ddate")); 
	            list.add(u);
	        } //while
	    }catch(Exception e){System.out.println(e);}  
	    return list;  
	}
	
	
	public static int delete(User u){  
	    int status=0;  
	    try{  
	        Connection con=getConnection();  
	        PreparedStatement ps=con.prepareStatement("delete from donar where id=?");  
	        ps.setInt(1,u.getid());  
	        status=ps.executeUpdate();  
	    }catch(Exception e){System.out.println(e);}  
	  
	    return status;  
	}  //delete user code
}


