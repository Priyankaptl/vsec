<?php
session_start();
require('config.php');
if(!isset($_SESSION['un']))
    header('Location: index.php');

if(isset($_POST["logout"])){
    session_destroy();
    header('Location: index.php');
}
if(isset($_POST["adminhome"])){
    header('Location: adminhome.php');
}
if(isset($_POST["addrec"])){
    header('Location: addrec.php');
}
if(isset($_POST["offpr"])){
    header('Location: offpr.php');
}
if(isset($_POST["onpr"])){
    header('Location: onpr.php');
}
if(isset($_POST["deleterecord"])){
    header('Location: deleterecord.php');
}
if(isset($_POST["modify"])){
    header('Location: modifyrecord.php');
}
if(isset($_POST["onfr"])){
    header('Location: onfr.php');
}
if(isset($_POST["bdm"])){
    header('Location: bdm.php');
}
if(isset($_POST["nost"])){
  header('Location: nost.php');
}
if(isset($_POST["uploadrec"])){
  header('Location: uploadrec.php');
}
?>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<meta name="viewport" content="width=device-width">
<title>Fee Management-AdminPanel</title>
<link rel="stylesheet" type="text/css" href="style1rz.css">
  <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.0-beta1/dist/css/bootstrap.min.css" rel="stylesheet">
</style>
</head>
<body >

<div class="page">
<center>
<IMG SRC="VSEC.png">
<hr>
<H1><U>Admin Control Panel</U></H1>
<form method="post" action="#" align="right">
<ul>
  <li><input type="submit" value="Home" name="adminhome" id="adminhome" class="b2"></li>
  <li><input type="submit" value="Add Records" name="addrec" id="addrec" class="b2"></li>
  <li><input type="submit" value="Delete Records" name="deleterecord" id="deleterecord" class="b2"></li>
  <li><input type="submit" value="Modify Records" name="modify" id="modify" class="b2"></li>
  <li><input type="submit" value="Offline Paid Record" name="offpr" id="offpr" class="b2"></li>
  <li><input type="submit" value="Online Paid Record" name="onpr" id="onpr" class="b2"></li>
  <li><input type="submit" value="Online Failed Record" name="onfr" id="onfr" class="b2"></li>
  <li><input type="submit" value="No Record" name="nost" id="nost" class="b2"></li>
  <li><input type="submit" value="Bulk Data Management" name="bdm" id="bdm" class="b2"></li>
  <li><input type="submit" value="Upload/Download Data" name="uploadrec" id="uploadrec" class="b2"></li>
  <li><input type="submit" value="Logout" name="logout" id="logout" class="b2"></li>
