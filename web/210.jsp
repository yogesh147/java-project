<%-- 
    Document   : categories
    Created on : 03-May-2018, 11:34:51
    Author     : hp
--%>

<%@page import="javax.swing.JOptionPane"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.Connection"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>

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
        <meta name="keywords" content="etail Responsive web template, Bootstrap Web Templates, Flat Web Templates, Android Compatible web template, 
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
        </style>

    </head>
    <body>
        <div class="header">
            <div class="container">
                <div class="logo">
                    <a href="Home.jsp"><span>e</span>tail</a>
                </div>
                <div class="header-right">
                    <a class="account" href="#">Categories</a>



                </div>
            </div>
        </div>
        <script>
            $('#myModal').modal('');
        </script>
    
</div>
<div class="header-right">
    <%
        String id = "";
        String title = "";
        String price = "";
        String category = "";
        String name = "";
        String city = "";
        String image = "";
        String time = "";
        String query = "";
        String cate ="";
        String sort1 ="";
        String sort2 ="";
        ResultSet rs = null;
        Class.forName("com.mysql.jdbc.Driver");
        Connection conn = DriverManager.getConnection("jdbc:mysql://localhost/tarunclark", "root", "");
        Statement stmt = conn.createStatement();
String cityy = request.getParameter("city");
 sort2 = request.getParameter("sort2");
      //JOptionPane.showMessageDialog(null, cityy+ " " +sort2);
                               
        try {

            // String email = request.getParameter("email");
            //String password = request.getParameter("password");
            if(request.getParameter("cat")!=null)
            {
            cate = request.getParameter("cat");
            }            
           if (request.getParameter("city").equals("null")) {
                query = "select * from postadd where category='" + cate + "' ORDER BY price ";
            }
            else if(cate.equals("")) 
            {
                
                query = "select * from postadd where city='" + request.getParameter("city") + "' ORDER BY price ";
            }
            else if(request.getParameter("search")!=null)
                
            {
                 sort2 = request.getParameter("sort2");
                 cate = request.getParameter("cat");
                  JOptionPane.showMessageDialog(null, cityy+ " " +sort2+ " "+cate );
query = "select * from postadd where category='" + cate + "' And city='" + request.getParameter("city") + "' ORDER BY price desc ";
               
            }
            else
            {
                JOptionPane.showMessageDialog(null, cityy+ " " +cate );
            query = "select * from postadd where category='" + cate + "' And city='" + request.getParameter("city") + "' ORDER BY price  ";
            }
            
           // String cityy = request.getParameter("city");
           // out.println(query);
            
            rs = stmt.executeQuery(query);
            
            //    out.println("select * from postadd where category='"+cate+"'");
            //       out.println("select * from postadd where category='Mobiles'");
    %>
</div>
</div>
</div>
<div class="banner text-center">
    <div class="container">
        <h1>Sell or Advertise   <span class="segment-heading">    anything online </span> with etail</h1>
        <p>Easiest way to sell and buy anything</p>
        <a href="postadd.jsp">Post Free Ad</a>
    </div>
</div>

<form action="categoriest.jsp" method="post">
    <div class="total-ads main-grid-border">
        <div class="container">
            <div class="select-box" style="padding: 30px 30px 107px 76px;">
                <div class="select-city-for-local-ads ads-list">
                    <label>Select your city to see local ads</label>
                    <select name="city">

                        <optgroup label="Popular Cities">
                            <option disbaled style="display:none;color:#eee;">Entire India</option>
                         <!--   <option>All Cities</option>
                            <optgroup label="More"> -->
                         <option selected value="chandigarh">chandigarh</option>
                            <option>Mohali </option>
                            <option>Hoshiarpur</option>
                            <option>Mukerian</option>
                            <option>Gurdaspur</option>
                            <option>Pathankot</option>
                            <option>Kapurthala</option>
                            <option>Sangrur</option>
                            <option>Tarn Taran</option>
                            <option>Abohar</option>
                            <option>Batala</option>

                            <option>Jagraon</option>
                            <option>Dasua</option>
                        </optgroup> </optgroup>
                        <optgroup label="More Cities">
                        <optgroup label="More">
                            <option>Ludhiana</option>
                            <option>Amritsar</option>
                            <option>Jalandhar</option>
                            <option>Patiala</option>
                            <option>Bathinda</option>
                            <option>Moga</option>
                            <option>Mukatsar sahib</option>
                            <option>Mansa</option>
                            <option>Fatehgarh Sahib</option>
                            <option>Sas Nagar</option>
                            <option>Faridkot</option>
                            <option>Fazilka</option>
                            <option>Roop Nagar </option>
                            <option>Ferozpur</option>
                            <option>Anandpur Sahib</option>
                            <option>Ropar</option>
                            <option>Barnala</option>
                        </optgroup>			
                        </optgroup>
                    </select>
                </div>

                <div class="browse-category ads-list">
                    <label>Sort Price</label>
                    <select name="sort2" class="selectpicker show-tick" data-live-search="true">
                        <option  data-tokens="Mobiles" value="lth">Low to High</option>
                        <option  data-tokens="Mobiles" value="desc">High to Low</option>
                    </select>
                </div>
                <div class="search-product ads-list">
                    <label>Click Here </label>
                    <div class="search">
                        <div id="custom-search-input" style="width:20%;">
                            <div class="input-group">
                                <!--	<input type="text" class="form-control input-lg" placeholder="Search" />       -->
                             <!--   <span class="input-group-btn">
                                    <button class="btn btn-info btn-lg" type="button">
                                        <i class="glyphicon glyphicon-search"></i>
                                    </button> -->
                                </span>
                                <input type="submit" class="btn btn-primary" name="search">
                                
                            </div>
                        </div>
                    </div>
<%   if(request.getParameter("search")==null)
{
    cate = request.getParameter("cat");
     cityy = request.getParameter("city");
     sort1 = request.getParameter("sort1");
     sort2 = request.getParameter("sort2");
    }
%>

                </div>
            </div>
        </div>
    </div>
</form>
<!-- Categories -->
<!--Vertical Tab-->
<div class="categories-section main-grid-border">
    <div class="container">
        <h2 class="head">Main Categories</h2>
        <div class="category-list">
            <div id="parentVerticalTab">
                <ul class="resp-tabs-list " style="padding-top:0px;">

                    <li><a class="tabs"  href="categoriest.jsp?cat=Mobiles&city=<%out.print(cityy); %>">Mobiles</a></li>
                    <hr>
                    <li><a class="tabs" href="categoriest.jsp?cat=Electronics and Appliance&city=<%out.print(cityy); %>">Electronics & Appliances</a></li>
                    <hr> <li><a class="tabs" href="categories.jsp?cat=Cars&city=<%out.print(cityy); %>">Cars</a></li>
                    <hr> <li><a class="tabs" href="categories.jsp?cat=Bikes&city=<%out.print(cityy); %>">Bikes</a></li>
                    <hr> <li><a class="tabs" href="categories.jsp?cat=Furniture&city=<%out.print(cityy); %>">Furniture</a></li>
                    <hr> <li><a class="tabs" href="categories.jsp?cat=Pets&city=<%out.print(cityy); %>">Pets</a></li>
                    <hr> <li><a class="tabs" href="categories.jsp?cat=Books, Sports and Hobbies&city=<%out.print(cityy); %>">Books, Sports and Hobbies</a></li>
                    <hr> <li><a class="tabs" href="categories.jsp?cat=Fashion&city=<%out.print(cityy); %>">Fashion</a></li>
                    <hr> <li><a class="tabs" href="categories.jsp?cat=Kids&city=<%out.print(cityy); %>">Kids</a></li>
                    <hr> <li><a  class="tabs" href="categories.jsp?cat=Services&city=<%out.print(cityy); %>">Services</a></li>
                    <hr> <li><a class="tabs" href="categories.jsp?cat=Jobs&city=<%out.print(cityy); %>">Jobs</a></li>
                    <hr> <li><a class="tabs" href="categories.jsp?cat=Real Estate&city=<%out.print(cityy); %>">Real Estate</a></li>
                    <hr> <li><a class="tabs" href="all-classifieds.html">All Ads</a></li>
                </ul>





                <div class="resp-tabs-container " >
                    <span class="active total" style="display:block;" data-toggle="modal" data-target="#myModal"><strong>See your recent add here</strong></span>
                    <div>
                        <div id="container">

                            <div class="clearfix"></div>
                            <ul class="list">

                                <%
                                    while (rs.next()) {

                                        category = rs.getString(2);
                                        title = rs.getString(3);
                                        String description = rs.getString(4);
                                        image = rs.getString(5);
                                        name = rs.getString(6);
                                        String phone = rs.getString(7);
                                        String address = rs.getString(8);
                                        city = rs.getString(9);
                                        price = rs.getString(10);
                                        time = rs.getString(11);
                                        id = rs.getString(1);

                                        
                                %>         


                                <a href="desc.jsp?id=<% out.print(id); %>">
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
                                        <div class="clearfix"></div>
                                    </li>
                                </a>

                                <%
                                        }
                                    } catch (Exception e) {
                                        out.println(e);
                                    }


                                %>       


                            </ul>
                        </div>
                        <!--    ---------------------   -->

                    </div>








                </div>






            </div>
            <div class="clearfix"></div>
        </div>
    </div>
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
<!--footer section end-->
</body>
</html>
