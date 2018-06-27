
<%-- 
    Document   : Login1
    Created on : 01-May-2018, 23:00:00
    Author     : hp
--%>

<%@page import="javax.swing.JOptionPane"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.Connection"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<!--
  Author: W3layouts
  Author URL: http://w3layouts.com
  License: Creative Commons Attribution 3.0 Unported
  License URL: http://creativecommons.org/licenses/by/3.0/
-->
<!DOCTYPE html>
<html>
    <head>
        <title>etail a Business Website</title>
        <link rel="stylesheet" href="css/bootstrap.min.css">
        <link rel="stylesheet" href="css/bootstrap-select.css">
        <link href="css/style.css" rel="stylesheet" type="text/css" media="all" />
        <!-- for-mobile-apps -->
        <meta name="viewport" content="width=device-width, initial-scale=1">
        <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
        <meta name="keywords" content="Resale Responsive web template, Bootstrap Web Templates, Flat Web Templates, Android Compatible web template, 
              Smartphone Compatible web template, free webdesigns for Nokia, Samsung, LG, Sony Ericsson, Motorola web design" />
        <script type="application/x-javascript"> addEventListener("load", function() { setTimeout(hideURLbar, 0); }, false); function hideURLbar(){ window.scrollTo(0,1); } </script>
        <!-- //for-mobile-apps -->
        <!--fonts-->
        <link href='//fonts.googleapis.com/css?family=Ubuntu+Condensed' rel='stylesheet' type='text/css'>
        <link href='//fonts.googleapis.com/css?family=Open+Sans:400,300,300italic,400italic,600,600italic,700,700italic,800,800italic' rel='stylesheet' type='text/css'>
        <!--//fonts-->	
        <!-- js -->
        <script type="text/javascript" src="js/jquery.min.js"></script>
        <!-- js -->
        <!-- jQuery (necessary for Bootstrap's JavaScript plugins) -->
        <script src="js/bootstrap.min.js"></script>
        <script src="js/bootstrap-select.js"></script>
        <script src="https://unpkg.com/sweetalert/dist/sweetalert.min.js"></script>
        <script>
            $(document).ready(function () {
                var mySelect = $('#first-disabled2');

                $('#special').on('click', function () {
                    mySelect.find('option:selected').prop('disabled', true);
                    mySelect.selectpicker('refresh');
                });

                $('#special2').on('click', function () {
                    mySelect.find('option:disabled').prop('disabled', false);
                    mySelect.selectpicker('refresh');
                });

                $('#basic2').selectpicker({
                    liveSearch: true,
                    maxOptions: 1
                });
            });
        </script>
        <script type="text/javascript" src="js/jquery.leanModal.min.js"></script>
        <link href="css/jquery.uls.css" rel="stylesheet"/>
        <link href="css/jquery.uls.grid.css" rel="stylesheet"/>
        <link href="css/jquery.uls.lcd.css" rel="stylesheet"/>
        <!-- Source -->
        <link href = "https://code.jquery.com/ui/1.10.4/themes/ui-lightness/jquery-ui.css"
              rel = "stylesheet">
        <script src = "https://code.jquery.com/jquery-1.10.2.js"></script>
        <script src = "https://code.jquery.com/ui/1.10.4/jquery-ui.js"></script>

        <script src="js/jquery.uls.data.js"></script>
        <script src="js/bootbox.min.js"></script>
        <script src="js/jquery.uls.data.utils.js"></script>
        <script src="js/jquery.uls.lcd.js"></script>
        <script src="js/jquery.uls.languagefilter.js"></script>
        <script src="js/jquery.uls.regionfilter.js"></script>
        <script src="js/jquery.uls.core.js"></script>




        <style>
            .ui-widget-header,.ui-state-default, ui-button {
                background:#b9cd6d;
                border: 1px solid #b9cd6d;
                color: #FFFFFF;
                font-weight: bold;
            }

            #sub:hover{
                background: red ;
            }
            a
            {
                color: black; 
            }
            .nav-tabs
            {
                border-bottom: none;
            }
            #container .list li
            {
                margin-bottom: 0px;
                padding: 0px 12px 1px 0px;
            }

        </style>

    </head>
    <body style="background-color: #0000001c;" >

        <!--<div id = "dialog-4" title = "Dialog Title goes here...">This my first jQuery UI Dialog!</div>-->


        <div class="header">
            <div class="container">
                <div class="logo">
                    <a href="Home.jsp"><span>e</span>tail</a>
                </div>
                <div class="header-right">
                    <a class="account" href="#">Profile</a>
                </div>
            </div>
        </div>
        <section>
            <div id="page-wrapper" class="sign-in-wrapper">
                <div class="graphs" style="background-color: #0000001c;">
                    <div class="sign-in-form" style="margin: auto; width: 98%;">
                        <div class="sign-in-form-top">

                        </div>
                        <div class="signin" style="padding:0px;height: 511px;">


                            <%
                                try {

                                    String emailes = session.getAttribute("emailse").toString();

                                    Class.forName("com.mysql.jdbc.Driver");
                                    Connection conn = DriverManager.getConnection("jdbc:mysql://localhost/tarunclark", "root", "");
                                    Statement stmt = conn.createStatement();
                                    ResultSet rs = stmt.executeQuery("select * from register WHERE email='" + emailes + "'");

                                    rs.next();

                                    String named = rs.getString(2);
                                    String emaild = rs.getString(3);
                                    // String passwordd=rs.getString(4);
                                    String phoned = rs.getString(7);
                                    String cityd = rs.getString(8);

                                    JOptionPane.showMessageDialog(null, emaild + "   " + named + "    " + phoned + "   " + cityd + " ");
                                    if (request.getParameter("submit") != null) {
                                        response.sendRedirect("Home.jsp");
                                    }

                            %>

                            <form  method="post">
                                <div class="container" style="position:relative;">

                                    <ul class="nav nav-tabs" style="position:relative;margin-top: 15px;">
                                        <li class="active" style="background-color:orange;"><a data-toggle="tab" href="#home">My Adds</a></li>
                                        <li><a data-toggle="tab" href="#menu1">Personal Info</a></li>
                                    </ul>

                                    <div class="tab-content" style="position: relative;

                                         border: solid;
                                         border-color: #0000002e;
                                         border-width: 1px;
                                         height: auto;">
                                        <div id="home" style="padding-top:0em;" class="tab-pane fade in active">
                                            <div id="container">

                                                <%                                                         String id = "";
                                                    String title = "";
                                                    String price = "";
                                                    String category = "";
                                                    String name = "";
                                                    String city = "";
                                                    String image = "";
                                                    String time = "";
                                                    try {

                                                        String email = request.getParameter("email");
                                                        String password = request.getParameter("password");
                                                        String emailse = session.getAttribute("emailse").toString();
                                                        Class.forName("com.mysql.jdbc.Driver");
                                                        Connection conn1 = DriverManager.getConnection("jdbc:mysql://localhost/tarunclark", "root", "");
                                                        Statement stmt1 = conn1.createStatement();
                                                        ResultSet rs1 = stmt1.executeQuery("select * from postadd where address='" + emailse + "'");
                   //    out.println("select * from postadd where category='"+cate+"'");
                                                        //       out.println("select * from postadd where category='Mobiles'");
                                                        JOptionPane.showMessageDialog(null, emailse);

                                                %>

                                                <div class="clearfix"></div>
                                                <ul class="list" style="    overflow: scroll;height: 425px;">

                                                    <%                                            while (rs1.next()) {
                                                            id = rs1.getString(1);
                                                            category = rs1.getString(2);
                                                            title = rs1.getString(3);
                                                            String description = rs1.getString(4);
                                                            image = rs1.getString(5);
                                                            name = rs1.getString(6);
                                                            String phone = rs1.getString(7);
                                                            String address = rs1.getString(8);
                                                            city = rs1.getString(9);
                                                            price = rs1.getString(10);
                                                            time = rs1.getString(11);

                                                    %>         


                                                    <a href="desc.jsp">
                                                        <li>
                                                            <img src="images/<%out.println(image); %>" alt="<% out.println(image); %>" style="width:22%;">

                                                            <section class="list-left">
                                                                <h5 class="title">
                                                                    <% out.print(title); %>
                                                                </h5>
                                                                <div class="adprice" style="display: inline-flex;"><div><img  style="width: auto;
                                                                                                                              border-style: none; height: 16px;
                                                                                                                              margin-top: 8px;" src="images/inr.png" alt="Rs "></div><div style="    margin-left: 5px;"><% out.print(price); %></div></div>
                                                                <div>  <p class="catpath"><% out.print(category); %> » <% out.print(title); %> » description</p></div>
                                                            </section>
                                                            <section class="list-right">
                                                                <span class="date"> <% out.print(time); %></span>
                                                                <div class="cityname" style="margin-top: 60px;"> <% out.print(city); %></div>
                                                            </section>



                                                            <div style="display: inline-block;position: relative;left: 100px;top: 72px;"> 
                                                                <button type="button" value="Edit" style=" ">  <a  href='edit.jsp?id=<% out.print(id); %>'><span class='glyphicon glyphicon-pencil'></a> 
                                                                </button>
                                                                <button type="button" value="Delete" style=" ">   <a  href='delete.jsp?id=<% out.print(id); %>'><span class='glyphicon glyphicon-trash'></a> 
                                                                </button>
                                                            </div>
                                                            <div class="clearfix"></div>

                                                        </li>

                                                    </a>

                                                    <%
                                                                //   JOptionPane.showMessageDialog(null,id);
                                                            }
                                                        } catch (Exception e) {
                                                            out.println(e);
                                                        }

                                                    %>       


                                                </ul>
                                            </div>
                                            <!-- ------ ---------------------------  -->
                                        </div>


                                        <div id="menu1" class="tab-pane fade">
                                            <div>
                                                <div style="margin-top: 14px;
                                                     display: inline-block;
                                                     padding: 10px 39px 0px 10px;
                                                     ">NAME:</div>
                                                <input type="text" name="name" value="<%out.print(named);%>" readonly style="position:relative;  left:60px; border-style:hidden; outline:none ">       
                                            </div>
                                            <hr>
                                            <div>
                                                <div style="margin-top: 14px;
                                                     display: inline-block;
                                                     padding: 10px 36px 0px 10px;
                                                     ">EMAIL :</div>
                                                <input type="text" name="name" value="<%out.print(emaild);%>" readonly style="position:relative;  left:60px; border-style:hidden; outline:none; width: 20%;">       

                                            </div>
                                            <hr>
                                            <div>
                                                <div style="margin-top: 14px;
                                                     display: inline-block;
                                                     padding: 10px 10px 0px 10px;
                                                     ">CONTACT :</div>
                                                <input type="text" name="name" value="<%out.print(phoned);%>" readonly style="position:relative;  left:60px; border-style:hidden; outline:none ">       

                                            </div>
                                            <hr>
                                            <div>
                                                <div style="margin-top: 14px;
                                                     display: inline-block;
                                                     padding: 10px 51px 0px 10px;
                                                     ">CITY :</div>
                                                <input type="text" name="name" value="<%out.print(cityd);%>" readonly style="position:relative;  left:60px; border-style:hidden; outline:none ">       

                                            </div>
                                            <hr>
                                            <input  id="sub" type="submit"  value="Home" name="submit">
                                            </form>
                                        </div>

                                    </div>
                                </div>




                                <!--                <input  id="sub" type="submit"  value=" Go To Home" name="submit">
                                                
                                              </form>-->

                        </div>


                        <%

                            } catch (Exception e) {
                                out.println(e);
                            }


                        %>

                        <!--              <button class="preview " onclick="swal()">Preview</button>-->

                        <footer class="diff">
                            <p class="text-center" style="background-color: #00000000 !important;margin-top: 36px;">&copy 2018 . All Rights Reserved | Design by <a href="#">Yogesh</a></p>
                        </footer>
                    </div>
                </div>
            </div>
            <!--footer section start-->

            <!--footer section end-->
        </section>

        <!--  <script>
                    function ar(){
                        
                     if ( request.getParameter("name")!=null){
                        JOptionPane.showMessageDialog(null,"Wrong credentials");
                     }   
                    }
                    
                </script>-->
    </body>
</html> 

