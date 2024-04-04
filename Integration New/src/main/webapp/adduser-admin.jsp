<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>

    <%@page import="com.likith.bean.UserDao"%>  
    <jsp:useBean id="u" class="com.likith.bean.User"></jsp:useBean>  
    <jsp:setProperty property="*" name="u"/>  
      
    <%  
    int i=UserDao.saveAdmin(u);  
    if(i>0){  
    response.sendRedirect("admin-addadmin-success.jsp");  
    }else{  
    response.sendRedirect("adduser-error.jsp");  
    }  
    %>  

</body>
</html>