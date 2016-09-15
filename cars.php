<?php
error_reporting(0);
include("options.php");
include("header.php");
?>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>Car flip cards</title>
<link href='cars.css' rel='stylesheet' />
<script type="text/javascript" src="bootjq/jquery-3.0.0.js"></script>
<script type="text/javascript" src="modal.js"></script>
<script type="text/javascript" src="modernizr-2.6.2.min.js"></script>
</head>


<body>
<br><br>
<?php
	$sql = "SELECT * FROM ".$SETTINGS["CARS"]."";
	$sql_result = mysql_query ($sql, $connection ) or die ('request "Could not execute SQL query" '.$sql);
?><script>
        $(document).ready(function () {

    $('#filters :checkbox').click(function () {
        if ($('input:checkbox:checked').length) {
            $('.card-container').hide();
            $('input:checkbox:checked').each(function () {
                $('.card-container[data-' + $(this).prop('name') + '*="' + $(this).val() + '"]').show();
            });
        } else {
            $(".card-container").show();
        }
    });
    
});

    </script>
    <button type="button" class="btn btn-info btn-lg" data-toggle="modal" data-target="#myModal" style="margin-top:-50px; margin-bottom:20px;">Find my car</button>

<!-- Modal -->
<div id="myModal" class="modal fade" role="dialog">
  <div class="modal-dialog">

    <!-- Modal content-->
    <div class="modal-content">
      <div class="modal-header">
        <button type="button" class="close" data-dismiss="modal">&times;</button>
        <h4 class="modal-title">Modal Header</h4>
      </div>
      <div class="modal-body">
        <article id="filters">
            <section id="category">
        <p id="fHeader">Filter by Make</p>
        <input type="checkbox" name="category" value="Bentley" id="Bentley" />Bentley
        <br/>
        <input type="checkbox" name="category" value="AstonMartin" id="AstonMartin" />Aston Martin
        <br/>
        <input type="checkbox" name="category" value="Lamborghini" id="Lamborghini" />Lamborghini
        <br/>
        <input type="checkbox" name="category" value="Volvo" id="Volvo" />Volvo
        <br/>
        <input type="checkbox" name="category" value="BMW" id="BMW" />BMW
        <br/>
        <input type="checkbox" name="category" value="Mercedes" id="Mercedes" />Mercedes
        <br/>
        <input type="checkbox" name="category" value="Audi" id="Audi" />Audi
        <br/>
        <input type="checkbox" name="category" value="Toyota" id="Toyota" />Toyota
        <br/>
        <input type="checkbox" name="category" value="Opel" id="Opel" />Opel
        <br/>
        <input type="checkbox" name="category" value="Volkswagen" id="Volkswagen" />Volkswagen
        <br/>
        <input type="checkbox" name="category" value="Rolls-Royce" id="Rolls-Royce" />Rolls-Royce
        <br/>
        <input type="checkbox" name="category" value="Ferrari" id="Ferrari" />Ferrari
        <br/>
        <input type="checkbox" name="category" value="Lancia" id="Lancia" />Lancia
        <br/>
        <input type="checkbox" name="category" value="Porsche" id="Porsche" />Porsche
        <br/>
        <input type="checkbox" name="category" value="Mini" id="Mini" />Mini
        <br/>
        <input type="checkbox" name="category" value="Nissan" id="Nissan" />Nissan
        <br/>
        <input type="checkbox" name="category" value="Ford" id="Ford" />Ford
        <br/>
        <input type="checkbox" name="category" value="Mitsubishi" id="Mitsubishi" />Mitsubishi
        <br/>
        <input type="checkbox" name="category" value="Pagani" id="Pagani" />Pagani
        <br/>
        <input type="checkbox" name="category" value="Dacia" id="Dacia" />Dacia
        <br/>
        <input type="checkbox" name="category" value="LandRover" id="LandRover" />Land Rover
        <br/>
        <input type="checkbox" name="category" value="Honda" id="Honda" />Honda
        <br/>
        <input type="checkbox" name="category" value="McLaren" id="McLaren" />McLaren
        <br/>
        <input type="checkbox" name="category" value="Fiat" id="Fiat" />Fiat
        <br/>
        <input type="checkbox" name="category" value="Lotus" id="Lotus" />Lotus
        <br/>
        <input type="checkbox" name="category" value="Jaguar" id="Jaguar" />Jaguar
        <br/>
        <input type="checkbox" name="category" value="AlfaRomeo" id="AlfaRomeo" />Alfa Romeo
        <br/>
        <input type="checkbox" name="category" value="Mazda" id="Mazda" />Mazda
        <br/>
        <input type="checkbox" name="category" value="Renault" id="Renault" />Renault
        <br/>
        <input type="checkbox" name="category" value="Lexus" id="Lexus" />Lexus
        <br/>
        <input type="checkbox" name="category" value="Subaru" id="Subaru" />Subaru
        <br/>
             </section>
        </article>
      </div>
      <div class="modal-footer">
        <button type="button" class="btn btn-default" data-dismiss="modal">Close</button>
      </div>
    </div>

  </div>
