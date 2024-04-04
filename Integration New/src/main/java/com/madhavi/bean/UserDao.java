package com.madhavi.bean;
import java.sql.*;
import java.util.ArrayList;
import java.util.List;
import com.madhavi.bean.User;

public class UserDao {
	public static Connection getConnection() {
		Connection con=null;
		try {
			//function for getting connection
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
	    	//function for saving the records
	        Connection con=getConnection();  
	        PreparedStatement ps=con.prepareStatement(  
	     "insert into stock(name,mobile,blood,volume,address) values(?,?,?,?,?)");    
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
	
	public static List<User> getAllRecords(){  
	    List<User> list=new ArrayList<User>();  
		try {
			//function for viewing the records
		  Connection con=getConnection();
		  PreparedStatement ps=con.prepareStatement("select * from stock");
		  ResultSet rs=ps.executeQuery();
		  while(rs.next()) {
			  User u=new User();
			  u.setid(rs.getInt("sid"));
			  u.setname(rs.getString("name"));
			  u.setmobile(rs.getString("mobile"));
			  u.setblood(rs.getString("blood"));
			  u.setvolume(rs.getString("volume"));
			  u.setaddress(rs.getString("address"));
			  u.setdate(rs.getString("sdate"));
			  list.add(u);
		  }//while
		}
		catch(Exception e) {
			   System.out.println(e);
		}
		return list;
	}//getAllRecords
	
	/*public static User getRecordByName(String name){  
	    User u=null;  
	    try{  
	    	//function for getting record uniquely
	        Connection con=getConnection();  
	        PreparedStatement ps=con.prepareStatement("select * from stock where name=?");  
	        ps.setString(1,name);  
	        ResultSet rs=ps.executeQuery();  
	        while(rs.next()){  
	            u=new User();  
	            u.setid(rs.getInt("sid"));
	            u.setname(rs.getString("name"));  
	            u.setmobile(rs.getString("mobile"));  
	            u.setblood(rs.getString("blood"));  
	            u.setvolume(rs.getString("volume"));  
	            u.setaddress(rs.getString("address"));  
	        }  
	    }catch(Exception e){System.out.println(e);}  
	    return u;  
	} //get element by id @userform edit
	
	*/
	//get record by name
		public static List<User> getRecordByName(String Name){  
			List<User> list=new ArrayList<User>();  
		    try{  
		    	//function for getting record uniquely
		        Connection con=getConnection();  
		        PreparedStatement ps=con.prepareStatement("select * from stock where name=?");  
		        ps.setString(1,Name);  
		        ResultSet rs=ps.executeQuery();  
		        while(rs.next()){  
		            User u=new User();  
		            u.setid(rs.getInt("sid"));
		            u.setname(rs.getString("name"));  
		            u.setmobile(rs.getString("mobile"));  
		            u.setblood(rs.getString("blood"));  
		            u.setvolume(rs.getString("volume"));  
		            u.setaddress(rs.getString("address")); 
		            list.add(u);
		        } //while
		    }catch(Exception e){System.out.println(e);}  
		    return list;  
		}
		
	
	public static int update(User u){  
	    int status=0;  
	    try{  
	    	//function for updating values
	        Connection con=getConnection();  
	        PreparedStatement ps=con.prepareStatement(  
	"update stock set name=?,mobile=?,blood=?,volume=?,address=? where sid=?");  
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
	    	//function for getting record uniquely
	        Connection con=getConnection();  
	        PreparedStatement ps=con.prepareStatement("select * from stock where sid=?");  
	        ps.setInt(1,id);  
	        ResultSet rs=ps.executeQuery();  
	        while(rs.next()){  
	            u=new User();  
	            u.setid(rs.getInt("sid"));
	            u.setname(rs.getString("name"));  
	            u.setmobile(rs.getString("mobile"));  
	            u.setblood(rs.getString("blood"));  
	            u.setvolume(rs.getString("volume"));  
	            u.setaddress(rs.getString("address"));  
	        }  
	    }catch(Exception e){System.out.println(e);}  
	    return u;  
	} //get element by id @userform edit
	
	
	
	public static int delete(User u){  
	    int status=0;  
	    try{  
	        Connection con=getConnection();  
	        PreparedStatement ps=con.prepareStatement("delete from stock where sid=?");  
	        ps.setInt(1,u.getid());  
	        status=ps.executeUpdate();  
	    }catch(Exception e){System.out.println(e);}  
	  
	    return status;  
	}  //delete user code
}


