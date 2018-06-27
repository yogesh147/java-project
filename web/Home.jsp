<%-- 
    Document   : Home
    Created on : 30-Apr-2018, 15:59:55
    Author     : hp
--%>

<%@page import="javax.swing.JOptionPane"%>
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
       <meta name="viewport" content="width=device-width, initial-scale=1">
    <link rel="stylesheet" href="css/bootstrap.min.css">
    <link rel="stylesheet" href="css/bootstrap-select.css">
    <link href="css/style.css" rel="stylesheet" type="text/css" media="all" />
    <link rel="stylesheet" href="css/flexslider.css" type="text/css" media="screen" />
    <link rel="stylesheet" href="css/font-awesome.min.css" />
    <!-- for-mobile-apps -->
   
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
 
    <style>
        .sessionblock        {
            width: auto;
    text-align: center;
    color: white;
    background-color: #f3c500;
    font-size: 15px;
    border-style: none;
    margin-top: 12px;
    height: 44px;
    border-radius: 7px;
    padding:0 15px;
    
        }
        .sessionblock:hover{
        background:#01a185;
        }
       .sessionblock:hover + .dropdown-menu, .dropdown-menu:hover, .dropdown:hover .dropdown-menu  {
            display:block;
        }
        .dropdown-menu{
            top:57px;
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
         
            <table>
                <tr >
                    <td style="width: 2px; height: 2px;" >
                       <%
                        if(session.getAttribute("named")!= null)
                        { 
                       %>
               <div class="dropdown">         
 <button type="button" class="sessionblock btn btn-primary dropdown-toggle" >
  <%out.print(session.getAttribute("named"));%></button>
   
    <ul class="dropdown-menu">
      <li><a href="Profile.jsp">My Profile</a></li>
      <li><a href="Home2">Logout</a></li>
    </ul>
               </div>
 <%  }
                        
                    else 
                        {
 %>
           <a class="account"  style="margin-bottom: 10px; width: 154px;" href="Login.jsp">My Account</a> 
       
                       <% }%>
                        
                        
                        

                    </td>  
                           <td>
          <!-- Large modal -->
               <div class="selectregion">
              <button class="btn btn-primary" style="margin-top: 15px; padding: 0 0 22px 14px; " data-toggle="modal" data-target="#myModal">
            Select Your Region</button>
            <div class="modal fade" id="myModal" tabindex="-1" role="dialog" aria-labelledby="myLargeModalLabel"
              aria-hidden="true">
              <div class="modal-dialog modal-lg">
                <div class="modal-content">
                  <div class="modal-header">
                    <button type="button" class="close" data-dismiss="modal" aria-hidden="true">
                    &times;</button>
                    <h4 class="modal-title" id="myModalLabel">
                      Please Choose Your Location
                    </h4>
                  </div>
                    
                  <div class="modal-body">
                      <form class="form-horizontal" role="form" method="post">
                      <div class="form-group">
                          <select name="cities" id="basic2" class="show-tick form-control" multiple>
                          <optgroup label="Popular Cities">
                            <option selected style="display:none;color:#eee;">Select City</option>
                         <option value="Una">   Una</option>
                            <option>Delhi </option>
                            <option>Bangalore</option>
                            <option>Hyderabad</option>
                            <option>Ahmedabad</option>
                            <option>Chennai</option>
                            <option>Kolkata</option>
                            <option>Surat</option>
                            <option>Pune</option>
                            <option>Jaipur</option>
                            <option>Lucknow</option>
                            <option>Kanpur</option>
                            <option>Nagpur</option>
                            <option>Indore</option>
                          </optgroup>
                          <optgroup label="More Cities">
                          <optgroup label="Punjab">
                            <option>Ludhiana</option>
                            <option>Amritsar</option>
                            <option>Jalandhar</option>
                            <option>Patiala	</option>
                            <option>Bathinda</option>
                          </optgroup>
                          <optgroup label="Alaska">
                            <option>Anchorage</option>
                            <option>Fairbanks</option>
                            <option>Juneau</option>
                            <option>Sitka</option>
                            <option>Ketchikan</option>
                          </optgroup>
                          <optgroup label="Arizona">
                            <option>Phoenix</option>
                            <option>Tucson</option>
                            <option>Mesa</option>
                            <option>Chandler</option>
                            <option>Glendale</option>
                          </optgroup>
                          <optgroup label="Arkansas">
                            <option>Little Rock</option>
                            <option>Fort Smith</option>
                            <option>Fayetteville</option>
                            <option>Springdale</option>
                            <option>Jonesboro</option>
                          </optgroup>
                          <optgroup label="California">
                            <option>Los Angeles</option>
                            <option>San Diego</option>
                            <option>San Jose</option>
                            <option>San Francisco</option>
                            <option>Fresno</option>
                          </optgroup>
                          <optgroup label="Colorado">
                            <option>Denver</option>
                            <option>Colorado</option>
                            <option>Aurora</option>
                            <option>Fort Collins</option>
                            <option>Lakewood</option>
                          </optgroup>
                          <optgroup label="Connecticut">
                            <option>Bridgeport</option>
                            <option>New Haven</option>
                            <option>Hartford</option>
                            <option>Stamford</option>
                            <option>Waterbury</option>
                          </optgroup>   
                         
                       
                       
                         
                        </select>
                      </div>
                        <input type="submit" action="#" class="btn btn-primary" name="city" style="padding-left: 1px;
    width: 115px;
    height: 36px;
    border-radius: 10px;"/>
                    </form>
                  </div>
                      <%
                      String cities=  request.getParameter("cities");
                       if(request.getParameter("city")!=null)
                       {
                     //  out.println(cities);
                       }
                       %>
                </div>
                 </div>
                 </div>
               
               </div>
                </td>
              
            </tr>   
            </table>
          
                     
               </div>      
        </div>
      </div>

   
    <div class="main-banner banner text-center">
      <div class="container">
         <% if(cities!=null)  {          %>
          <a style="position:relative; bottom:147px; left:620px;"> <% out.println(cities);%> </a>
          <%  } %>
        
        <h1>Sell or Advertise   <span class="segment-heading">    anything online </span> with etail</h1>
        <p>Easiest way to sell and buy anything</p>
        <% if(session.getAttribute("named")!=null)  
       
 { %>
        <a href="postadd.jsp">Post Free Ad </a><% }
        else
        {%>
        <p style="color: #f3c500;
    margin: 0px 0 30px 0;
    font-size: 20px;
    font-family: sans-serif;
    font-weight: bold;">Create an Account to post your own add</p>  
       <% }%>
                
      </div>
    </div>
    <!-- content-starts-here -->
    <div class="content">
      <div class="categories" style="padding:0px;">
        <div class="container">
          <div class="col-md-2 focus-grid">
             
            <a href="categoriest.jsp?cat=Mobiles&city=<% out.print(cities);   %>">
              <div class="focus-border">
                <div class="focus-layout">
                  <div class="focus-image"><i class="fa fa-mobile"></i></div>
                  <h4 class="clrchg">Mobiles</h4>
                </div>
              </div>
            </a>
          </div>
          <div class="col-md-2 focus-grid">
            <a href="categoriest.jsp?cat=Electronics and Appliance&city=<% out.print(cities);   %>">
              <div class="focus-border">
                <div class="focus-layout">
                  <div class="focus-image"><i class="fa fa-laptop"></i></div>
                  <h4 class="clrchg"> Electronics & Appliances</h4>
                </div>
              </div>
            </a>
          </div>
          <div class="col-md-2 focus-grid">
            <a href="categoriest.jsp?cat=Cars&city=<% out.print(cities);   %>">
              <div class="focus-border">
                <div class="focus-layout">
                  <div class="focus-image"><i class="fa fa-car"></i></div>
                  <h4 class="clrchg">Cars</h4>
                </div>
              </div>
            </a>
          </div>
          <div class="col-md-2 focus-grid">
            <a href="categoriest.jsp?cat=Bikes&city=<% out.print(cities);   %>">
              <div class="focus-border">
                <div class="focus-layout">
                  <div class="focus-image"><i class="fa fa-motorcycle"></i></div>
                  <h4 class="clrchg">Bikes</h4>
                </div>
              </div>
            </a>
          </div>
          <div class="col-md-2 focus-grid">
            <a href="categoriest.jsp?cat=Furnitures&city=<% out.print(cities);   %>">
              <div class="focus-border">
                <div class="focus-layout">
                  <div class="focus-image"><i class="fa fa-wheelchair"></i></div>
                  <h4 class="clrchg">Furnitures</h4>
                </div>
              </div>
            </a>
          </div>
          <div class="col-md-2 focus-grid">
            <a href="categoriest.jsp?cat=Pets&city=<% out.print(cities);   %>">
              <div class="focus-border">
                <div class="focus-layout">
                  <div class="focus-image"><i class="fa fa-paw"></i></div>
                  <h4 class="clrchg">Pets</h4>
                </div>
              </div>
            </a>
          </div>
          <div class="col-md-2 focus-grid">
            <a href="categoriest.jsp?cat=Books, Sports & Hobbies&city=<% out.print(cities);   %>">
              <div class="focus-border">
                <div class="focus-layout">
                  <div class="focus-image"><i class="fa fa-book"></i></div>
                  <h4 class="clrchg">Books, Sports & Hobbies</h4>
                </div>
              </div>
            </a>
          </div>
          <div class="col-md-2 focus-grid">
            <a href="categoriest.jsp?cat=Fashion&city=<% out.print(cities);   %>">
              <div class="focus-border">
                <div class="focus-layout">
                  <div class="focus-image"><i class="fa fa-asterisk"></i></div>
                  <h4 class="clrchg">Fashion</h4>
                </div>
              </div>
            </a>
          </div>
          <div class="col-md-2 focus-grid">
            <a href="categoriest.jsp?cat=Kids&city=<% out.print(cities);   %>">
              <div class="focus-border">
                <div class="focus-layout">
                  <div class="focus-image"><i class="fa fa-gamepad"></i></div>
                  <h4 class="clrchg">Kids</h4>
                </div>
              </div>
            </a>
          </div>
          <div class="col-md-2 focus-grid">
            <a href="categoriest.jsp?cat=Services&city=<% out.print(cities);   %>">
              <div class="focus-border">
                <div class="focus-layout">
                  <div class="focus-image"><i class="fa fa-shield"></i></div>
                  <h4 class="clrchg">Services</h4>
                </div>
              </div>
            </a>
          </div>
          <div class="col-md-2 focus-grid">
            <a href="categoriest.jsp?cat=Jobs&city=<% out.print(cities);   %>">
              <div class="focus-border">
                <div class="focus-layout">
                  <div class="focus-image"><i class="fa fa-at"></i></div>
                  <h4 class="clrchg">Jobs</h4>
                </div>
              </div>
            </a>
          </div>
          <div class="col-md-2 focus-grid">
            <a href="categoriest.jsp?cat=Real Estate&city=<% out.print(cities);   %>">
              <div class="focus-border">
                <div class="focus-layout">
                  <div class="focus-image"><i class="fa fa-home"></i></div>
                  <h4 class="clrchg">Real Estate</h4>
                </div>
              </div>
            </a>
          </div>
          <div class="clearfix"></div>
        </div>
      </div>
      <div class="trending-ads">
        <div class="container">
          <!-- slider -->
          <div class="trend-ads">
            <h2>Trending Ads</h2>
            <ul id="flexiselDemo3">
              <li>
                <div class="col-md-3 biseller-column">
                  <a href="single.html">
                  <img src="images/p1.jpg"/>
                  <span class="price">&#36; 450</span>
                  </a> 
                  <div class="ad-info">
                    <h5>There are many variations of passages</h5>
                    <span>1 hour ago</span>
                  </div>
                </div>
                <div class="col-md-3 biseller-column">
                  <a href="single.html">
                  <img src="images/p2.jpg"/>
                  <span class="price">&#36; 399</span>
                  </a> 
                  <div class="ad-info">
                    <h5>Lorem Ipsum is simply dummy</h5>
                    <span>3 hour ago</span>
                  </div>
                </div>
                <div class="col-md-3 biseller-column">
                  <a href="single.html">
                  <img src="images/p3.jpg"/>
                  <span class="price">&#36; 199</span>
                  </a> 
                   
                  <div class="ad-info">
                    <h5>It is a long established fact that a reader</h5>
                    <span>8 hour ago</span>
                  </div>
                </div>
                <div class="col-md-3 biseller-column">
                  <a href="single.html">
                  <img src="images/p4.jpg"/>
                  <span class="price">&#36; 159</span>
                  </a> 
                  <div class="ad-info">
                    <h5>passage of Lorem Ipsum you need to be</h5>
                    <span>19 hour ago</span>
                  </div>
                </div>
              </li>
              <li>
                <div class="col-md-3 biseller-column">
                  <a href="single.html">
                  <img src="images/p5.jpg"/>
                  <span class="price">&#36; 1599</span>
                  </a> 
                  <div class="ad-info">
                    <h5>There are many variations of passages</h5>
                    <span>1 hour ago</span>mobile
                    
                  </div>
                </div>
                <div class="col-md-3 biseller-column">
                  <a href="single.html">
                  <img src="images/p6.jpg"/>
                  <span class="price">&#36; 1099</span>
                  </a> 
                  <div class="ad-info">
                    <h5>passage of Lorem Ipsum you need to be</h5>
                    <span>1 day ago</span>
                  </div>
                </div>
                <div class="col-md-3 biseller-column">
                  <a href="single.html">
                  <img src="images/p7.jpg"/>
                  <span class="price">&#36; 109</span>
                  </a> 
                  <div class="ad-info">
                    <h5>It is a long established fact that a reader</h5>
                    <span>9 hour ago</span>
                  </div>
                </div>
                <div class="col-md-3 biseller-column">
                  <a href="single.html">
                  <img src="images/p8.jpg"/>
                  <span class="price">&#36; 189</span>
                  </a> 
                  <div class="ad-info">
                    <h5>Lorem Ipsum is simply dummy</h5>
                    <span>3 hour ago</span>
                  </div>
                </div>
              </li>
              <li>
                <div class="col-md-3 biseller-column">
                  <a href="single.html">
                  <img src="images/p9.jpg"/>
                  <span class="price">&#36; 2599</span>
                  </a> 
                  <div class="ad-info">
                    <h5>Lorem Ipsum is simply dummy</h5>
                    <span>3 hour ago</span>
                  </div>
                </div>
                <div class="col-md-3 biseller-column">
                  <a href="single.html">
                  <img src="images/p10.jpg"/>
                  <span class="price">&#36; 3999</span>
                  </a> 
                  <div class="ad-info">
                    <h5>It is a long established fact that a reader</h5>
                    <span>9 hour ago</span>
                  </div>
                </div>
                  
                <div class="col-md-3 biseller-column">
                  <a href="single.html">
                  <img src="images/p11.jpg"/>
                  <span class="price">&#36; 2699</span>
                  </a> 
                  <div class="ad-info">
                    <h5>passage of Lorem Ipsum you need to be</h5>
                    <span>1 day ago</span>
                  </div>
                </div>
                <div class="col-md-3 biseller-column">
                  <a href="single.html">
                  <img src="images/p12.jpg"/>
                  <span class="price">&#36; 899</span>
                  </a> 
                  <div class="ad-info">
                    <h5>There are many variations of passages</h5>
                    <span>1 hour ago</span>
                  </div>
                </div>
              </li>
            </ul>
            
            <script type="text/javascript">
              $(window).load(function() {
              $("#flexiselDemo3").flexisel({
              	visibleItems:1,
              	animationSpeed: 1000,
              	autoPlay: true,
              	autoPlaySpeed: 5000,    		
              	pauseOnHover: true,
              	enableResponsiveBreakpoints: true,
              	responsiveBreakpoints: { 
              		portrait: { 
              			changePoint:480,
              			visibleItems:1
              		}, 
              		landscape: { 
              			changePoint:640,
              			visibleItems:1
              		},
              		tablet: { 
              			changePoint:768,
              			visibleItems:1
              		}
              	}
              });
              
              });
               
            </script>
            <script type="text/javascript" src="js/jquery.flexisel.js"></script>
          </div>
        </div>
        <!-- //slider -->				
      </div>
      <div class="mobile-app">
        <div class="container">
          <div class="col-md-5 app-left">
            <a href="mobileapp.html"><img style="border-radius: 45px 45px 0px 0px;" src="images/app_1.png" alt=""></a>
          </div>
          <div class="col-md-7 app-right">
            <h3>etail is the <span>Easiest</span> way for Selling and buying second-hand goods</h3>
            <p>It is a form of electronic commerce which allows consumers to directly buy goods or services from a seller over the Internet using a web browser. </p>
          </div>
          <div class="clearfix"></div>
        </div>
      </div>
    </div>
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
                  <li>Mohali</li>
                  <div class="clearfix"></div>
                </ul>
                <ul class="location">
                  <li><span class="glyphicon glyphicon-earphone"></span></li>
                  <li>+91 9816101334</li>
                  <div class="clearfix"></div>
                </ul>
                <ul class="location">
                  <li><span class="glyphicon glyphicon-envelope"></span></li>
                  <li><a href="yogeshch147@gmail.com">yogeshch147@gmail.com</a></li>
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
<!--          <div class="copyrights">
            <p> © 2018 etail. All Rights Reserved | </p>
          </div>-->
          <div class="clearfix"></div>
        </div>
      </div>
    </footer>
    <!--footer section end-->
  </body>
</html>