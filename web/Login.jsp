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
    
    
    
       <style>
         .ui-widget-header,.ui-state-default, ui-button {
            background:#b9cd6d;
            border: 1px solid #b9cd6d;
            color: #FFFFFF;
            font-weight: bold;
         }
      </style>
      
      
    <style>
      #sub:hover{
            background: red ;
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
          <a class="account" href="#">Login</a>
        </div>
      </div>
    </div>
    <section>
      <div id="page-wrapper" class="sign-in-wrapper">
          <div class="graphs" style="background-color: #0000001c;">
          <div class="sign-in-form">
            <div class="sign-in-form-top">
            
            </div>
            <div class="signin">
             
              <form  method="post">
                <div class="log-input">
                  <div class="log-input-left">
                    <input type="text" class="user" placeholder="Your Email" name="email" required/>
                  </div>
           
                </div>
                <div class="log-input">
                  <div class="log-input-left">
                    <input type="password" class="lock" placeholder="password" name="password" required/>
                  </div>
                </div>
                  
                
                  
                  
                   <div class="signin-rit">
                <span class="checkbox1">
                <label class="checkbox">Forgot Password ?</label>
                </span>
                       <p><a href="Reset.html" >Click Here</a> </p>
                <div class="clearfix"> </div>
              </div>
                <input  id="sub" type="submit"  value="Log in" name="submit">
                <div style="display:none">sdf</div>
              </form>
              
            </div>
<!--              <button class="preview " onclick="swal()">Preview</button>-->
            <div class="new_people">
              <h2>For New People</h2>
              
              <a href="Register.html" style="position :relative; top :30px;">Register Now!</a>
            </div>
<footer class="diff">
        <p class="text-center" style="background-color: #00000000 !important;">&copy 2018 . All Rights Reserved | Design by <a href="#">Yogesh</a></p>
      </footer>
          </div>
        </div>
      </div>
      <!--footer section start-->
      
      <!--footer section end-->
    </section>
<%
 try
        {
            String email=request.getParameter("email");
            String password=request.getParameter("password");
          
            Class.forName("com.mysql.jdbc.Driver");
              Connection  conn = DriverManager.getConnection("jdbc:mysql://localhost/tarunclark", "root", "");
              Statement stmt=conn.createStatement();
            ResultSet rs=stmt.executeQuery("select * from register WHERE email='"+email+"' && password='"+password+"'");
                
            boolean rad= rs.next();
 
            
          if(rad==false) {
              
%>
<!--<script>
         $(function() {
            $( "#dialog-4" ).dialog({
               autoOpen: false, 
               modal: true,
               buttons: {
                  OK: function() {$(this).dialog("close");}
               },
            });
            $( "#sub" ).click(function() {
               $( "#dialog-4" ).dialog( "open" );
            });
//            setTimeout($("#sub").dialog('close'), 10000);
            
         });
      </script>-->
    
<%
      //       JOptionPane.showMessageDialog(null,"Wrong credentials");

   //           out.println("<p>Email or password incorrect</p>");
                //response.sendRedirect("Login1.jsp"); 
          
              }        
          else
          {   
              String named=rs.getString(2);
         String emaild=rs.getString(3);
         String passwordd=rs.getString(4);
   //       JOptionPane.showMessageDialog(null,email+"   "+password+"    "+emaild+"   "+passwordd+" "+named);
  //      out.println(email+"   "+password+"    "+emaild+"   "+passwordd+" "+named);
         if(email.equals(emaild) && password.equals(passwordd) ) {
           HttpSession session1=request.getSession();  
          session1.setAttribute("named",named); 
           session1.setAttribute("emailse",emaild); 
                   
             //  out.println("<script>alert('User or password correct');</script>");
               response.sendRedirect("Home.jsp");
                                                                  }
          }
            
        
        }
          catch(Exception e)
          {
            out.println(e);  
          }
                
       

%>
<!--  <script>
            function ar(){
                
             if ( request.getParameter("name")!=null){
                JOptionPane.showMessageDialog(null,"Wrong credentials");
             }   
            }
            
        </script>-->
  </body>
</html> 