</ul>
</form>
</center>
<div class="container">
    <div class="row justify-content-center">
        <div class="col-md-7">

            <div class="card mt-5">
                <div class="card-header text-center">
                    <h4>Modify Record</h4>
                </div>
                <div class="card-body">
                    <form action="" method="GET">
                        <div class="row">
                            <div class="col-md-8">
                                <label for="stud_id">Enter Scholar Number:</label>
                                <input type="text" name="stud_id" id="stud_id" value="<?php if(isset($_GET['stud_id'])){echo $_GET['stud_id'];} ?>" class="form-control register_form"  required autofocus> 
                            </div>
                            <div class="col-md-8">
                                <button type="submit"  class="btn btn-primary">Search</button>
                            </div>
                        </div>
                    </form>
                
                    <div class="row">
                        <div class="col-md-12">
                            <hr>
                            <?php 
                                $con =mysqli_connect($host,$username,$password,$dbname);

                                if(isset($_GET['stud_id']))
                                {
                                    $stud_id = $_GET['stud_id'];
                                    $query = "SELECT * FROM student WHERE stud_id='$stud_id'";
                                    $query_run = mysqli_query($con, $query);

                                    if(mysqli_num_rows($query_run) > 0)
                                    {
                                        foreach($query_run as $row)
                                        {
                                            
                                            {
                                            ?>
                                            
                                            <form action="" method="post">
                                            <div class="form-group mb-3">
                                                    <label for="">Scholar No.</label>
                                                    <input type="text" value="<?= $row['stud_id']; ?>" class="form-control register_form" id="id1" name="id1" readonly>
                                                </div>    
                                            <div class="form-group mb-3">
                                                    <label for="">Student Name</label>
                                                    <input type="text" value="<?= $row['stud_name']; ?>" class="form-control register_form" id="na" name="na" readonly>
                                                </div>
                                                <div class="form-group mb-3">
                                                    <label for="">Father Name</label>
                                                    <input type="text" value="<?= $row['fname']; ?>" class="form-control register_form" id="fa" name="fa" readonly>
                                                </div>
                                               
                                                <div class="form-group mb-3">
                                                    <label for="">Class</label>
                                                    <input type="text" value="<?= $row['stud_class']; ?>" class="form-control register_form" id="cl" name="cl" readonly>
                                                </div>
                                                <div class="form-group mb-3">
                                                    <label for="">Total Fee Recieved till Last Month</label>
                                                    <input type="text" value="<?= $row['FR_SEP']; ?>" class="form-control register_form"  id="FR_SEP" name="FR_SEP"  required onkeyup="add()">
                                                </div>
                                                <div class="form-group mb-3">
                                                    <label for="">Total Fee Till Last Month</label>
                                                    <input type="text" value="<?= $row['F_T_SEP']; ?>" class="form-control register_form"  id="F_T_SEP" name="F_T_SEP">
                                                </div>         
                                                     <div class="form-group mb-3">
                                                    <label for="">Due/Advance paid Amount</label>
                                                    <input type="text" value="<?= $row['DnAamount']; ?>" class="form-control register_form"  id="DnAamount" name="DnAamount">
                                                </div>   
                                                <div class="form-group mb-3">
                                                    <label for="">Current Month Fee</label>
                                                    <input type="text" value="<?= $row['AnSFEE']; ?>" class="form-control register_form"  id="AnSFEE" name="AnSFEE">
                                                </div>                                                                                     
                                                <div class="form-group mb-3">
                                                    <label for="">Month</label>
                                                    <input type="text" value="<?= $row['Month']; ?>" class="form-control register_form" id="mo" name="mo"required>
                                                </div>
                                                <div class="form-group mb-3">
                                                    <label for="">Total Amount Due</label>
                                                    <input type="text" value="<?= $row['Amount']; ?>" class="form-control register_form" id="am" name="am">
                                                </div>
                                                <div class="form-group mb-3">
                                                    <label for="">STATUS</label>
                                                    <input type="text" value="<?= $row['status']; ?>" class="form-control register_form" id="status" name="status">
                                               </div>
                                               <div class="form-group mb-3">
                                                    <label for="">DATE</label>
                                                    <input type="text" value="<?= $row['DDATE']; ?>" class="form-control register_form" id="da" name="da">
                                                    </div>
                                                <div class="form-group mb-3">
                                                    <button type="submit" class="btn btn-primary" id="UPDATE" name="UPDATE">UPDATE NOW</button>
                                                </div>
                                              <script>
        var allFields = document.querySelectorAll(".register_form");

        for (var i = 0; i < allFields.length; i++) {

            allFields[i].addEventListener("keyup", function(event) {

                if (event.keyCode === 13) {
                    console.log('Enter clicked')
                    event.preventDefault();
                    if (this.parentElement.nextElementSibling.querySelector('input')) {
                        this.parentElement.nextElementSibling.querySelector('input').focus();
                    }
                }
            });

        }
    </script>
                                                    
                                                <script>
                                           function add() {
  var x = parseInt(document.getElementById("F_T_SEP").value);
  var y = parseInt(document.getElementById("FR_SEP").value);
  var c = x-y;
  var d = parseInt(document.getElementById("AnSFEE").value);
  var e = c+d;
  document.getElementById("DnAamount").value = c;
  document.getElementById("am").value = e;

}

         </script>
           
                                            </form>
                                                   <?php
                                                   $conn = mysqli_connect($host,$username,$password,$dbname);
                                                   if (isset($_POST["UPDATE"]))
                                                  {
                                                      $id=$_POST ['id1'];
                                                      $a1=$_POST ['FR_SEP'];
                                                      $a2=$_POST ['F_T_SEP'];
                                                      $a3=$_POST ['DnAamount'];
                                                      $a4=$_POST ['mo'];
                                                      $a5=$_POST ['am'];
                                                      $a6=strtoupper($_POST ['status']);
                                                      $a7=$_POST ['da'];
                                                      $a8=$_POST['AnSFEE'];
                                                      $a3=$a2-$a1;
                                                      $a5=$a3+$a8;
                                                      echo $id.$a1.$a2.$a3.$a4.$a5.$a6.$a7.$a8;
$sql="UPDATE student  SET  FR_SEP='$a1', F_T_SEP='$a2', DnAamount='$a3', DDATE='$a7', Month='$a4', Amount='$a5', status='$a6' WHERE stud_id='$id';";
if(mysqli_query($conn,$sql))
{
    echo "Online Receipt Generated";

}
else 
{echo "post";}
                                                  }
                                        }
                                    }
                                }
                                    else
                                    {
                                        echo "No Record Found";
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
<center>
<hr>
<a href="http://www.vsecnblock.com/"> Click to visit our Home page </a>
<h4>Dr. Virendra Swarup Education Center - © 2019</h4>
</center>
<br>
</div>
</body>
</html>
