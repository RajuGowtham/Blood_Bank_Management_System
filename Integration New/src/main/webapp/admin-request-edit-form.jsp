<!DOCTYPE html>  
<html>  
<head>  
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">  
<title>Edit Form</title>  
</head>  
<body>  
<%@page import="com.likith.bean.UserDao,com.likith.bean.User"%>  
  
<%  
String id=request.getParameter("id");  
User u=UserDao.getRecordById(Integer.parseInt(id));  
%>  
  
<h1>Edit Form</h1>  
<form action="admin-request-edit.jsp" method="post">  
<input type="hidden" name="id" value="<%=u.getid() %>"/>  
<table>  
<tr><td>Name:</td><td>  
<input type="text" name="name" value="<%= u.getname()%>"/></td></tr>  
<tr><td>Mobile:</td><td>  
<input type="text" name="mobile" value="<%= u.getmobile()%>"/></td></tr>  
<tr><td>Blood:</td><td>  
<input type="text" name="blood" value="<%= u.getblood()%>"/></td></tr>
<tr><td>volume:</td><td>  
<input type="text" name="volume" value="<%= u.getvolume()%>"/></td></tr>  
<tr><td>address:</td><td>  
<input type="text" name="address" value="<%= u.getaddress()%>"/></td></tr> 
<tr><td colspan="2"><input type="submit" value="Edit User"/></td></tr>  
</table>  
</form>  
  
</body>  
</html> 