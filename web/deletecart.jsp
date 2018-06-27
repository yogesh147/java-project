<%-- 
    Document   : delete
    Created on : 18-Apr-2018, 14:32:04
    Author     : hp
--%>

<%@page import="java.sql.Statement"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.Connection"%>
<%@page import="javax.swing.JOptionPane"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        
      <%   try{
         
            Class.forName("com.mysql.jdbc.Driver");
             Connection con = DriverManager.getConnection("jdbc:mysql://localhost/test","root","");
             Statement stmt=con.createStatement();
           
             
           String idm = request.getParameter("id");
          
          int result=stmt.executeUpdate("delete from cart where id='"+idm+"'");
        //  out.println("delete from category where id='"+idm+"'");
       response.sendRedirect("cart.jsp");
          if(result>0)
          {
              JOptionPane.showMessageDialog(null,"record deleted");
        }
          }
        catch(Exception e)
        {
          out.print(e);
        }%>
    </body>
</html>
