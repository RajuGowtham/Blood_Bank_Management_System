    <%@page import="com.madhavi.bean.UserDao"%>  
    <jsp:useBean id="u" class="com.madhavi.bean.User"></jsp:useBean>  
    <jsp:setProperty property="*" name="u"/>  
    <%  
    UserDao.delete(u);  
    response.sendRedirect("admin-viewstock.jsp");  
    %>  