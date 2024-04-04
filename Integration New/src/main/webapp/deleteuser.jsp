    <%@page import="com.srinu.bean.UserDao"%>  
    <jsp:useBean id="u" class="com.srinu.bean.User"></jsp:useBean>  
    <jsp:setProperty property="*" name="u"/>  
    <%  
    UserDao.delete(u);  
    response.sendRedirect("admin-viewusers.jsp");  
    %>  