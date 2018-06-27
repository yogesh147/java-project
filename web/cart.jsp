<%-- 
    Document   : cart
    Created on : 16-May-2018, 09:14:44
    Author     : hp
--%>

<%@page import="javax.swing.JOptionPane"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.Connection"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">

        <title>etail a Business Website</title>
       
        <link rel="stylesheet" href="css/bootstrap.min.css">
        <link rel="stylesheet" href="css/bootstrap-select.css">
        <link href="css/style.css" rel="stylesheet" type="text/css" media="all" />

        <meta name="viewport" content="width=device-width, initial-scale=1">
        <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
        <meta name="keywords" content="etail Responsive web template, Bootstrap Web Templates, Flat Web Templates, Android Compatible web template, 
              Smartphone Compatible web template, free webdesigns for Nokia, Samsung, LG, Sony Ericsson, Motorola web design" />
        <script type="application/x-javascript"> addEventListener("load", function() { setTimeout(hideURLbar, 0); }, false); function hideURLbar(){ window.scrollTo(0,1); } </script>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.1/jquery.min.js"></script>

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
        <script src="js/jquery.uls.data.js"></script>
        <script src="js/jquery.uls.data.utils.js"></script>
        <script src="js/jquery.uls.lcd.js"></script>
        <script src="js/jquery.uls.languagefilter.js"></script>
        <script src="js/jquery.uls.regionfilter.js"></script>
        <script src="js/jquery.uls.core.js"></script>

        <link rel="stylesheet" type="text/css" href="css/easy-responsive-tabs.css " />
        <script src="js/easyResponsiveTabs.js"></script>
        <style>
            li
            {
                background-color: white !important;
                border-color: transparent !important;
            }
            .tabs{

                text-decoration: none !important ; 
                color: #f3c500;
            }  
            .sp-quantity div { display: inline; }
        </style>
       
    </head>
    <body>

        <div class="header">
            <div class="container">
                <div class="logo">
                    <a href="Home.jsp"><span>e</span>tail</a>
                </div>
                <div class="header-right">
                    <a class="account" href="Home.jsp">Categories</a>
                </div>
            </div>
        </div>
        <div class="header-right">

        </div>
        <div class="banner text-center">
            <div class="container">
                <h1>Sell or Advertise   <span class="segment-heading">    anything online </span> with etail</h1>
                <p>Easiest way to sell and buy anything</p>
                <a href="postadd.jsp">Post Free Ad</a>
            </div>
            <span class="active total" style="display:block;" data-toggle="modal" data-target="#myModal"><strong>See your Selected items</strong></span>

        </div>
        <%
            int priceTotal = 0;
            String id = "";
            String title = "";
            int price = 0;
            String category = "";
            String name = "";
            String city = "";
            String image = "";
            String time = "";
            String query = "";
            int quantity =0;
            
            String cate = "";
            ResultSet rs = null;
            Class.forName("com.mysql.jdbc.Driver");
            Connection conn = DriverManager.getConnection("jdbc:mysql://localhost/test", "root", "");
            Statement stmt = conn.createStatement();
     //id = request.getParameter("id");
            // JOptionPane.showMessageDialog(null,id);
            //   out.print(sort);
            try {

                query = "select * from cart ORDER BY price asc";
//                if (request.getParameter("id")!=null) {
//
//                    query = "insrt into cart where id='" + id + "' ORDER BY price asc";
//                }
                rs = stmt.executeQuery(query);

                while (rs.next()) {
                    id = rs.getString(1);
                  
                    
                    category = rs.getString(2);
                    title = rs.getString(3);
                    String description = rs.getString(4);
                    image = rs.getString(5);
                    name = rs.getString(6);
                    String phone = rs.getString(7);
                    String address = rs.getString(8);
                    city = rs.getString(9);
                    price = Integer.parseInt(rs.getString(10));
                    quantity = Integer.parseInt(rs.getString(11));
                    
                   price=price*quantity;
                    priceTotal = priceTotal + price;
                    if (category != null) {
        %>  

        <div class="categories-section main-grid-border">
            <div class="container">

                <div class="resp-tabs-container " >
                    <div>
                        <div id="container">

                            <div class="clearfix"></div>
                            <ul class="list">



                                
                                   <li>
                                   <img src="images/<%out.println(image); %>" alt="<% out.println(image); %>" style="width:22%;">

                                   <section class="list-left">
                                        <h5 class="title">
                                            <% out.print(title); %>
                                        </h5>
                                        <div class="adprice" style="display: inline-flex;">
                                            <div>
                                                <img  style="width: auto;border-style: none; height: 16px;margin-top: 8px;" src="images/inr.png" alt="Rs ">
                                            </div>
                                            <div style="margin-left: 5px;"><p id="prices" style="font-size: x-large;
    margin-top: 0px;
    color: black;"><% out.print(price); %></p></div>
                                          
                                        </div>
                                        <div>  <p class="catpath"><% out.print(category); %> » <% out.print(title); %> » description</p></div>
                                    </section>
                                    <section class="list-right">
                                        <span class="date"> <% out.print(time); %></span>
                                        <div class="cityname" style="margin-top: 60px;"> <% out.print(city); %></div>
                                 
                                          <div class="quant" style="margin-top: 60px;">Quantity <% out.print(quantity); %></div>
                                   
                                    </section>
     
    
    
                                    
                                    
                                    <div style="    display: inline-block;
    position: absolute;
    right: 183px;"> 
                                        <button type="button" value="Delete" style="margin-top: 22px; ">   <a  href='deletecart.jsp?id=<% out.print(id); %>'><span class='glyphicon glyphicon-trash'></a> 
                                        </button>
                                    </div>
                                    <div class="clearfix"></div>

                                    </li>


                                <%
                                            }

                                        }

                                    } catch (Exception e) {
                                        out.println(e);
                                    }
                                %>       
                            </ul>

                            <div id="right1"><div id="right1innerleft"><img src="images/inr.png" style="width: 16px;position: relative;top: 23px;left: 2px;"/><div style="    margin-left: 24px;
                                                                                                                                                                   font-size: 20px;"><%out.println(priceTotal);%></div> </div>
                                <div id="right1innerright"><h2 style="color: #fff;width: 113px;position: relative;left: 25px;bottom: 6px;"> <% out.print(price); %></h2></div></div>
                            <button type="button" name="Login">
                                <div>     <a  href="payment.jsp?price=<%out.print(priceTotal);%>">Buy now</a>  </div>
                            </button> 
                        </div>
                        <!--    ---------------------   -->
                    </div>
                </div>

                <div class="clearfix"></div>

            </div>
        </div>

        <!--Plug-in Initialisation-->
        <script type="text/javascript">
            $(document).ready(function () {

                //Vertical Tab
                $('#parentVerticalTab').easyResponsiveTabs({
                    type: 'vertical', //Types: default, vertical, accordion
                    width: 'auto', //auto or any width like 600px
                    fit: true, // 100% fit in a container
                    closed: 'accordion', // Start closed if in accordion view
                    tabidentify: 'hor_1' // The tab groups identifier

                });
            });
        </script>
        <!-- //Categories -->
        <!--footer section start-->		
        <footer>
            <div class="footer-top">
                <div class="container">
                    <div class="foo-grids">
                        <div class="col-md-3 footer-grid">
                            <h4 class="footer-head">Who We Are</h4>
                            <p>It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout.</p>
                            <p>The point of using Lorem Ipsum is that it has a more-or-less normal letters, as opposed to using 'Content here.</p>
                        </div>
                        <div class="col-md-3 footer-grid">
                            <h4 class="footer-head">Help</h4>
                            <ul>
                                <li><a href="howitworks.html">How it Works</a></li>
                                <li><a href="sitemap.html">Sitemap</a></li>
                                <li><a href="faq.html">Faq</a></li>
                                <li><a href="feedback.html">Feedback</a></li>
                                <li><a href="contact.html">Contact</a></li>
                                <li><a href="typography.html">Shortcodes</a></li>
                            </ul>
                        </div>
                        <div class="col-md-3 footer-grid">
                            <h4 class="footer-head">Information</h4>
                            <ul>
                                <li><a href="regions.html">Locations Map</a></li>
                                <li><a href="terms.html">Terms of Use</a></li>
                                <li><a href="popular-search.html">Popular searches</a></li>
                                <li><a href="privacy.html">Privacy Policy</a></li>
                            </ul>
                        </div>
                        <div class="col-md-3 footer-grid">
                            <h4 class="footer-head">Contact Us</h4>
                            <span class="hq">Our headquarters</span>
                            <address>
                                <ul class="location">
                                    <li><span class="glyphicon glyphicon-map-marker"></span></li>
                                    <li>CENTER FOR FINANCIAL ASSISTANCE TO DEPOSED NIGERIAN ROYALTY</li>
                                    <div class="clearfix"></div>
                                </ul>
                                <ul class="location">
                                    <li><span class="glyphicon glyphicon-earphone"></span></li>
                                    <li>+0 561 111 235</li>
                                    <div class="clearfix"></div>
                                </ul>
                                <ul class="location">
                                    <li><span class="glyphicon glyphicon-envelope"></span></li>
                                    <li><a href="mailto:info@example.com">mail@example.com</a></li>
                                    <div class="clearfix"></div>
                                </ul>
                            </address>
                        </div>
                        <div class="clearfix"></div>
                    </div>
                </div>
            </div>
            <div class="footer-bottom text-center">
                <div class="container">
                    <div class="footer-logo">
                        <a href="index.html"><span>e</span>tail</a>
                    </div>
                    <div class="footer-social-icons">
                        <ul>
                            <li><a class="facebook" href="#"><span>Facebook</span></a></li>
                            <li><a class="twitter" href="#"><span>Twitter</span></a></li>
                            <li><a class="flickr" href="#"><span>Flickr</span></a></li>
                            <li><a class="googleplus" href="#"><span>Google+</span></a></li>
                            <li><a class="dribbble" href="#"><span>Dribbble</span></a></li>
                        </ul>
                    </div>
                    <div class="copyrights">
                        <p> © 2016 etail. All Rights Reserved | Design by  <a href="http://w3layouts.com/"> W3layouts</a></p>
                    </div>
                    <div class="clearfix"></div>
                </div>
            </div>
        </footer>

    </body>
</html>
