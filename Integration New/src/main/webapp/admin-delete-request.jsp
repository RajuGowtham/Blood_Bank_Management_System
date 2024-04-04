    <%@page import="com.likith.bean.UserDao"%>  
    <jsp:useBean id="u" class="com.likith.bean.User"></jsp:useBean>  
    <jsp:setProperty property="*" name="u"/>  
    <%  
    UserDao.delete(u);  
    response.sendRedirect("admin-viewrequest.jsp");  
    %>  