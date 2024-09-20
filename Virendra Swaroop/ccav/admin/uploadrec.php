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
    header('Location: datech.php');
}
if(isset($_POST["nost"])){
  header('Location: nost.php');
}
if(isset($_POST["uploadrec"])){
    header('Location:uploadrec.php');
}
?>

<?php  
$connect = mysqli_connect($host,$username,$password,$dbname);
if(isset($_POST["upload"]))
{
 if($_FILES['file']['name'])
 {
  $filename = explode(".", $_FILES['file']['name']);
  if($filename[1] == 'csv')
  {
   $handle = fopen($_FILES['file']['tmp_name'], "r");
   while($data = fgetcsv($handle))
   {
    $item1 = mysqli_real_escape_string($connect, $data[0]);  
    $item2 = mysqli_real_escape_string($connect, $data[1]);
	$item3 = mysqli_real_escape_string($connect, $data[2]);  
    $item4 = mysqli_real_escape_string($connect, $data[3]);  
    $item5 = mysqli_real_escape_string($connect, $data[4]);
	$item6 = mysqli_real_escape_string($connect, $data[5]);  
    $item7 = mysqli_real_escape_string($connect, $data[6]);  
    $item8 = mysqli_real_escape_string($connect, $data[7]);
	$item9 = mysqli_real_escape_string($connect, $data[8]);  
    $item10 = mysqli_real_escape_string($connect, $data[9]);  
    $item11 = mysqli_real_escape_string($connect, $data[10]);
	$item12 = mysqli_real_escape_string($connect, $data[11]);  
    $item13 = mysqli_real_escape_string($connect, $data[12]);  
    $item14 = mysqli_real_escape_string($connect, $data[13]);
	$item15 = mysqli_real_escape_string($connect, $data[14]);  
    $item16 = mysqli_real_escape_string($connect, $data[15]);  
    $item17 = mysqli_real_escape_string($connect, $data[16]);
    $query = "INSERT into student values('$item1','$item2','$item3','$item4','$item5','$item6','$item7','$item8','$item9','$item10','$item11','$item12','$item13','$item14','$item15','$item16','$item17')";
    mysqli_query($connect, $query);
   }
   fclose($handle);
   echo "<script>alert('Import done');</script>";
  }
 }
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
<h2><u> Import Data from CSV </u></h2>
    <form method="post" enctype="multipart/form-data">
        <div align="center">  
            <input type="file" name="file" class="text1">
            <br />
            <input type="submit" name="upload" value="Upload" class="splbutton" />
        </div>
    </form>
    <hr>
</div>
<h2><u> Export Data </u></h2>
    <form method="post" enctype="multipart/form-data" action="dataupload.php">
        <div align="center">  
            <input type="submit" name="upload" value="Export Data" class="splbutton" />
        </div>
    </form>
    <hr>
</div>
<center>
<hr>
<a href="http://www.vsecnblock.com/"> Click to visit our Home page </a>
<h4>Dr. Virendra Swarup Education Center - © 2021</h4>
</center>
<br>
</div>
</body>
</html>
