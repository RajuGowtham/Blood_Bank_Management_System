<!DOCTYPE html>  
<html>  
<head>  
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">  
<title>Edit Form</title>  
</head>  
<body>  
<%@page import="com.srinu.bean.UserDao,com.srinu.bean.User"%>  
  
<%  
String id=request.getParameter("id");  
User u=UserDao.getRecordById(Integer.parseInt(id));  
%>  
  
<h1>Edit Form</h1>  
<form action="edituser.jsp" method="post">  
<input type="hidden" name="id" value="<%=u.getid() %>"/>  
<table>  
<tr><td>Name:</td><td>  
<input type="text" name="name" value="<%= u.getname()%>"/></td></tr>  
<tr><td>Mobile:</td><td>  
<input type="text" name="mobile" value="<%= u.getmobile()%>"/></td></tr>  
<tr><td>gmail:</td><td>  
<input type="email" name="gmail" value="<%= u.getgmail()%>"/></td></tr>
<tr><td>Password:</td><td>  
<input type="password" name="password" value="<%= u.getpassword()%>"/></td></tr>  
<tr><td>C Password:</td><td>  
<input type="password" name="cpassword" value="<%= u.getcpassword()%>"/></td></tr> 
<tr><td colspan="2"><input type="submit" value="Edit User"/></td></tr>  
</table>  
</form>  
  
</body>  
</html> 