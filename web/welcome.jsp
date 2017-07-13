
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
    </head>
    <body>
 
<%
String n =(String)session.getAttribute("uname");
    
     %>

                   <label style="margin-left: -100PX;">WELCOME       :</label> <%out.println(n);%>











    </body>
</html>
