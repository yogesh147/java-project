<%-- 
    Document   : edit
    Created on : 18-Apr-2018, 14:15:39
    Author     : hp
--%>

<%@page import="java.sql.ResultSet"%>
<%@page import="java.util.Enumeration"%>
<%@page import="com.oreilly.servlet.MultipartRequest"%>
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

        <div class="container">
            <div class="logo">
                <a href="Home.jsp"><span>e</span>tail</a>
            </div>
            <form action="Edit" method="post" enctype="multipart/form-data">
                <div class="form-group" >
                    <label for="cat_name">Category Name</label>
                    <input type="text" name="cat_name" id="cat_name" placeholder="category name"><br>

                    <label for="Name">Name</label>
                    <input type="text" name="name" id="name" placeholder="name"><br>

                    <label for="cat_image">Image</label>
                    <input type="file" name="cat_image" id="cat_image" ><br>

                    <label for="title">title</label>
                    <input type="text" name="title" id="title" placeholder="title"><br>

                    <label for="desc">description</label>
                    <input type="text" name="desc" id="desc" placeholder="desc"><br>

                    <label for="phone">phone</label>
                    <input type="text" name="phone" id="phone" placeholder="phone"><br>

                    <label for="city">city</label>
                    <input type="text" name="city" id="city" placeholder="city"><br>
                    <label for="price">price</label>

                    <input type="text" name="price" id="price" placeholder="price"><br>

                    <input type="submit" value="Submit" name="update">
                    <input type="text" value="<%out.println(request.getParameter("id"));%>" name="pid">
                </div>

            </form>


        </div>


    </body>
</html>

