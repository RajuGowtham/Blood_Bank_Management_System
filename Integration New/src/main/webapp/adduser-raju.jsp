<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>

    <%@page import="com.raju.bean.UserDao"%>  
    <jsp:useBean id="k" class="com.raju.bean.User"></jsp:useBean>  
    <jsp:setProperty property="*" name="k"/>  
      
    <%
    int i = UserDao.save(k);
    if (i>0) {
        response.sendRedirect("addcontact-success.jsp");
    } else {
        response.sendRedirect("adduser-error.jsp");
    }
%>

</body>
</html>