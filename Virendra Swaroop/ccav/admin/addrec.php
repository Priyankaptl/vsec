<?php
require('config.php');
session_start();
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
  <li> <input type="submit" value="Upload/Download Data" name="uploadrec" id="uploadrec" class="b2"></li>
  <li><input type="submit" value="Logout" name="logout" id="logout" class="b2"></li>
</ul>
</form>
</center>
<H2> Add Student </H2>     

    <form action="" method="post">
        <table>
        <tr>
        <td><label for="">Scholar No.</label></td>
        <td><input type="text" style="width: 450px;"  id="id1" name="id1" required></td>
        </tr>
        <tr>
        <td><label for="">Student Name</label></td>
        <td><input type="text" style="width: 450px;"  id="na" name="na"  required></td>
        </tr>
        <tr>
        <td><label for="">Father Name</label></td>
        <td><input type="text" style="width: 450px;"   id="fa" name="fa"  required></td>
        </tr>
        <tr>
        <td><label for="">Class</label></td>
        <td><input type="text" style="width: 450px;"    id="cl" name="cl" required></td>
        </tr>
        <tr>
        <td><label for="">DOB</label></td>
        <td><input type="date" style="width: 450px;"    id="dob" name="dob" required></td>
        </tr>
        <tr>
        <td colspan="2"><button type="submit" class="btn btn-primary" id="AddNew" name="AddNew">Add Record</button></td>
        </tr>
    </table>
    </form>
    <?php
        if(isset($_POST['AddNew']))
        {
            $a1=$_POST['id1'];
            $a2=$_POST['na'];
            $a3=$_POST['fa'];
            $a4=$_POST['cl'];
            $a5=$_POST['dob'];
            $con = mysqli_connect($host,$username,$password,$dbname);
        // Make sure we connected successfully
        if(! $con)
        {
            die('Connection Failed'.mysql_error());
        }
        // Select the database to use
        mysql_select_db("vchat",$con);

        $sql = mysql_query("INSERT INTO student (stud_id,stud_name,fname,stud_class,dob) VALUES ('$a1','$a2','$a3','$a4','$a5')");
        if($sql){
        echo "<font color=green><B>New record (Reg No.". $v1.") added successfully</B></font>";
        }
        else{
        echo "<font color=red>";
        die('Error: '.mysql_error());
        echo "</font>";}
        mysql_close();
        }
    ?>
<center>
<hr>
<a href="http://www.vsecnblock.com/"> Click to visit our Home page </a>
<h4>Dr. Virendra Swarup Education Center - © 2019</h4>
</center>
<br>
</div>
</body>
</html>
