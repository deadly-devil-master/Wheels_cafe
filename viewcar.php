<!DOCTYPE html>
<html>
<meta name="viewport" content="width=device-width,initial-scale='1'"/>
<head>
<script type="text/javascript" src="bootjq/jquery-3.0.0.js"></script>
<script type="text/javascript">
$(document).ready(function(){
    $("#le").click(function()
    {   
    $("#le").hide();    
    $("#di").slideToggle();
    $("#le").show();
    });
    $("#grow").click(function()
    {   
    });
$("#le").click(function(){
$("#le").show();
});
$("#ani").click(function(){
    $("#an").animate({
        left:'700px',
        top:'700px',
    });
});
});


</script>
<style type="text/css">.hide();
    body {
    font-size: 14px;
    font-family:Arial, Helvetica, sans-serif;
    background-color: #E5E9ED;
    color: #787677;
    }
	.details 	{
        position: relative;
		margin-left: 0%;
		margin-top: 2%;
	}
	.value{
		margin-left: 200px;
	}
    #total
    {
        margin-top: -20%;
        margin-left: -6%;
        margin-right: 3%;
    }
    tr
    {
        border-bottom: 1px solid;
    }
   .grow { transition: all .2s ease-in-out; }
   .grow:hover
    {
    position:center;   
    transform: scale(1.1);
    z-index: 999;
     }
     .grow {
    -webkit-transition: all 1s ease;
    -moz-transition: all 1s ease;
    -o-transition: all 1s ease;
    -ms-transition: all 1s ease;
    transition: all 1s ease;
    }


    #description
    {
       position: relative;
        margin-top: 11%;
        margin-left: 30%;
        margin-right: 3%;
    }

</style>
</head>
<?php
error_reporting(0);
include("header.php");
?>
<?php
error_reporting(0);
include 'options.php';
$a=$_GET['message'];
$sql=mysql_query("SELECT * FROM ".$SETTINGS["CARS"]." WHERE id like '$a' ") or die('jaffa');
$row=mysql_fetch_assoc($sql);
?>
	<title><?php echo $row['title']; ?></title>
<body>
<div id="total" style="margin-top:10%">
<h1><?php echo $row['title']; ?></h1>
<br><br>
<img  id="grow" class="grow" style="width:50%; height :20%;" src="images/<?php echo $row['photo']; ?>">
<div id="description" style="width:70%;">
<h1>DESCRIPTION</h1>
<pre>
<h3>
The <?php echo $row['title']; ?> by make <?php echo stripcslashes($row['make']) ?>
 with a top speed of <?php echo $row['top_speed'] ?> 
is one of the finnest <?php echo stripcslashes($row['vehicle']) ?>  with a <?php echo stripcslashes($row['number_of_seats']) ?> seating arrangement and
a <?php echo stripcslashes($row['gearbox']) ?> gearbox .
</h3>
</pre>
</div>
            <div class="details">
            <label><h1>Specifications</h1></label>
                <table id="f" style="border:1px solid; padding:3%; width:50%;">
                <tr>
                	<td><label class="title" style="margin-right:6px;">Make</label></td>
                	<td><span class="value"><?php echo stripcslashes($row['make']) ?></span><br/><br/></td>
                </tr>
                <tr>
                	<td><label class="title">Model</label></td>
                	<td><span class="value"><?php echo stripcslashes($row['model']) ?></span><br/><br/></td>
                </tr>
                <tr>
                	<td><label class="title">Power</label></td>
                	<td><span class="value"><?php echo stripcslashes($row['power']) ?> hp</span><br/><br/></td>
                </tr>
                <tr>
                	<td><label class="title">Emission Class</label></td>
                	<td><span class="value"><?php echo stripcslashes($row['emission_class']) ?></span><br/><br/></td>
                </tr>
                <tr>
                	<td><label class="title">Color</label></td>
                	<td><span class="value"><?php echo stripcslashes($row['color']) ?></span><br/><br/></td>
                </tr> 
           </table>
            <h3 id="le"> view more</h3>
           </div>

                <div class="details1">
                <table id="di"  style=" display:none; border:1px solid; padding-left:3%; width:50%;margin-top: 0% ">
                <tr>
                	<td><label class="title">Doors</label></td>
                	<td><span class="value"><?php echo stripcslashes($row['doors']) ?></span><br/><br/></td>
                </tr>
                <tr>
                	<td><label class="title">Fuel</label></td>
                	<td><span class="value"><?php echo stripcslashes($row['fuel']) ?></span><br/><br/></td>
                </tr>
                <tr>
                	<td><label class="title">Gearbox</label></td>
                	<td><span class="value"><?php echo stripcslashes($row['gearbox']) ?></span><br/><br/></td>
                </tr>
                <tr>
                	<td><label class="title">Number of seats</label></td>
                	<td><span class="value"><?php echo stripcslashes($row['number_of_seats']) ?></span><br/><br/></td>
                </tr>
                <tr>
                	<td><label class="title">Vehicle Type</label></td>
                	<td><span class="value"><?php echo stripcslashes($row['vehicle']) ?></span><br/><br/></td>
                </tr>
                </table>    
                </div>            
</div><br><br><br>
            <div class="footer" style=" position:relative;margin-left:-20%;padding:2px; width:150%;">
                <div class="container">
                     <div class="footer-inner">
                        <div class="col-md-3 footer-grid" style="margin-left:-20%;">
                           <h3 class="widget-title">Locate Us</h3>
                           <p> <i class="glyphicon glyphicon-map-marker"></i> aditya engineering college<br>
                            Surempalem<br>
                            </span></p>
                            <p class="phone"><i class="glyphicon glyphicon-earphone"></i>1234567891</p>
                            <p><i class="glyphicon glyphicon-envelope"></i> <a href="mailto:info@example.com"> mail@example.com</a></p>
                       </div>
                        <div class="logo">
                    <a href="index.html"><h1 style="font-size:30px;position:relative;margin-left:150%;"><span>D</span>ream <span>R</span>ide</h1></a>
                </div>
                       <div class="col-md-3 footer-grid second" style="position:relative;margin-left:39%;">
                           <h3 class="widget-title">Customer Services</h3>
                              <ul class="menu-customer-service">
                                <li><a href="#">Toll Free 1-800-carzone</a></li>
                                <li><a href="#">Contact Us</a></li>
                              </ul>
                       </div>
                       <div class="clearfix"></div>
                     </div>
                </div>
            </div>
            <div class="copy" style="padding:2px; width:130%;margin-left:-19%">
                      <p>© 2016 Dream Ride.All rights reserved | Designed and developed by Team Overlord.</p>
                    </div>
            <!--start-smooth-scrolling-->
            <script type="text/javascript">
                                jQuery(document).ready(function($) {
                                    $(".scroll").click(function(event){     
                                        event.preventDefault();
                                        $('html,body').animate({scrollTop:$(this.hash).offset().top},1000);
                                    });
                                });
                                </script>
                            <!--start-smoth-scrolling-->
                        <script type="text/javascript">
                                    $(document).ready(function() {
                                        $().UItoTop({ easingType: 'easeOutQuart' });
                                        
                                    });
                                </script>
        <a href="#home" id="toTop" class="scroll" style="display: block;"> <span id="toTopHover" style="opacity: 1;"> </span></a>

</body>
</html>