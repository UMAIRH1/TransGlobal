<?php
session_start();
//error_reporting(0);
include('include/config.php');
include('include/checklogin.php');
check_login();

if(isset($_POST['submit']))
{
$specilization=$_POST['Doctorspecialization'];
$doctorid=$_POST['doctor'];
$userid=$_SESSION['id'];
$fees=$_POST['billField'];
$appdate=$_POST['appdate'];
$time=$_POST['apptime'];
$userstatus=1;
$docstatus=1;
$loca=$_POST['loc'];
$delive=$_POST['deliver'];
$d_loca=$_POST['d_loc'];
$pno=$_POST['number'];
$query=mysqli_query($con,"insert into appointment(doctorSpecialization,doctorId,userId,consultancyFees,appointmentDate,appointmentTime,userStatus,doctorStatus ,location, delivery, d_address, phone_number) values('$specilization','$doctorid','$userid','$fees','$appdate','$time','$userstatus','$docstatus','$loca','$delive','$d_loca','$pno')");
	if($query)
	{
		echo "<script>alert('Your appointment successfully booked');</script>";
	}

}
?>


<!DOCTYPE html>
<html lang="en">
	<head>
		<title>User  | Book Driver</title>
		<link href="http://fonts.googleapis.com/css?family=Lato:300,400,400italic,600,700|Raleway:300,400,500,600,700|Crete+Round:400italic" rel="stylesheet" type="text/css" />
		<link rel="stylesheet" href="vendor/bootstrap/css/bootstrap.min.css">
		<link rel="stylesheet" href="vendor/fontawesome/css/font-awesome.min.css">	
		<link rel="stylesheet" href="vendor/themify-icons/themify-icons.min.css">
		<link rel="stylesheet" href="assets/css/styles.css">
		<script>
function getdoctor(val) {
	$.ajax({
	type: "POST",
	url: "get_doctor.php",
	data:'specilizationid='+val,
	success: function(data){
		$("#doctor").html(data);
	}
	});
}
</script>	


<script>
function getfee(val) {
	$.ajax({
	type: "POST",
	url: "get_doctor.php",
	data:'doctor='+val,
	success: function(data){
		$("#fees").html(data);
	}
	});
}
</script>	








	</head>
	<body>
		<div id="app">		
<?php include('include/sidebar.php');?>
			<div class="app-content">
			
						<?php include('include/header.php');?>
					
				<!-- end: TOP NAVBAR -->
				<div class="main-content" >
					<div class="wrap-content container" id="container">
						<!-- start: PAGE TITLE -->
						<section id="page-title">
							<div class="row">
								<div class="col-sm-8">
									<h1 class="mainTitle">User | Book Shipment</h1>
																	</div>
								<ol class="breadcrumb">
									<li>
										<span>User</span>
									</li>
									<li class="active">
										<span>Book Shipment</span>
									</li>
								</ol>
						</section>
						<!-- end: PAGE TITLE -->
						<!-- start: BASIC EXAMPLE -->
						<div class="container-fluid container-fullw bg-white">
							<div class="row">
								<div class="col-md-12">
									
									<div class="row margin-top-30">
										<div class="col-lg-8 col-md-12">
											<div class="panel panel-white">
												<div class="panel-heading">
													<h5 class="panel-title">Book Shipment</h5>
												</div>
												<div class="panel-body">
								<p style="color:red;"><?php echo htmlentities($_SESSION['msg1']);?>
								<?php echo htmlentities($_SESSION['msg1']="");?></p>	
													<form role="form" name="book" method="post" >
														


													<div class="form-group">
													<label for="DoctorSpecialization">
																To
															</label>
						<select name="Doctorspecialization" class="form-control" id="to" onChange="getdoctor(this.value);" required="required">
																<option value="">Select City</option>
<?php $ret=mysqli_query($con,"select * from doctorspecilization");
while($row=mysqli_fetch_array($ret))
{
?>
																<option value="<?php echo htmlentities($row['specilization']);?>">
																	<?php echo htmlentities($row['specilization']);?>
																</option>
																<?php } ?>
																
															</select>
														</div>

														
														
														<div class="form-group">
															<label for="loc">
														
														Address
													
															</label>
			<input class="form-control" name="loc" id="loc" required="required">
														</div>	




														<div class="form-group">
													<label for="deliver">
																From
															</label>
						<select name="deliver" class="form-control" id="deliver"  required="required">
																<option value="">Select City</option>
<?php $ret=mysqli_query($con,"select * from doctorspecilization");
while($row=mysqli_fetch_array($ret))
{
?>
																<option value="<?php echo htmlentities($row['specilization']);?>">
																	<?php echo htmlentities($row['specilization']);?>
																</option>
																<?php } ?>
																
															</select>
														</div>

														
														
														<div class="form-group">
															<label for="d_loc">
														
														Address
													
															</label>
			<input class="form-control" name="d_loc" id="d_loc" required="required">
														</div>	




														<div class="form-group">
															<label for="doctor">
																Drivers
															</label>
						<select name="doctor" class="form-control" id="doctor"  required="required">
						<option value="">Select Driver</option>
						</select>
														</div>
														
														<!-- <div class="form-group"> -->
    <!-- <label for="loc">Additional Information</label>
    <input type="text" class="form-control" name="loc" id="loc" placeholder="Enter additional information">
</div> -->
														



<div class="form-group">
<button type="button" id="calculateBtn">Calculate</button><br><br>
    <label for="billField">Bill:</label>
    <input type="text" id="billField" name="billField"  class="form-control" readonly  required="required"><br>
	
