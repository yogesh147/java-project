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
    
   <style>
       #div1 {
           border:1px solid #f3c500;
           height:1200px;
           width:1000px;
           position: relative;
           left:150px;
           top:50px;
           border-radius: 10px;
       }
       
       #innerfull {
         border:1px solid #f3c500;
           height:1140px;
           width:610px;
           position: relative;
           left:30px;
           top:20px;   
         border-radius: 10px;  
           
           
       }
       #inner1 {
           
           border:1px solid #f3c500;
           height:80px;
           width:550px;
            position: relative;
           left:20px;
           top:30px;
         border-radius: 10px;  
       }
       
       #inner2 {
       // border:1px solid #f3c500;
           height:20px;
           width:140px;
            position: relative;
           left:50px;
           top:50px;   
           
      }
      
      #imginner2 {
           
           height:20px;
           width:20px;
            position: relative;
           top: 69px;
           left: 37px;
          
          
      }
      
      #add {
       //  border:1px solid #f3c500;
           height:20px;
           width:140px;
            position: relative;
           left:189px;
           top:30px;   
           text-align: right;  
          
          
      }
      
        #inner3 {
       // border:1px solid #f3c500;
           height:20px;
           width:150px;
            position: relative;
           left:329px;
           top:10px;   
           text-align: center;
           
      }
      
       #inner4 {
         border:1px solid #f3c500;
           height:400px;
           width:400px;
            position: relative;
           left:60px;
           top:100px;
           overflow: hidden;
           border-radius: 10px;
      }
      
      #inner5 {
        border:1px solid #f3c500;
           height:400px;
           width:400px;
            position: relative;
           left:60px;
           top:150px;   
           border-radius: 10px;
           text-align: center;
      }
      
      .arrow-left {
      width: 0;
    height: 0;
    border-top: 35px solid transparent;
    border-bottom: 35px solid transparent;
    border-right: 35px solid #f3c500;
    position: relative;
    bottom: 1030px;
    left: 766px;
}
      
       #right1 {
           
           height:70px;
           width:173px;
            position: relative;
           left:800px;
           bottom:1100px;      
          background-color: #f3c500;
          
      }
      
      #right1inner {
          width: 20px;
          position: relative;
          top: 27px;
          left: 38px;
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
      #right3 {
           height:70px;
           width:200px;
            position: relative;
           left:780px;
           bottom:900px;   
          border-radius:10px 10px 10px 10px;
          
      }
      
      #right3>button {
      height:68px;
      width:200px;
      border-radius:10px 10px 10px 10px;    
      background-color: #01a185;    
      }
      
      #right3>button>h3 {
           position:relative;
          bottom:15px;
          color:#FFFFFF;
          
      }
      #right3>button>img {
          height:30px; 
          width:30px;
          position:relative;
          right:70px;
          top:12px;
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
                
                
            try
        {
             String id=request.getParameter("id");
               
            Class.forName("com.mysql.jdbc.Driver");
              Connection  conn = DriverManager.getConnection("jdbc:mysql://localhost/tarunclark", "root", "");
              Statement stmt=conn.createStatement();
            ResultSet rs=stmt.executeQuery("select * from postadd where id='"+id+"'");
                
            rs.next();

               title=rs.getString(3);
              desc=rs.getString(4);
               image = rs.getString(5);
          city=rs.getString(9);
          price=rs.getString(10);
          date=rs.getString(11);
     //  JOptionPane.showMessageDialog(null,title+"   "+desc+"    "+date+"   "+price+" "+city);
  //      out.println(email+"   "+password+"    "+emaild+"   "+passwordd+" "+named);
//          if(email.equals(emaild) && password.equals(passwordd) ) {
//           HttpSession session1=request.getSession();  
//          session1.setAttribute("named",named); 
//           session1.setAttribute("emailse",emaild); 
//                   
//             //  out.println("<script>alert('User or password correct');</script>");
//               response.sendRedirect("Home.jsp");
//                                                                  }
          }
            
        
        
          catch(Exception e)
          {
            out.println(e);  
          }
            
            
            
            %>
            <div id="div1">
                
            <div id="innerfull">
                
            <div id="inner1"><h1 style="text-align:center;"><% out.print(title);%></h1> </div>
<!--            <div id="imginner2"> <img src="image/location.png" style="height:20px;"/> </div>-->
            <div id="inner2"><h4><% out.print(city);%></h4> </div>
            <div id="add"><h4>Added by phone on :</h4> </div>
            <div id="inner3"><% out.print(date);%> </div>
            <div id="inner4"><% out.print("<img src= images/"+image+" style='height:auto;width:auto;' alt='image'>");%> </div>
            <div id="inner5"><h4><% out.print(desc);%></h4></div>
            
            </div>
               <div class="arrow-left"></div>
               <div id="right1"><div id="right1innerleft"><img src="images/inr.png" style="margin-top: 25px;"/>  </div> <div id="right1innerright"><h2 style="color: #fff;width: 113px;position: relative;left: 25px;bottom: 28px;"> <% out.print(price); %></h2></div></div>
            <div id="right2"><button type="button" name="Login"> <h3>Click to Chat</h3></button> </div>
            <div id="right3"><button type="button" name="Buy"><img src="image/shop.png"/><h3>Buy Now</h3></button> </div>
            </div>
        </div>
        
        </body>
        </html>