package com.likith.bean;
import java.sql.*;
import java.util.ArrayList;
import java.util.List;
import com.likith.bean.User;

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
	public static int save(User u){  
	    int status=0;  
	    try{  
	    	//saving function
	        Connection con=getConnection();  
	        PreparedStatement ps=con.prepareStatement(  
	     "insert into request(rname,rmobile,rblood,rvolume,address) values(?,?,?,?,?)");    
	        ps.setString(1,u.getname());
	        ps.setString(2,u.getmobile());
	        ps.setString(3,u.getblood());
	        ps.setString(4,u.getvolume());
	        ps.setString(5,u.getaddress());
	        status=ps.executeUpdate();
	        con.close();
	        System.out.println("connection close");
	    }catch(Exception e){System.out.println(e);}  
	    return status;  
	}  
	
	public static int saveAdmin(User u){  
	    int status=0;  
	    try{  
	    	//saving function
	        Connection con=getConnection();  
	        PreparedStatement ps=con.prepareStatement(  
	     "insert into admin(gmail,password) values(?,?)");    
	        ps.setString(1,u.getgmail());
	        ps.setString(2,u.getpassword());
	        status=ps.executeUpdate();
	        con.close();
	        System.out.println("connection close");
	    }catch(Exception e){System.out.println(e);}  
	    return status;  
	}  
	
	public static List<User> getAllRecords(){
		List<User> list=new ArrayList<User>();
		try {
			//for viewing the records
		  Connection con=getConnection();
		  PreparedStatement ps=con.prepareStatement("select * from request");
		  ResultSet rs=ps.executeQuery();
		  while(rs.next()) {
			  User u=new User();
			  u.setid(rs.getInt("rid"));
			  u.setname(rs.getString("rname"));
			  u.setmobile(rs.getString("rmobile"));
			  u.setblood(rs.getString("rblood"));
			  u.setvolume(rs.getString("rvolume"));
			  u.setaddress(rs.getString("address"));
			  u.setdate(rs.getString("rdate"));
			  list.add(u);
		  }//while
		}
		catch(Exception e) {
			   System.out.println(e);
		}
		return list;
	}//getAllRecords
	
	
	//get record by name
			public static List<User> getRecordByName(String Name){  
				List<User> list=new ArrayList<User>();  
			    try{  
			    	//function for getting record uniquely
			        Connection con=getConnection();  
			        PreparedStatement ps=con.prepareStatement("select * from request where rname=?");  
			        ps.setString(1,Name);  
			        ResultSet rs=ps.executeQuery();  
			        while(rs.next()){  
			            User u=new User();  
			            u.setid(rs.getInt("rid"));
			            u.setname(rs.getString("rname"));  
			            u.setmobile(rs.getString("rmobile"));  
			            u.setblood(rs.getString("rblood"));  
			            u.setvolume(rs.getString("rvolume"));
			            u.setaddress(rs.getString("address")); 
			            list.add(u);
			        } //while
			    }catch(Exception e){System.out.println(e);}  
			    return list;  
			}
	
	
	public static int update(User u){  
	    int status=0;  
	    try{  
	    	//record update function
	        Connection con=getConnection();  
	        PreparedStatement ps=con.prepareStatement(  
	"update request set rname=?,rmobile=?,rblood=?,rvolume=?,address=? where rid=?");  
	        ps.setString(1,u.getname());  
	        ps.setString(2,u.getmobile());  
	        ps.setString(3,u.getblood());  
	        ps.setString(4,u.getvolume());  
	        ps.setString(5,u.getaddress());  
	        ps.setInt(6,u.getid());  
	        status=ps.executeUpdate();  
	    }catch(Exception e){System.out.println(e);}  
	    return status;  
	}
	
	
	public static User getRecordById(int id){  
	    User u=null;  
	    try{  
	    	//getting records by id uniquely
	        Connection con=getConnection();  
	        PreparedStatement ps=con.prepareStatement("select * from request where rid=?");  
	        ps.setInt(1,id);  
	        ResultSet rs=ps.executeQuery();  
	        while(rs.next()){  
	            u=new User();  
	            u.setid(rs.getInt("rid"));
	            u.setname(rs.getString("rname"));  
	            u.setmobile(rs.getString("rmobile"));  
	            u.setblood(rs.getString("rblood"));  
	            u.setvolume(rs.getString("rvolume"));  
	            u.setaddress(rs.getString("address"));  
	        }  
	    }catch(Exception e){System.out.println(e);}  
	    return u;  
	} //get element by id @userform edit
	
	public static int delete(User u){  
	    int status=0;  
	    try{  
	    	//function for delete user
	        Connection con=getConnection();  
	        PreparedStatement ps=con.prepareStatement("delete from request where rid=?");  
	        ps.setInt(1,u.getid());  
	        status=ps.executeUpdate();  
	    }catch(Exception e){System.out.println(e);}  
	  
	    return status;  
	}  //delete user code
}


