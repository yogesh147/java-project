
<%@page import="java.util.Enumeration"%>
<%@page import="com.oreilly.servlet.MultipartRequest"%>
<%@page import="javax.swing.JOptionPane"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.Connection"%>
<!DOCTYPE HTML>
<html>
    <head>
        <title>Pooled Admin Panel Category Flat Bootstrap Responsive Web Template | Icons :: w3layouts</title>
        <meta name="viewport" content="width=device-width, initial-scale=1">
        <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
        <meta name="keywords" content="Pooled Responsive web template, Bootstrap Web Templates, Flat Web Templates, Android Compatible web template, 
              Smartphone Compatible web template, free webdesigns for Nokia, Samsung, LG, SonyEricsson, Motorola web design" />
        <script type="application/x-javascript"> addEventListener("load", function() { setTimeout(hideURLbar, 0); }, false); function hideURLbar(){ window.scrollTo(0,1); } </script>
        <!-- Bootstrap Core CSS -->
        <link href="css/bootstrap.min.css" rel='stylesheet' type='text/css' />
        <!-- Custom CSS -->
        <link href="css/style_2.css" rel='stylesheet' type='text/css' />
        <link rel="stylesheet" href="css/morris.css" type="text/css"/>
        <!-- Graph CSS -->
        <link href="css/font-awesome.css" rel="stylesheet">
        <!-- jQuery -->
        <script src="js/jquery-2.1.4.min.js"></script>
        <!-- //jQuery -->
        <link href='//fonts.googleapis.com/css?family=Roboto:700,500,300,100italic,100,400' rel='stylesheet' type='text/css'/>
        <link href='//fonts.googleapis.com/css?family=Montserrat:400,700' rel='stylesheet' type='text/css'>
        <!-- lined-icons -->
        <link rel="stylesheet" href="css/icon-font.min.css" type='text/css' />
        <!-- //lined-icons -->
    </head>
    <body>
        <div class="page-container">
            <!--/content-inner-->
            <div class="left-content">
                <div class="mother-grid-inner">
                    <!--header start here-->
                   
                    <!--heder end here-->
                    <ol class="breadcrumb">
                        <li class="breadcrumb-item"><a href="index.html">Home</a><i class="fa fa-angle-right"></i>Product <i class="fa fa-angle-right"></i>ADD</li>
                    </ol>


                    <div class="container">

                        <form action="padd" method="post" enctype="multipart/form-data">
                            <div class="form-group">
                                <label for="name">Name</label>
                                <input type="text" name="name" id="p_name" placeholder="product name" required=""><br>
                                
                                <label for="name">Category</label>
                                <input type="text" name="category" id="p_name" placeholder="product Category" required=""><br>
                                
                                 <label for="author">Author</label>
                                <input type="text" name="author" id="p_brand" placeholder="product Author" required=""><br>
                                

                                <label for="price">Price</label>
                                <input type="text" name="price" id="p_price" placeholder="product price" required=""><br>

                                <label for="brand">Brand</label>
                                <input type="text" name="brand" id="p_brand" placeholder="product brand" required=""><br>

                                <label for="desc">Desc</label>
                                <input type="text" name="desc" id="p_desc" placeholder="product desc" required=""><br>


                                <label for="image1">image1</label>
                                <input type="file" name="image1" id="image1" required=""><br>
<!--
                                try
                                {
                                Class.forName("com.mysql.jdbc.Driver");
                                Connection con=DriverManager.getConnection("jdbc:mysql://localhost/admin","root","");
                                Statement stmt=con.createStatement();
                                String query="select * from category";
                                ResultSet rs=stmt.executeQuery(query);

                                
                                  out.println("<label for='Id'>cat id</label>");   
                                  out.println("<select name='cat_id' id='Id'>");
                                    while(rs.next()){ 
                                String cate= rs.getString(1);
                                        out.println("<option value="+cate+">"+cate+"</option>");
                                    } 
                                    out.println("</select>");

                                String query1="select * from subcategory";
                                ResultSet rs1=stmt.executeQuery(query1);
                                
                                out.print("<label for='sId'>subcat id</label>");
                                out.println("<select name='subcat_id' id='sId'>");
                                    while(rs1.next()){
                                String subcate=rs1.getString(1);

                                        out.println("<option value="+subcate+">"+subcate+"</option>");
                                    } 
                                    out.println("</select>");



                                }
                                catch(Exception ex)
                                {
                                out.println(ex);
                                }

