<?php
session_start();
require('config.php');
if(!isset($_SESSION['un']))
    header('Location: index.php');

if(!isset($_SESSION['date'])){
    $a=$_SESSION['date'];
    $mode=$_SESSION['mode'];
    header('Location: datech.php');
}

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
<H1> VSEC Fee Collection </H1>
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
<form action="" method="GET">
            <label for="stud_id">Enter Scholar Number:</label>
            <input type="text" name="stud_id" id="stud_id" value="<?php if(isset($_GET['stud_id'])){echo $_GET['stud_id'];} ?>"autofocus="this.value=''" value="stud_id" maxlength="5"> 
       		<button type="submit" onclick="getfocus(stud_id)" class="btn btn-primary">Search</button>      
</form>              
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
    <script>
    function getfocus() {
  document.getElementById("PJULY").focus();
} 
    </script>
    <form action="" method="post">
        <table>
        <tr>
        <td><label for="">Scholar No.</label></td>
        <td><input type="text" value="<?= $row['stud_id']; ?>" style="width: 450px;"  id="id1" name="id1" readonly></td>
        </tr>
        <tr>
        <td><label for="">Student Name</label></td>
        <td><input type="text" value="<?= $row['stud_name']; ?>"  style="width: 450px;"  id="na" name="na" readonly></td>
        </tr>
        <tr>
        <td><label for="">Father Name</label></td>
        <td><input type="text" value="<?= $row['fname']; ?>"  style="width: 450px;"   id="fa" name="fa" readonly></td>
        </tr>
        <tr>
        <td><label for="">Class</label></td>
        <td><input type="text" value="<?= $row['stud_class']; ?>" style="width: 450px;"    id="cl" name="cl" readonly></td>
        </tr>
        <tr>
        <td><label for="">Total Fee Received till Last Month</label></td>
        <td><input type="text" value="<?= $row['FR_SEP']; ?>"  onclick="getfocus2()" style="width: 450px;"   id="PJULY" name="PJULY"  required onkeyup="add()"></td>
        </tr>

        <tr>
        <td><label for="">Total Fee Till Last Month</label></td>
        <td><input type="text" value="<?= $row['F_T_SEP']; ?>"  style="width: 450px;"    id="ttilljuly" name="ttilljuly"></td>
        </tr>
        <tr>
        <td><label for="">Due/Advance paid Amount</label></td>
        <td><input type="text" value="<?= $row['DnAamount']; ?>"   style="width: 450px;"   id="DnAamount" name="DnAamount"></td>
        </tr>
        <tr>
        <td><label for="">Current Month Fee</label></td>
        <td><input type="text" value="<?= $row['AnSFEE']; ?>"   style="width: 450px;"   id="AnSFEE" name="AnSFEE"></td>
        </tr>
        <tr>
        <td><label for="">Month</label></td>
        <td><input type="text" value="<?= $row['Month']; ?>"  style="width: 450px;"   id="mo" name="mo"required></td>
        </tr>
        <tr>
        <td><label for="">Total Amount Due</label></td>
        <td><input type="text" value="<?= $row['Amount']; ?>"  style="width: 450px;"   id="am" name="am"></td>
        </tr>
        <tr>
        <td><label for="">Status</label></td>
        <td><input type="text" value="<?= $_SESSION['mode'] ?>" style="width: 450px;" id="status" name="status"></td>
            <td><?php echo "Previous Status: ".$row['status'];?></td>
        </tr>
        <tr>
        <td><label for="">Date</label></td>
        <td><input type="text" value="<?= $_SESSION['date'] ?>" style="width: 450px;" id="da" name="da"></td>
            <td><?php echo "Previous Date: ".$row['DDATE'];?></td>
        </tr>
        <tr>
        <td colspan="2"><button type="submit" class="btn btn-primary" id="UPDATE" name="UPDATE">UPDATE NOW</button></td>
        </tr>
    </table>
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
            var x = parseInt(document.getElementById("ttilljuly").value);
            var y = parseInt(document.getElementById("PJULY").value);
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
        $a1=$_POST ['PJULY'];
        $a2=$_POST ['ttilljuly'];
        $a3=$_POST ['DnAamount'];
        $a4=$_POST ['mo'];
        $a5=$_POST ['am'];
        $a6=strtoupper($_POST ['status']);
        $a7=$_POST ['da'];
        $a8=$_POST['AnSFEE'];
        $a3=$a2-$a1;
        $a5=$a3+$a8;
        echo $id." ".$a1." ".$a2." ".$a3." ".$a4." ".$a5." ".$a6." ".$a7." ".$a8;
        $sql="UPDATE student  SET  FR_SEP='$a1', F_T_SEP='$a2', DnAamount='$a3', DDATE='$a7', Month='$a4', Amount='$a5', status='$a6' WHERE stud_id='$id';";
        if(mysqli_query($conn,$sql))
        {echo "Record Updated.";}
        else 
        {echo "Error: something went wrong. Try again...";}
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
<script>
var input = document.getElementById('stud_id');
input.focus();
input.select();
</script>
<a href="datech.php"> Go to previous page </a>
<center>
<hr>
<a href="http://www.vsec.in/"> Click to visit our Home page </a>
<h4>Dr. Virendra Swarup Education Center - © 2019</h4>
</center>
<br>
</div>
</body>
</html>
