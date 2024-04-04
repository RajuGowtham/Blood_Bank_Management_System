<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>

    
      <%@page import="com.srinu.bean.UserDao"%>  
    <jsp:useBean id="u" class="com.srinu.bean.User"></jsp:useBean>  
    <jsp:setProperty property="*" name="u"/>  
      
    <%  
    int j=UserDao.checkAdmin(u);
    if(j==1){
    	response.sendRedirect("admin-dashboard.jsp");
    }
    else{
    	response.sendRedirect("addlogin-error.jsp");
    }
    %>  
</body>
</html>