</div>

														<div class="form-group">
															<label for="number">
														
														Phone Number
													
															</label>
			<input class="form-control" type="number" id="number" required="required">
														</div>	

														
<div class="form-group">
															<label for="AppointmentDate">
																Date
															</label>
<input class="form-control datepicker" name="appdate"  required="required" data-date-format="yyyy-mm-dd">
	
														</div>
														
<div class="form-group">
															<label for="Appointmenttime">
														
														Time
													
															</label>
			<input class="form-control" name="apptime" id="timepicker1" required="required">eg : 10:00 PM
														</div>														
														
														<button type="submit" name="submit" class="btn btn-o btn-primary">
															Submit
														</button>
													</form>
												</div>
											</div>
										</div>
											
											</div>
										</div>
									
									</div>
								</div>
					</div>
				</div>
			</div>
		</div>
		<!-- start: MAIN JAVASCRIPTS -->
		<script>
			jQuery(document).ready(function() {
				Main.init();
				FormElements.init();
			});

			$('.datepicker').datepicker({
    format: 'yyyy-mm-dd',
    startDate: '-3d'
});
		</script>



<?php

// Function to calculate distance between two points using Haversine formula
function calculateDistance($lat1, $lon1, $lat2, $lon2) {
    $earthRadius = 6371; // Earth's radius in kilometers

    // Convert latitude and longitude from degrees to radians
    $latFrom = deg2rad($lat1);
    $lonFrom = deg2rad($lon1);
    $latTo = deg2rad($lat2);
    $lonTo = deg2rad($lon2);

    // Calculate differences
    $latDiff = $latTo - $latFrom;
    $lonDiff = $lonTo - $lonFrom;

    // Haversine formula
    $a = sin($latDiff / 2) * sin($latDiff / 2) + cos($latFrom) * cos($latTo) * sin($lonDiff / 2) * sin($lonDiff / 2);
    $c = 2 * atan2(sqrt($a), sqrt(1 - $a));
    $distance = $earthRadius * $c;

    return $distance;
}

// Define cities and their coordinates
$cities = array(
    'Lahore' => array('latitude' => 31.5497, 'longitude' => 74.3436), // Lahore coordinates
    'Islamabad' => array('latitude' => 33.6844, 'longitude' => 73.0479), // Islamabad coordinates
    'Karachi' => array('latitude' => 24.8607, 'longitude' => 67.0011), // Karachi coordinates
    'Quetta' => array('latitude' => 30.1798, 'longitude' => 66.975), // Quetta coordinates
    'Okara' => array('latitude' => 30.8102, 'longitude' => 73.4594), // Okara coordinates
    'Faisalabad' => array('latitude' => 31.4504, 'longitude' => 73.135), // Faisalabad coordinates
    'Peshawar' => array('latitude' => 34.0151, 'longitude' => 71.5249), // Peshawar coordinates
    'Toba Tek Singh' => array('latitude' => 30.9754, 'longitude' => 72.4829) // Toba Tek Singh coordinates
);

$feePerKilometer = 10; // Fee per kilometer

?>
<!-- HTML form to input two cities -->


    				


<script>
// Function to calculate distance and bill
function calculateDistanceAndBill() {
    const city1 = document.getElementById('to').value.trim();
    const city2 = document.getElementById('deliver').value.trim();

    // Check if both city fields are filled
    if (city1 !== '' && city2 !== '') {
        // Check if both city names exist in the cities array
        if (<?php echo json_encode(array_keys($cities)); ?>.includes(city1) && <?php echo json_encode(array_keys($cities)); ?>.includes(city2)) {
            // Get coordinates of both cities
            const lat1 = <?php echo $cities['Lahore']['latitude']; ?>;
            const lon1 = <?php echo $cities['Lahore']['longitude']; ?>;
            const lat2 = <?php echo $cities['Islamabad']['latitude']; ?>;
            const lon2 = <?php echo $cities['Islamabad']['longitude']; ?>;
            
            // Calculate distance using Haversine formula
            const earthRadius = 6371; // Earth's radius in kilometers
            const dLat = deg2rad(lat2 - lat1);
            const dLon = deg2rad(lon2 - lon1);
            const a = Math.sin(dLat / 2) * Math.sin(dLat / 2) + Math.cos(deg2rad(lat1)) * Math.cos(deg2rad(lat2)) * Math.sin(dLon / 2) * Math.sin(dLon / 2);
            const c = 2 * Math.atan2(Math.sqrt(a), Math.sqrt(1 - a));
            const distance = earthRadius * c;

            // Calculate bill
            const feePerKilometer = <?php echo $feePerKilometer; ?>;
            const bill = distance * feePerKilometer;

            // Return the results
            return { distance: distance.toFixed(2), bill: bill.toFixed(2) };
        } else {
            alert('Invalid input cities');
        }
    }
}

// Function to convert degrees to radians
function deg2rad(deg) {
    return deg * (Math.PI / 180);
}

// Calculate distance and bill when the button is clicked
document.getElementById('calculateBtn').addEventListener('click', function() {
    // Call the function to calculate distance and bill
    const results = calculateDistanceAndBill();
    
    // Display the results
    if (results) {
         document.getElementById('billField').value = `PKR ${results.bill}`;
    }
});
</script>

		  <script type="text/javascript">
            $('#timepicker1').timepicker();
        </script>
		<!-- end: JavaScript Event Handlers for this page -->
		<!-- end: CLIP-TWO JAVASCRIPTS -->

<script src="http://ajax.googleapis.com/ajax/libs/jquery/1.8.0/jquery.min.js"></script>








	</body>
</html>

