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
        <script>
          $('#myModal').modal('');
        </script>
      </div>
    </div>
    <div class="banner text-center" >
      <div class="container">
        <h1 style="padding-bottom: 20px;">Sell or Advertise   <span class="segment-heading">    anything online </span> with etail</h1>
        <p>Easiest way to sell and buy anything</p>
        <a href="postadd.jsp">Post Free Ad</a>
      </div>
    </div>
      
      
      
      
      
      
      
      
      
      
      
      
       <div class="submit-ad main-grid-border">
      <div class="container">
        <h2 class="head">Edit Your Add</h2>
      
      
      
           
                <div class="post-ad-form" >
                     <form action="Edit" method="post" enctype="multipart/form-data">
                    <div class="clearfix"></div>
                    
                    <label for="cat_name">Category Name</label>
                    <input type="text" name="cat_name" id="cat_name" placeholder="category name"><br>
<div class="clearfix"></div>
                    
                    <label for="Name">Name</label>
                    <input type="text" name="name" id="name" placeholder="name"><br>
<div class="clearfix"></div>
                    
                    <label for="cat_image">Image</label>
                    <input type="file" name="cat_image" id="cat_image" ><br>
<div class="clearfix"></div>

                    <label for="title">title</label>
                    <input type="text" name="title" id="title" placeholder="title"><br>
<div class="clearfix"></div>

                    <label for="desc">description</label>
                    <input type="text" name="desc" id="desc" placeholder="desc"><br>
<div class="clearfix"></div>

                    <label for="phone">phone</label>
                    <input type="text" name="phone" id="phone" placeholder="phone"><br>
<div class="clearfix"></div>

                    <label for="city">city</label>
                    <input type="text" name="city" id="city" placeholder="city"><br>
                    <div class="clearfix"></div>
                    
                    <label for="price">price</label>
                    <input type="text" name="price" id="price" placeholder="price"><br>
<div class="clearfix"></div>
                    
<label for="pid">id</label>
                    <input type="text" value="<%out.println(request.getParameter("id"));%>" name="pid">
                    <div class="clearfix"></div>
                    
                    <input type="submit" value="Submit" name="update">
                    <div class="clearfix"></div>
                    
                </div>

            </form>
</div>
                    </div>

        </div>


    </body>
</html>

