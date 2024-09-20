<?php
session_start();
$host="103.21.58.4:3306";
$username="vsec";
$password="Vsec@123";
$dbname="vchat";
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

</style>
</head>
<body align="center">
<div class="page"><center>
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
  <li><input type="submit" value="Download/Upload Data" name="uploadrec" id="uploadrec" class="b2"></li>
  <li><input type="submit" value="Logout" name="logout" id="logout" class="b2"></li>
</ul>
</form>
<H2> Successful Online Transactions </H2>
<input type="text" id="myInput" onkeyup="myFunction()" placeholder="Enter Date to Filter">
<table border="1px" class="t1" id="myTable">
<?php
$conn = mysqli_connect($host,$username,$password,$dbname);
// Check connection
if ($conn->connect_error) {
die("Connection failed: " . $conn->connect_error);
}
$a="Success";
$sql = "SELECT * FROM student where status='$a'";
$result = $conn->query($sql);
echo "<tr>
<th>Scholar No.</th>
<th>Student Name</th>
<th>Class</th>
<th>Date of Birth</th>
<th>Month</th>
<th>Amount</th>
<th>Status</th>
<th>Payment ID</th>
<th>Pay Date</th>
</tr>";
if ($result->num_rows > 0) {
// output data of each row
while($row = $result->fetch_assoc()) {
echo "<tr>
<td>" . $row["stud_id"]. "</td><td>" . $row["stud_name"] . "</td>
<td>". $row["stud_class"]. "</td><td>". $row["dob"]. "</td>
<td>". $row["Month"]. "</td><td>". $row["Amount"]. "</td>
<td>". $row["status"]. "</td><td>". $row["payid"]. "</td><td>". $row["DDATE"]. "</td>
</tr>";
}
} else { echo "<tr> <td colspan=3>No records found</td></tr>"; }
$conn->close();
?>
</table>
<script>
function myFunction() {
  // Declare variables
  var input, filter, table, tr, td, i, txtValue;
  input = document.getElementById("myInput");
  filter = input.value.toUpperCase();
  table = document.getElementById("myTable");
  tr = table.getElementsByTagName("tr");

  // Loop through all table rows, and hide those who don't match the search query
  for (i = 0; i < tr.length; i++) 
	{
    td = tr[i].getElementsByTagName("td")[8];
    if (td)  
	{
      txtValue = td.textContent || td.innerText;
      if (txtValue.toUpperCase().indexOf(filter) > -1) 
	  {
        tr[i].style.display = "";
      } 
		else 
	  {
        tr[i].style.display = "none";
      }
    }
  	}
}
</script>
<hr>
<a href="http://www.vsecnblock.com/"> Click to visit our Home page </a>
<h4>Dr. Virendra Swarup Education Center - © 2019</h4>
<br>
</center>
</div>
</body>
</html>