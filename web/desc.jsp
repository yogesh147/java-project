<%-- 
    Document   : desc
    Created on : 04-May-2018, 09:43:05
    Author     : hp
--%>

<%@page import="javax.swing.JOptionPane"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.Driver"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.Connection"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>

<!--
To change this license header, choose License Headers in Project Properties.
To change this template file, choose Tools | Templates
and open the template in the editor.
-->
<html>
    <head>
        <title>ClarkeSty a Business Category Flat Bootstrap Responsive Website</title>

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
        <script>
            $(document).ready(function () {
                var mySelect = $('#f-irst-disabled2');

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
        <script src="js/jquery.uls.data.js"></script>
        <script src="js/jquery.uls.data.utils.js"></script>
        <script src="js/jquery.uls.lcd.js"></script>
        <script src="js/jquery.uls.languagefilter.js"></script>
        <script src="js/jquery.uls.regionfilter.js"></script>
        <script src="js/jquery.uls.core.js"></script>
        <script>
            $(document).ready(function () {
                $('.uls-trigger').uls({
                    onSelect: function (language) {
                        var languageName = $.uls.data.getAutonym(language);
                        $('.uls-trigger').text(languageName);
                    },
                    quickList: ['en', 'hi', 'he', 'ml', 'ta', 'fr'] //FIXME
                });
            });
        </script>
        <link rel="stylesheet" type="text/css" href="css/easy-responsive-tabs.css " />
        <script src="js/easyResponsiveTabs.js"></script>

        <style>
            #div1 {
                border:ridge;
                height:1200px;
                width:1000px;
                position: relative;
                left:150px;
                top:50px;
            }

            #innerfull {
                border:ridge;
                height:1140px;
                width:610px;
                position: relative;
                left:30px;
                top:20px;   



            }
            #inner1 {

                border:ridge;
                height:80px;
                width:550px;
                position: relative;
                left:20px;
                top:30px;

            }

            #inner2 {
                border:ridge;
                height:20px;
                width:200px;
                position: relative;
                left:50px;
                top:50px;   

            }

            #inner3 {
                border:ridge;
                height:20px;
                width:200px;
                position: relative;
                left:250px;
                top:30px;   

            }

            #inner4 {
                border:ridge;
                height:400px;
                width:400px;
                position: relative;
                left:60px;
                top:100px;   

            }

            #inner5 {
                border:ridge;
                height:400px;
                width:400px;
                position: relative;
                left:60px;
                top:150px;   

            }

            #right1 {
                border:ridge;
                height:70px;
                width:200px;
                position: relative;
                left:780px;
                bottom:1100px;   
                border-radius:0px 0px 0px 0px;

            }

            #right2 {

                height:70px;
                width:200px;
                position: relative;
                left:780px;
                bottom:1000px;   
                border-radius:10px 10px 10px 10px;

            }

            #right2>button {
                height:68px;
                width:200px;
                border-radius:10px 10px 10px 10px;    
                background-color: #01a185    
            }

            #right2>button>h3 {

                color:#FFFFFF;

            }
            .arrow{
                position:relative;
            }
            .arrow:before{
                content:'';
                position:absolute;
                height:0;
                width:0;
                border-right:50px solid #ddd;
                border-top:50px solid transparent;
                border-bottom:50px solid transparent;
                left:-49px;
            }

        </style>

    </head>

    <body >
        <div>
            <div class="header" >
                <div class="container" >
                    <div class="logo" >
                        <a href="Home.jsp"><span>Clarke</span>Sty</a>
                    </div>


                    <div style="height:33px; width:25px; position:relative; left:840px; top:33px; "> </div>
                    <div class="header-right">
                        <% if (session.getAttribute("emailse") != null) {

                        %>
                        <a class="account" href="cart.jsp" style="position:relative; right:30px; bottom:30px;">View Cart</a>
                        <%                        }
                        %>
                        <a class="account" href="Home.jsp" style="position:relative; right:30px; bottom:30px;">Home</a>

                    </div>
                </div>
            </div>

            <%
                String title = "";
                String price = "";
                String city = "";
                String image = "";
                String date = "";
                String desc = "";
                String category = "";
                String name = "";
                String time = "";
                String phone = "";
                String address = "";
                String description = "";

                try {
                    String id = request.getParameter("id");

                    Class.forName("com.mysql.jdbc.Driver");
                    Connection conn = DriverManager.getConnection("jdbc:mysql://localhost/test", "root", "");
                    Statement stmt = conn.createStatement();
                    ResultSet rs = stmt.executeQuery("select * from postadd where id=" + id + "");

                    rs.next();
                    id = rs.getString(1);
                    category = rs.getString(2);
                    title = rs.getString(3);
                    desc = rs.getString(4);
                    image = rs.getString(5);
                    name = rs.getString(6);
                    phone = rs.getString(7);
                    address = rs.getString(8);
                    city = rs.getString(9);
                    price = rs.getString(10);

                } catch (Exception e) {
                    out.println(e);
                }


            %>
            <div id="div1">

                <div id="innerfull">

                    <div id="inner1"><% out.print(title);%> </div>
                    <div id="inner2"><% out.print(city);%> </div>
                    <div id="inner3"><% out.print(date);%> </div>
                    <div id="inner4"><% out.print("<img src= images/" + image + " style='height:100px;width:100px;' alt='image'>");%> </div>
                    <div id="inner5"><% out.print(desc);%> </div>

                </div>
                <div  id="right1" class="arrow" style="
                      height: 100px;
                      //  display: inline-block;
                      width: 17%;
                      background:#ddd;
                      margin-left:32px;
                      border-style: none;"><% out.print(price);%> </div>  

                <div id="right2">
                    <button type="button" name="Login">
                        <a  href="email.jsp">Click to Chat</a>
                    </button> 
                    <button type="button" name="Login">
                        <a  href="payment.jsp?price=<%out.print(price);%>">Buy now</a>
                    </button> 
                    <form action="Cart" method="post">
                         <input type="hidden" value="<%out.print(request.getParameter("id"));%>" name="hidden"/>
                         <div style="    display: -webkit-inline-box;margin-top: 76px;}">

                            <button type="button" id="a" class="decrement-btn">-</button>
                            <input  style="text-align: center;width: 44px;" type="text" value="1" name="texts" class="counter"/>
                            <button type="button"  class="increment-btn">+</button>
                        </div>
                         <input type="submit" name="cartbtn" value="ADD TO CART">
                     
                    </form>
                      
                        <script>
                                   var $button = $('.increment-btn');
                                   var $button1 = $('.decrement-btn');
                                   var $counter = $('.counter');



                                   $button.click(function () {
                                       $counter.val(parseInt($counter.val()) + 1); // `parseInt` converts the `value` from a string to a number
                                       var $counter1 = parseInt($counter.val());

                                       if ($counter1 >= 1)
                                       {
                                           $("#a").show();
                                       }
                       //        alert($counter.val());
                                   });




                                   $button1.click(function () {


                                       $counter.val(parseInt($counter.val()) - 1); // `parseInt` converts the `value` from a string to a number
                                       var $counter1 = parseInt($counter.val());
                                       if ($counter1 <= 1)
                                       {
                                           $("#a").hide();
                                       }



                                   });
                       //alert(document.getElementById("prices").innerHTML);
                        </script>


                </div>

            </div>
        </div>


    </body>
</html>
