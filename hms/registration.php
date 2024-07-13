<?php
include_once('include/config.php');
if(isset($_POST['submit']))
{
$fname=$_POST['full_name'];
$address=$_POST['address'];
$city=$_POST['city'];
$gender=$_POST['gender'];
$email=$_POST['email'];
$password=md5($_POST['password']);
$query=mysqli_query($con,"insert into users(fullname,address,city,gender,email,password) values('$fname','$address','$city','$gender','$email','$password')");
if($query)
{
	echo "<script>alert('Successfully Registered. You can login now');</script>";
	//header('location:user-login.php');
}
}
?>


<!DOCTYPE html>
<html lang="en">

	<head>
		<title>User Registration</title>
		
		<link href="http://fonts.googleapis.com/css?family=Lato:300,400,400italic,600,700|Raleway:300,400,500,600,700|Crete+Round:400italic" rel="stylesheet" type="text/css" />
		<link rel="stylesheet" href="vendor/bootstrap/css/bootstrap.min.css">
		<link rel="stylesheet" href="vendor/themify-icons/themify-icons.min.css">
		<link rel="stylesheet" href="assets/css/styles.css">
		
		<script type="text/javascript">
function valid()
{
 if(document.registration.password.value!= document.registration.password_again.value)
{
alert("Password and Confirm Password Field do not match  !!");
document.registration.password_again.focus();
return false;
}
return true;
}
</script>
		

	</head>

	<body class="login" style="background-color: #e9a567">
		<!-- start: REGISTRATION -->
		<div class="row" style="background-color: #e9a567">
			<div class="main-login col-xs-10 col-xs-offset-1 col-sm-8 col-sm-offset-2 col-md-4 col-md-offset-4" style="height:850px; background-image: url('transportation.jpg');">
				<div class="logo margin-top-30" >
				<a href="../index.html"><h2 style="color: white;">Transglobal | User Registration</h2></a>
				</div>
				<!-- start: REGISTER BOX -->
				<div class="box-register" style="background-image: url('transportation.jpg');">
					<form name="registration" id="registration"  method="post" onSubmit="return valid();" style="background-color: #e9a567">
						<fieldset style="height:650px; border-radius:10px;width:400px;border-color: rgb(163, 163, 163)); background-image: url('transportation.jpg');">
							<legend style="color:black">
								Sign Up
							</legend>
							<p style="color:black">
								Enter your personal details below:
							</p>
							<div class="form-group" style="background-color: black">
								<input type="text" class="form-control" style="color:black" name="full_name" placeholder="Full Name" required>
							</div>
							<div class="form-group">
								<input type="text" class="form-control" name="address" placeholder="Address" required>
							</div>
							<div class="form-group">
								<input type="text" class="form-control" name="city" placeholder="City" required>
								<br>
								<input type="number" pattern="[0-9]{13}" maxlength="13" minlength="13" title="Enter 13-digit CNIC number" placeholder="Enter 13-digit CNIC no">
							</div>
							<div class="form-group">
								<label class="block" style="color:black">
									Gender
								</label>
								<div >
									<input type="radio" id="rg-female" name="gender" value="female" >
									<label for="rg-female" style="color:black">
										Female
									</label>
									<input type="radio" id="rg-male" name="gender" value="male">
									<label for="rg-male" style="color:black">
										Male
									</label>
								</div>
							</div>
							<p style="color:black">
								Enter your account details below:
							</p>
							<div class="form-group">
								<span class="input-icon">
									<input type="email" class="form-control" name="email" id="email" onBlur="userAvailability()"  placeholder="Email" required>
									<i class="fa fa-envelope"></i> </span>
									 <span id="user-availability-status1" style="font-size:12px;"></span>
							</div>
							<div class="form-group">
								<span class="input-icon">
									<input type="password" class="form-control" id="password" name="password" placeholder="Password" required>
									<i class="fa fa-lock"></i> </span>
							</div>
							<div class="form-group">
								<span class="input-icon">
									<input type="password" class="form-control"  id="password_again" name="password_again" placeholder="Password Again" required>
									<i class="fa fa-lock"></i> </span>
							</div>
							<div class="form-group">
								<div >
									<input type="checkbox" id="agree" value="agree" checked="true" readonly=" true" >
									<label for="agree" style="color:black">
										I agree
									</label>
								</div>
							</div>
							<div class="form-actions">
								<p style="color:black">
									Already have an account?
									<a href="user-login.php" style="color:brown">
										Log-in
									</a>
								</p>
								<button type="submit" class="btn btn-danger pull-right" id="submit" name="submit" style="background-color:brown">
									Submit <i class="fa fa-arrow-circle-right"></i>
								</button>
							</div>
						</fieldset>
					</form>

	
				</div>

			</div>
		</div>
		<script src="vendor/jquery/jquery.min.js"></script>
		<script src="vendor/bootstrap/js/bootstrap.min.js"></script>
		<script src="vendor/modernizr/modernizr.js"></script>
		<script src="vendor/jquery-cookie/jquery.cookie.js"></script>
		<script src="vendor/perfect-scrollbar/perfect-scrollbar.min.js"></script>
		<script src="vendor/switchery/switchery.min.js"></script>
		<script src="vendor/jquery-validation/jquery.validate.min.js"></script>
		<script src="assets/js/main.js"></script>
		<script src="assets/js/login.js"></script>
		<script>
			jQuery(document).ready(function() {
				Main.init();
				Login.init();
			});
		</script>
		
	<script>
function userAvailability() {
$("#loaderIcon").show();
jQuery.ajax({
url: "check_availability.php",
data:'email='+$("#email").val(),
type: "POST",
success:function(data){
$("#user-availability-status1").html(data);
$("#loaderIcon").hide();
},
error:function (){}
});
}
</script>	
		
	</body>
	<!-- end: BODY -->
</html>