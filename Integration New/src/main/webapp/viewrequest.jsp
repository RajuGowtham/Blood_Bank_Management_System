<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>view all records</title>
</head>
<style>
body {
        font-family: 'Segoe UI', Tahoma, Geneva, Verdana, sans-serif;
        background-color: #f4f4f4;
        margin: 0;
        padding: 0;
    }

    table {
        width: 90%;
        border-collapse: collapse;
        margin: 20px auto;
        background-color: #fff;
        border-radius: 8px;
        overflow: hidden;
        box-shadow: 0 4px 6px rgba(0, 0, 0, 0.1);
        animation: fadein 0.5s ease-in-out;
    }

    @keyframes fadein {
        from { opacity: 0; }
        to   { opacity: 1; }
    }

    th, td {
        border: 1px solid #dddddd;
        padding: 12px;
        text-align: left;
        font-size: 14px;
        transition: background-color 0.3s ease;
    }

    th {
        background-color: #3498db;
        color: #fff;
        text-transform: uppercase;
        letter-spacing: 1px;
    }

    tr:nth-child(odd) {
        background-color: #f9f9f9;
    }

    tr:nth-child(even) {
        background-color: #ffffff;
    }

    tr:hover {
        background-color: #f2f2f2;
    }

    .edit, .delete {
        text-decoration: none;
        color: #2980b9;
        font-weight: bold;
        transition: color 0.3s ease;
    }

    .edit:hover, .delete:hover {
        color: #1a5276;
    }
    h3{
       color:blue;
      font-style:sans-serif;
      margin-left:600px;
    }
    .search-container {
        display: flex;
        align-items: center;
        max-width: 400px;
        margin: 0 auto;
        padding: 10px;
        border: 2px solid #ccc;
        border-radius: 25px;
        box-shadow: 0 2px 4px rgba(0, 0, 0, 0.1);
        background-color:white;
    }

    /* Input styles */
    .search-input {
        flex: 1;
        border: none;
        padding: 10px;
        font-size: 16px;
        outline: none;
        background-color:white;
    }

    /* Button styles */
    .search-button {
        padding: 10px 20px;
        background-color: #007bff;
        color: white;
        border: none;
        border-radius: 25px;
        cursor: pointer;
        transition: background-color 0.3s;
    }

    /* Button hover effect */
    .search-button:hover {
        background-color: #0056b3;
    }
</style>
<body >

 <%@page import="com.likith.bean.User,com.likith.bean.UserDao,java.util.*"%>  
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>   <h3>Requests list</h3>
    <% List<User> list=UserDao.getAllRecords(); 
       request.setAttribute("list",list);%>
       
     <form action="likith-viewrequest-after-search.jsp" method="post" class="search-container">
        <input type="text" name="query" class="search-input" placeholder="Search...">
        <button type="submit" class="search-button">Search</button>
 </form>
     
<table>
<tr>
<th>Id</th>
<th>Name</th>
<th>Mobile</th>
<th>blood</th>
<th>volume</th>
<th>address</th>
<th>Date</th>
<th>edit</th>
<th>Delete</th>
</tr>
<c:forEach items="${list}" var="u">
<tr>
<td>${u.getid() }</td>
<td>${u.getname() }</td>
<td>${u.getmobile() }</td>
<td>${u.getblood() }</td>
<td>${u.getvolume() }</td>
<td>${u.getaddress() }</td>
<td>${u.getdate() }</td>
<td><a href="admin-request-edit-form.jsp?id=${u.getid()}">Edit</a></td>
<td><a href="admin-delete-request.jsp?id=${u.getid()}">Delete</a></td></tr> 
</tr>
</c:forEach>
</table>

</body>
</html>