-->

                               
                                <input type="submit" value="Submit" name="submit">
                            </div>
                        </form>







                    </div>


                    <!-- script-for sticky-nav -->
                    <script>
                        $(document).ready(function () {
                            var navoffeset = $(".header-main").offset().top;
                            $(window).scroll(function () {
                                var scrollpos = $(window).scrollTop();
                                if (scrollpos >= navoffeset) {
                                    $(".header-main").addClass("fixed");
                                } else {
                                    $(".header-main").removeClass("fixed");
                                }
                            });

                        });
                    </script>
                    <!-- /script-for sticky-nav -->
                    <!--inner block start here-->
                    <div class="inner-block">
                    </div>
                    <!--inner block end here-->
                    <!--copy rights start here-->
                    <!--COPY rights end here-->
                </div>
            </div>
            <!--//content-inner-->
            <!--/sidebar-menu-->
            <div class="sidebar-menu">
                <header class="logo1">
                    <a href="#" class="sidebar-icon"> <span class="fa fa-bars"></span> </a> 
                </header>
                <div style="border-top:1px ridge rgba(255, 255, 255, 0.15)"></div>
                <div class="menu">
                    <ul id="menu" >
                        <li>
                            <a href="index.html">
                                <i class="fa fa-tachometer"></i> <span>Dashboard</span>
                                <div class="clearfix"></div>
                            </a>
                        </li>
                        <li id="menu-academico" >
                            <a href="inbox.html">
                                <i class="fa fa-envelope nav_icon"></i><span>Inbox</span>
                                <div class="clearfix"></div>
                            </a>
                        </li>
                        <li>
                            <a href="gallery.html">
                                <i class="fa fa-picture-o" aria-hidden="true"></i><span>Gallery</span>
                                <div class="clearfix"></div>
                            </a>
                        </li>
                        <li id="menu-academico" >
                            <a href="charts.html">
                                <i class="fa fa-bar-chart"></i><span>Charts</span>
                                <div class="clearfix"></div>
                            </a>
                        </li>
                        <li id="menu-academico" >
                            <a href="#">
                                <i class="fa fa-list-ul" aria-hidden="true"></i><span>Category</span> <span class="fa fa-angle-right" style="float: right"></span>
                                <div class="clearfix"></div>
                            </a>
                            <ul id="menu-academico-sub" >
                                <li id="menu-academico-avaliacoes" ><a href="icons.html">ADD</a></li>
                                <li id="menu-academico-avaliacoes" ><a href="view.jsp">VIEW</a></li>
                                <li id="menu-academico-avaliacoes" ><a href="faq.html">Faq</a></li>
                            </ul>
                        </li>

                        <li id="menu-academico" >
                            <a href="#">
                                <i class="fa fa-list-ul" aria-hidden="true"></i><span>Sub-Category</span> <span class="fa fa-angle-right" style="float: right"></span>
                                <div class="clearfix"></div>
                            </a>
                            <ul id="menu-academico-sub" >
                                <li id="menu-academico-avaliacoes" ><a href="subadd.jsp">ADD</a></li>
                                <li id="menu-academico-avaliacoes" ><a href="subview.jsp">VIEW</a></li>
                                <li id="menu-academico-avaliacoes" ><a href="faq.html">Faq</a></li>
                            </ul>
                        </li>

                        <li id="menu-academico" >
                            <a href="#">
                                <i class="fa fa-list-ul" aria-hidden="true"></i><span>Product</span> <span class="fa fa-angle-right" style="float: right"></span>
                                <div class="clearfix"></div>
                            </a>
                            <ul id="menu-academico-sub" >
                                <li id="menu-academico-avaliacoes" ><a href="padd.jsp">ADD</a></li>
                                <li id="menu-academico-avaliacoes" ><a href="pview.jsp">VIEW</a></li>
                                <li id="menu-academico-avaliacoes" ><a href="faq.html">Faq</a></li>
                            </ul>
                        </li>

                        <li id="menu-academico" >
                            <a href="#">
                                <i class="fa fa-list-ul" aria-hidden="true"></i><span>Color</span> <span class="fa fa-angle-right" style="float: right"></span>
                                <div class="clearfix"></div>
                            </a>
                            <ul id="menu-academico-sub" >
                                <li id="menu-academico-avaliacoes" ><a href="cadd.jsp">ADD</a></li>
                                <li id="menu-academico-avaliacoes" ><a href="cview.jsp">VIEW</a></li>
                                <li id="menu-academico-avaliacoes" ><a href="faq.html">Faq</a></li>
                            </ul>
                        </li>
                        <li id="menu-academico" >
                            <a href="#">
                                <i class="fa fa-list-ul" aria-hidden="true"></i><span>Size</span> <span class="fa fa-angle-right" style="float: right"></span>
                                <div class="clearfix"></div>
                            </a>
                            <ul id="menu-academico-sub" >
                                <li id="menu-academico-avaliacoes" ><a href="sadd.jsp">ADD</a></li>
                                <li id="menu-academico-avaliacoes" ><a href="sview.jsp">VIEW</a></li>
                                <li id="menu-academico-avaliacoes" ><a href="faq.html">Faq</a></li>
                            </ul>
                        </li>
                        <li id="menu-academico" >
                            <a href="#">
                                <i class="fa fa-cogs" aria-hidden="true"></i><span> UI Components</span> <span class="fa fa-angle-right" style="float: right"></span>
                                <div class="clearfix"></div>
                            </a>
                            <ul id="menu-academico-sub" >
                                <li id="menu-academico-avaliacoes" ><a href="button.html">Buttons</a></li>
                                <li id="menu-academico-avaliacoes" ><a href="grid.html">Grids</a></li>
                            </ul>
                        </li>
                        <li>
                            <a href="tabels.html">
                                <i class="fa fa-table"></i>  <span>Tables</span>
                                <div class="clearfix"></div>
                            </a>
                        </li>
                        <li>
                            <a href="maps.html">
                                <i class="fa fa-map-marker" aria-hidden="true"></i>  <span>Maps</span>
                                <div class="clearfix"></div>
                            </a>
                        </li>
                        <li id="menu-academico" >
                            <a href="#">
                                <i class="fa fa-file-text-o"></i>  <span>Pages</span> <span class="fa fa-angle-right" style="float: right"></span>
                                <div class="clearfix"></div>
                            </a>
                            <ul id="menu-academico-sub" >
                                <li id="menu-academico-boletim" ><a href="calendar.html">Calendar</a></li>
                                <li id="menu-academico-avaliacoes" ><a href="signin.html">Sign In</a></li>
                                <li id="menu-academico-avaliacoes" ><a href="signup.html">Sign Up</a></li>
                            </ul>
                        </li>
                        <li>
                            <a href="#">
                                <i class="fa fa-check-square-o nav_icon"></i><span>Forms</span> <span class="fa fa-angle-right" style="float: right"></span>
                                <div class="clearfix"></div>
                            </a>
                            <ul>
                                <li><a href="input.html"> Input</a></li>
                                <li><a href="validation.html">Validation</a></li>
                            </ul>
                        </li>
                    </ul>
                </div>
            </div>
            <div class="clearfix"></div>
        </div>
        <script>
            var toggle = true;

            $(".sidebar-icon").click(function () {
                if (toggle)
                {
                    $(".page-container").addClass("sidebar-collapsed").removeClass("sidebar-collapsed-back");
                    $("#menu span").css({"position": "absolute"});
                }
                else
                {
                    $(".page-container").removeClass("sidebar-collapsed").addClass("sidebar-collapsed-back");
                    setTimeout(function () {
                        $("#menu span").css({"position": "relative"});
                    }, 400);
                }

                toggle = !toggle;
            });
        </script>
        <!--js -->
        <script src="js/jquery.nicescroll.js"></script>
        <script src="js/scripts.js"></script>
        <!-- Bootstrap Core JavaScript -->
        <script src="js/bootstrap.min.js"></script>
        <!-- /Bootstrap Core JavaScript -->	   
    </body>
</html>