</div>

<article id="products">
<div class="container" style="width:100%;">
	<?php while ($row = mysql_fetch_array($sql_result)) { ?>
    <a href="viewcar.php?message=<?php echo $row['id']; ?>">
    <div class="card-container" data-category="<?php echo $row['make']; ?>">
        <div class="card">
            <div class="front">
                <div class="cover">
					<img src="images/<?php echo $row['photo'] ?>">
				</div>
				<div class="content">
                    <div class="main">
                        <h3 class="name"><?php echo $row['title'] ?></h3>
                       
                        <div class="first float_left">
                        	<span class="icon_mileage"></span><?php echo $row['mileage'] ?>&nbsp;km
                        </div>
                        <div class="first">
                        	<span class="icon_power"></span><?php echo $row['top_speed'] ?>&nbsp;km/h
                        </div>
                        <div class="second float_left">
                        	<span class="icon_fuel"></span><?php echo $row['fuel'] ?>
                        </div>
                        
                        <div class="second">
                        	<span class="icon_gearbox"></span><?php echo $row['gearbox'] ?>
                        </div>
                    </div>
                    <div class="price">
                    	&#x20a8;<?php echo $row['price'] ?>
                    </div> 
                </div>
            </div> <!-- end front panel -->
            <div class="back">
                <p>
                	<label class="title">Make</label>
                	<span class="value"><?php echo stripcslashes($row['make']) ?></span>
                </p>
                <p>
                	<label class="title">Model</label>
                	<span class="value"><?php echo stripcslashes($row['model']) ?></span>
                </p>
                	<label class="title">Power</label>
                	<span class="value"><?php echo stripcslashes($row['power']) ?> hp</span>
                </p>
                <p>
                	<label class="title">Emission Class</label>
                	<span class="value"><?php echo stripcslashes($row['emission_class']) ?></span>
                </p>
                <p>
                	<label class="title">Color</label>
                	<span class="value"><?php echo stripcslashes($row['color']) ?></span>
                </p>
                <p>
                	<label class="title">Doors</label>
                	<span class="value"><?php echo stripcslashes($row['doors']) ?></span>
                </p>
                <p>
                	<label class="title">Fuel</label>
                	<span class="value"><?php echo stripcslashes($row['fuel']) ?></span>
                </p>
                <p>
                	<label class="title">Gearbox</label>
                	<span class="value"><?php echo stripcslashes($row['gearbox']) ?></span>
                </p>
                <p>
                	<label class="title">Number of seats</label>
                	<span class="value"><?php echo stripcslashes($row['number_of_seats']) ?></span>
                </p>
                <p>
                	<label class="title">Vehicle Type</label>
                	<span class="value"><?php echo stripcslashes($row['vehicle']) ?></span>
                </p>
                <p>
                <label class="title" style="width:100%; margin-top:15px;">Click to view more</label>
                </p>
                
            </div>
        </div>
    </div>
    </a>
    <?php } ?>
</div>
</article>
<?php include("fotter.php") ?>
</body>
</html>