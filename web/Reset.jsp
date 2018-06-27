<%-- 
    Document   : Reset
    Created on : 02-May-2018, 11:42:54
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
To change this license header, choose License Headers in Project Properties.
To change this template file, choose Tools | Templates
and open the template in the editor.
-->
<html>
  <head>
    <title>etail a Business Website</title>
    
    <link href="//maxcdn.bootstrapcdn.com/bootstrap/3.3.0/css/bootstrap.min.css" rel="stylesheet" id="bootstrap-css">
<script src="//maxcdn.bootstrapcdn.com/bootstrap/3.3.0/js/bootstrap.min.js"></script>
<script src="//code.jquery.com/jquery-1.11.1.min.js"></script>
<!------ Include the above in your HEAD tag ---------->

 <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/font-awesome/4.5.0/css/font-awesome.min.css">
    
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
    <style>.form-gap {
    padding-top: 35px;
}

    </style>
  </head>
  <body>
    <div class="header">
      <div class="container">
        <div class="logo">
          <a href="Home.html"><span>e</span>tail</a>
        </div>
        <div class="header-right">
          <a class="account" href="#">Reset</a>
        </div>
      </div>
    </div>
    <div style="background-color: #0000001c;height: 600px;">
       <div class="form-gap"></div>
<div class="container">
	<div class="row">
		<div class="col-md-4 col-md-offset-4">
            <div class="panel panel-default">
              <div class="panel-body">
                <div class="text-center">
                    <h3><i class="fa fa-lock fa-4x" style="color: #f3c500;" ></i></h3>
                    <h2 class="text-center" style="color: #01a185;">Forgot Password?</h2>
                  <p>You can reset your password here.</p>
                  <div class="panel-body">
    
                    <form id="register-form" role="form" autocomplete="off" class="form"  action="#" method="post">
    
                      <div class="form-group">
                        <div class="input-group">
                            <span style="padding :4px;" class="input-group-addon"><i class="glyphicon glyphicon-envelope color-blue"></i></span>
                            <input id="email" name="email" placeholder="email address" class="form-control"  type="text" required="">
                        </div>
                          </div>
                        
                         <div class="form-group">
                        <div class="input-group">
                            <span style="padding :4px; " class="input-group-addon"><i class="glyphicon glyphicon-hand-right" style="    color: #fff;
    font-size: 12px;
    background-color: rgba(89, 194, 175, 0.68);
    padding: 6px;
    border-radius: 50%;
    -webkit-border-radius: 50%;
    -moz-border-radius: 50%;
    -ms-border-radius: 50%;
    -o-border-radius: 50%;
    vertical-align: top;"></i></span>
                            <input id="text" name="ans1" placeholder="Your nick name" class="form-control"  type="text" required="">
                        </div> 
                          </div>
                        
                          <div class="form-group">
                        <div class="input-group">
                            <span style="padding :4px;" class="input-group-addon"><i class="glyphicon glyphicon-hand-right " style="    color: #fff;
    font-size: 12px;
    background-color: rgba(89, 194, 175, 0.68);
    padding: 6px;
    border-radius: 50%;
    -webkit-border-radius: 50%;
    -moz-border-radius: 50%;
    -ms-border-radius: 50%;
    -o-border-radius: 50%;
    vertical-align: top;" ></i></span>
                            <input id="text" name="ans2" placeholder="First School Name" class="form-control"  type="text" required="">
                        </div>
                          </div>
                        
                        
                          
                
                          
                          
                      
                      <div class=" sign-in-form " id="submit">
                          <input   type="submit" style="width: 131%;
    padding: 9px;
    background: #01a185;
    color: white;
    margin-bottom: 20px;
    font-size: 16px;
    border-style: none;
    margin-left: 0px;" value="Verify">
                      </div>
                      
                  
                    </form>
                      
                      <div style="display:none;" id="update">
                      <form action="Update" method="post"> 
                          
                          <div class="form-group">
                        <div class="input-group">
                            <span style="padding :4px; " class="input-group-addon"><i class="glyphicon glyphicon-hand-right" style="    color: #fff;
    font-size: 12px;
    background-color: rgba(89, 194, 175, 0.68);
    padding: 6px;
    border-radius: 50%;
    -webkit-border-radius: 50%;
    -moz-border-radius: 50%;
    -ms-border-radius: 50%;
    -o-border-radius: 50%;
    vertical-align: top;"></i></span>
                            <input id="text" name="newpass" placeholder="Your new password" class="form-control"  type="text" required="">
                        </div> 
                          </div>   
                              
                      <div class=" sign-in-form " id="submit">
                          <input   type="submit" style="width: 131%;
    padding: 9px;
    background: #01a185;
    color: white;
    margin-bottom: 20px;
    font-size: 16px;
    border-style: none;
    margin-left: 0px;" value="Update">
                      </div>
                      </form>
                      </div>
                      
                  </div>
                </div>
              </div>        
            </div>
                    
            <%
                if(request.getParameter("email") !=null)
                    {
                 try
        {
            String email=request.getParameter("email");
            String ans1=request.getParameter("ans1");
             String ans2=request.getParameter("ans2");
          
            Class.forName("com.mysql.jdbc.Driver");
              Connection  conn = DriverManager.getConnection("jdbc:mysql://localhost/tarunclark", "root", "");
              Statement stmt=conn.createStatement();
            ResultSet rs=stmt.executeQuery("select * from register WHERE email='"+email+"' && answer1='"+ans1+"' && answer2='"+ans2+"'");
                
            boolean rad= rs.next();
 
    
          if(rad==false) {
%>

<%
             JOptionPane.showMessageDialog(null,"Wrong credentials");

             // out.println("<p>Email or password incorrect</p>");
//  response.sendRedirect("Reset.jsp"); 
          
              }        
          else
          {   
              String named=rs.getString(2);
         String emaild=rs.getString(3);
         String passwordd=rs.getString(4);
           String ans1d=rs.getString(5);
             String ans2d=rs.getString(6);
   //       JOptionPane.showMessageDialog(null,email+"   "+password+"    "+emaild+"   "+passwordd+" "+named);
  //      out.println(email+"   "+password+"    "+emaild+"   "+passwordd+" "+named);
         if(email.equals(emaild) && ans1.equals(ans1d) ) {
       //       JOptionPane.showMessageDialog(null,emaild);
             //  response.sendRedirect("Home.jsp");
              HttpSession session1=request.getSession();
              session1.setAttribute("emailv",email);
            out.println("<script>document.getElementById('update').style.display ='block'</script>");  
              
          }
         
        
 //        else
   //      {
             //request.setAttribute("login","email and password");
     //    }
          }   
        
        }
          catch(Exception e)
          {
            out.println(e);  
          }
                
                    }

            
            %>
         <footer class="diff"  style="position :relative;">
             <p class="text-center" style="background-color: #00000000 !important;" >&copy 2018 . All Rights Reserved | Design by <a href="#">Yogesh</a></p>
      </footer>
          </div>
	</div>
</div></div>
       
      <!--footer section start-->
      
      <!--footer section end-->
    
  
  <script>
$(document).ready(function()
{
    $("#view").hide();
    $("a").click(function(){
        $("#view").toggle();
    });
});
</script>   
      
  </body>
</html>

