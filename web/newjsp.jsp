<%-- 
    Document   : newjsp
    Created on : Sep 9, 2019, 12:20:26 PM
    Author     : sanjeewa_s
--%>

<%@page import="user.NewClass"%>
<%@ page import = "java.io.*,java.util.*,java.sql.*"%>
<%@ page import = "javax.servlet.http.*,javax.servlet.*" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix = "c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/sql" prefix = "sql"%>
 
<html>
   <head>
      <title>SELECT Operation</title>
   </head>

   <body>
      <sql:setDataSource var = "snapshot" driver = "com.mysql.jdbc.Driver"
         url = "jdbc:mysql://localhost/sanjeewa_db"
         user = "sanjeewa"  password = "sanjeewa"/>
 
      <sql:query dataSource = "${snapshot}" var = "result">
         SELECT * from users;
      </sql:query>
 <%--
      <table border = "1" width = "100%">
         <tr>
            <th>user ID</th>
            <th>Name</th>
            <th>Password</th>
         </tr>
         
         <c:forEach var = "row" items = "${result.rows}">
            <tr>
               <td><c:out value = "${row.user_id}"/></td>
               <td><c:out value = "${row.name}"/></td>
               <td><c:out value = "${row.password}"/></td>
            </tr>
         </c:forEach>
      </table>
       --%>
         
         <table border ="1" width="500" align="center"> 
         <tr bgcolor="00FF7F"> 
          <th><b>Student Name</b></th> 
          <th><b>Student Age</b></th> 
          <th><b>Course Undertaken</b></th> 
         </tr> 
        <%-- Fetching the attributes of the request object 
             which was previously set by the servlet  
              "StudentServlet.java" 
        --%>  
        <%ArrayList<NewClass> std =  
            (ArrayList<NewClass>)request.getAttribute("data"); 
        for(NewClass s:std){%> 
        <%-- Arranging data in tabular form 
        --%> 
            <tr> 
                <td><%=s.getName()%></td> 
                <td><%=s.getPassword()%></td> 
                <td><%=s.getUser_id()%></td> 
            </tr> 
            <%}%> 
        </table>  
        
        
 
   </body>
</html>