<?php
require('config.php');
?>
<!DOCTYPE html>
<html lang="en">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
    <meta name="viewport" content="width=device-width">
    <title>VSEC - Online Payment System</title>
    <link rel="stylesheet" type="text/css" href="style.css">
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.0-beta1/dist/css/bootstrap.min.css" rel="stylesheet">
	
	<style>
		*{ 
			padding:0px;
			margin: 0px;
		}
	body {
		background-image: url("../images/bg2.jpg");
  /*background-color: red; 
  background-image: linear-gradient(to bottom right, red, yellow); */
}
</style>
</head>
<body>		
<div class="page"><center>
  
		<img src="../images/VSEC_LOGO%20(2).png" />
    <hr>
</center>
	
    <div class="container">
        <div class="row justify-content-center">
            <div class="col-md-7">

                <div class="card mt-3 mb-3">
                    <div class="card-header text-center">
                        <h4>Pay Fee Online</h4>
                    </div>
                    <div class="card-body">

                    
                        <form action="" method="GET">
                            <div class="row">
								<div class="col-md-2"></div>
                                <div class="col-md-8 text-center">
                                    <label for="stud_id" style="text-align: center;">Enter Scholar Number: </label>
                                    <input type="number" name="stud_id" id="stud_id" value="<?php if(isset($_GET['stud_id'])){echo $_GET['stud_id'];} ?>" class="form-control" placeholder="5 digit scholar number" required> 
                                </div>
								<div class="col-md-2"></div>
								 <label for="dob" style="text-align: center;">Enter Date of Birth: </label>
								<div class="col-md-2"></div>
                                <div class="col-md-8 text-center">
                                   
                                    <input type="date" id="dob" name="dob" value="<?php if(isset($_GET['dob'])){echo $_GET['dob'];} ?>" class="form-control" required> 
                                </div>
								<div style="height:15px"></div>
								<div class="col-md-2"></div>
								<div class="col-md-2"></div>
                                <div class="col-md-8">
                                    <button type="submit" class="btn btn-warning">Search</button>
									
									
                                </div>
								
                            </div>
                        </form>
                    
                        <div class="row">
                            <div class="col-md-12">
                                <hr>
                                <?php 
                                    $con =mysqli_connect($host,$username,$password,$dbname);

                                    if(isset($_GET['stud_id']) && isset($_GET['dob']))
                                    {
                                        $stud_id = $_GET['stud_id'];
                                        $dob = $_GET['dob'];

                                        $query = "SELECT * FROM student WHERE stud_id='$stud_id' AND dob='$dob'";
                                        $query_run = mysqli_query($con, $query);

                                        if(mysqli_num_rows($query_run) > 0)
                                        {
                                            foreach($query_run as $row)
                                            {
                                                if ($row['status']=="Success" or $row['status']=="SUCCESS" or $row['status']=="PAID" or $row['status']=="Paid" or $row['status']=="paid" or  $row['status']=="CHEQ" or $row['status']=="GATE" or $row['status']=="NEFT" or $row['status']=="CASH") 
                                                {
                                                    echo "<H3> Fee for the Month of ".$row['Month']." has been already Paid </H3>"; 
                                                }
                                                else
                                                {
                                                ?>
                                                <form action="<?php $mystring=$row['stud_class']; if(strtok($mystring, '-')==="PG" or strtok($mystring, '-')==="KG" or strtok($mystring, '-')==="JKG"){echo "./prepri/datafrom.php";} else{echo "./sec/datafrom.php";}?>" method="post">
                                                <div class="form-group mb-3">
                                                        <label for="">Scholar No.</label>
                                                        <input type="text" value="<?= $row['stud_id']; ?>" class="form-control" id="id1" name="id1" readonly>
                                                    </div>    
                                                <div class="form-group mb-3">
                                                        <label for="">Student Name</label>
                                                        <input type="text" value="<?= $row['stud_name']; ?>" class="form-control" id="na" name="na" readonly>
                                                    </div>
                                                    <div class="form-group mb-3">
                                                        <label for="">Father Name</label>
                                                        <input type="text" value="<?= $row['fname']; ?>" class="form-control" id="fa" name="fa" readonly>
                                                    </div>                 
                                                    <div class="form-group mb-3">
                                                        <label for="">Class</label>
                                                        <input type="text" value="<?= $row['stud_class']; ?>" class="form-control" id="cl" name="cl" readonly>
                                                    </div>
                                                    <div class="form-group mb-3">
                                                        <label for="">Enter Your Contact No</label>
                                                        <input type="text" value="<?= $row['stud_phone']; ?>" class="form-control" placeholder="Enter Your Contact No" id="ph" name="ph" maxlength="10" pattern="\d{10}" required>
                                                    </div>
                                                    <div class="form-group mb-3">
                                                        <label for="">Enter Your Email Id</label>
                                                        <input type="email" value="<?= $row['email']; ?>" class="form-control" placeholder="Enter Your Email Id" id="email" name="email" required>
                                                    </div>                                                                                               
                                                    <div class="form-group mb-3">
                                                        <label for="">Month</label>
                                                        <input type="text" value="<?= $row['Month']; ?>" class="form-control" id="mo" name="mo" readonly>
                                                    </div>
                                                    <div class="form-group mb-3">
                                                        <label for="">Amount</label>
                                                        <input type="text" value="<?= $row['Amount']; ?>" class="form-control" id="am" name="am" readonly>
                                                    </div>
                                                    <div class="form-group mb-3">
                                                        <button type="submit" class="btn btn-primary" id="pay1" name="pay1">Pay Now</button>  
                                                    </div>
                                                
                                                </form>
                                                       <?php
                                            }
                                        }
                                    }
                                        else
                                        {
                                            ?><Font color="red"><b>Scholar number (<?=$_GET['stud_id']?>) or DOB (<?=$_GET['dob']?>) entered is incorrect. <br /> No Record Found.</b></Font><?php
                                        } 
                                    }
                                ?>
                            </div>
                        </div>

                    </div>
                </div>

            </div>
        </div>
		</div>

    <script src="https://code.jquery.com/jquery-3.5.1.js"></script>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.0-beta1/dist/js/bootstrap.bundle.min.js"></script>
  <center>  <hr>
<a href="../Default.aspx"> Click to visit our Home page </a>
	  <br/>
<h6>Copyright © 2023 Dr. VSEC || All Rights Reserved. || Designed by <a href="https://trianglemind.in/" style="color: orange;">Trianglemind Technologies Pvt. Ltd.</a></h6>
</center>
</div>
</body>
</html>


