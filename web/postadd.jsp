<%-- 
  Document   : postadd
  Created on : 02-May-2018, 14:19:16
  Author     : hp
  --%>
<%@page import="java.util.Enumeration"%>
<%@page import="com.oreilly.servlet.MultipartRequest"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.Connection"%>
<%@page import="javax.swing.JOptionPane"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<!--
  Author: W3layouts
  Author URL: http://w3layouts.com
  License: Creative Commons Attribution 3.0 Unported
  License URL: http://creativecommons.org/licenses/by/3.0/
  -->
<!--
  Author: W3layouts
  Author URL: http://w3layouts.com
  License: Creative Commons Attribution 3.0 Unported
  License URL: http://creativecommons.org/licenses/by/3.0/
  -->
<!DOCTYPE html>
<html>
  <head>
    <title>Clarkesty a Business Category Flat Bootstrap Responsive Website</title>
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
      $( document ).ready( function() {
      	$( '.uls-trigger' ).uls( {
      		onSelect : function( language ) {
      			var languageName = $.uls.data.getAutonym( language );
      			$( '.uls-trigger' ).text( languageName );
      		},
      		quickList: ['en', 'hi', 'he', 'ml', 'ta', 'fr'] //FIXME
      	} );
      } );
    </script>
    <link rel="stylesheet" type="text/css" href="css/easy-responsive-tabs.css " />
    <script src="js/easyResponsiveTabs.js"></script>
  </head>
  <body>
    <div class="header">
      <div class="container">
        <div class="logo">
          <a href="Home.jsp"><span>e</span>tail</a>
        </div>
          <div class="header-right">
          <a class="account" href="Home.jsp">Home</a>
        </div>
        <script>
          $('#myModal').modal('');
        </script>
      </div>
    </div>
    <div class="banner text-center">
      <div class="container">
        <h1 style="padding-bottom: 20px;">Sell or Advertise   <span class="segment-heading">    anything online </span> with etail</h1>
        <p>Easiest way to sell and buy anything</p>
        <a href="postadd.jsp">Post Free Ad</a>
      </div>
    </div>
    <!-- Submit Ad -->
    <div class="submit-ad main-grid-border">
      <div class="container">
        <h2 class="head">Post an Ad</h2>
        <div class="post-ad-form">
          <form  method="post" enctype="multipart/form-data">
            <label>Select Category <span>*</span></label>
            <select class="" name="category">
              <option>Select Category</option>
              <option value="Mobiles">Mobiles</option>
              <option value="Electronics and Appliance">Electronics and Appliances</option>
              <option value="Cars">Cars</option>
              <option value="Bikes">Bikes</option>
              <option value="Furniture">Furniture</option>
              <option value="Pets">Pets</option>
              <option value="Books, Sports and hobbies">Books, Sports and hobbies</option>
              <option value="Fashion">Fashion</option>
              <option value="Kids">Kids</option>
              <option value="Services">Services</option>
              <option value="Real, Estate">Properties</option>
            </select>
            <div class="clearfix"></div>
            <label for="title">Ad Title <span>*</span></label>
            <input type="text" name="title" class="phone" placeholder="Ad Title" required/>
            <div class="clearfix"></div>
            <label for="description">Ad Description <span>*</span></label>
            <textarea name="description" class="mess" placeholder="Write few lines about your product" required/></textarea>
            <div class="clearfix"></div>
            <div class="upload-ad-photos">
              <label for="photos">Photos for your ad :</label>	
              <div class="photos-upload-view">
        
          <input type="hidden" id="MAX_FILE_SIZE" name="MAX_FILE_SIZE" value="300000" >
          <div>
          <input type="file" id="fileselect" name="fileselect[]" multiple="multiple" />
          <div id="filedrag">or drop files here</div>
          </div>
       
         
          <div id="messages">
          <p>Status Messages</p>
          </div>
          </div>
          <div class="clearfix"></div>
          <script src="js/filedrag.js"></script>
          </div>
          <div class="personal-details">
              
              <label for="name">Your Name <span>*</span></label>
              <input type="text" name="name" class="name" placeholder="" required/>
              <div class="clearfix"></div>
              <label for="phone">Your Mobile No <span>*</span></label>
              <input type="text" name="phone" class="phone" placeholder="" required/>
              <div class="clearfix"></div>
              <label for="address">Your Email Address<span>*</span></label>
              <input type="text" name="address" class="email" placeholder="" value="<% out.println(session.getAttribute("emailse").toString()); %>" readonly required/>
              <div class="clearfix"></div>
              <label for="price">City <span>*</span></label>
              <input type="text" name="City" class="name" placeholder="" required/>
              <div class="clearfix"></div>
              <label for="price">Price <span>*</span></label>
              <input type="text" name="price" class="name" placeholder="" required/>
              <div class="clearfix"></div>
              <p class="post-terms">By clicking <strong>Post Button</strong> you accept our <a href="terms.html" target="_blank">Terms of Use </a> and <a href="privacy.html" target="_blank">Privacy Policy</a></p>
              <input type="submit" value="POST"  name="asubmit">					
              <div class="clearfix"></div>
            </form>
              
              <%

                   try
        {
            MultipartRequest multi= new MultipartRequest(request, "D:\\Users\\hp\\Documents\\NetBeansProjects\\Tarunclark\\Web\\images");
          String image =  multi.getParameter("fileselect[]");
            Enumeration e =  multi.getFileNames();
      
           while(e.hasMoreElements())
           {
             String upload =   (String)e.nextElement();
            image = multi.getFilesystemName(upload);
           }
            String category=multi.getParameter("category");
            String title=multi.getParameter("title");
             String desc=multi.getParameter("description");
             String name=multi.getParameter("name");
             String phone=multi.getParameter("phone");
             String address=multi.getParameter("address");
             String city=multi.getParameter("City");
              String price=multi.getParameter("price");
          
            Class.forName("com.mysql.jdbc.Driver");
              Connection  conn = DriverManager.getConnection("jdbc:mysql://localhost/tarunclark", "root", "");
              Statement stmt=conn.createStatement();
     //    out.println("insert into postadd (category,title,description,image,name,phone,address,city,price) values ('"+category+"','"+title+"','"+desc+"','"+image+"','"+name+"','"+phone+"','"+address+"','"+city+"','"+price+"'");
         boolean result =stmt.execute("insert into postadd (category,title,description,image,name,phone,address,city,price,postedon) values ('"+category+"','"+title+"','"+desc+"','"+image+"','"+name+"','"+phone+"','"+address+"','"+city+"','"+price+"',NOW())");
         
            if(result==false){
                JOptionPane.showMessageDialog(null,"values entered");//use "this" in case of frame instead null
          
    response.sendRedirect("postadd.jsp"); 
   }
            else{
                JOptionPane.showMessageDialog(null,"query failed");
            }         

          }   
        
          catch(Exception e)
          {
      //    out.println(e);  
          }
                
                     %>
              
              
          </div>
        </div>
      </div>
    </div>
    <!-- // Submit Ad -->
    <!--footer section start-->		
    <footer>
      <div class="footer-top">
        <div class="container">
          <div class="foo-grids">
            <div class="col-md-3 footer-grid">
              <h4 class="footer-head">Help</h4>
              <ul>
                <li><a href="howitworks.html">How it Works</a></li>
                <li><a href="sitemap.html">Sitemap</a></li>
                <li><a href="faq.html">Faq</a></li>
                <li><a href="feedback.html">Feedback</a></li>
                <li><a href="contact.html">Contact</a></li>
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
                  <li style="text-transform:capitalize;">Impinge Solutions, Industrial Area, Phase 8b, Mohali (PB)</li>
                  <div class="clearfix"></div>
                </ul>
                <ul class="location">
                  <li><span class="glyphicon glyphicon-earphone"></span></li>
                  <li>+91 9888699757
                    <br> +91 9056194546
                    <br>  +91 9816101334
                  </li>
                  <div class="clearfix"></div>
                </ul>
                <ul class="location">
                  <li><span class="glyphicon glyphicon-envelope"></span></li>
                  <li>tk1234848@gmail.com</li>
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
            <p> © 2018 etail. All Rights Reserved |</p>
          </div>
          <div class="clearfix"></div>
        </div>
      </div>
    </footer>
    <!--footer section end-->
  </body>
</html>