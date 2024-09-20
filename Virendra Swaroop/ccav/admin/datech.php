<?php
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
    header('Location: datech.php');
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
                    <h4>UPDATE FEE ONLINE</h4>
                </div>
                <div class="card-body">
                    <form action="#" method="GET">
                        <div class="row">
                            <div class="col-md-8">
                                <label for="stud_id">Enter Date: </label>
                                <input type="text" name="dated" id="dated" class="form-control register_form"  required> 
                                <script>
                                    var dateField = document.getElementById("dated");
					                dateField.onkeyup = bar;
                                    function bar(evt)
                                    {
                                        var v = this.value;
                                        if (v.match(/^\d{2}$/) !== null) {
                                            this.value = v + '/';
                                        } else if (v.match(/^\d{2}\/\d{2}$/) !== null) {
                                            this.value = v + '/';
                                        }

                                    }
                                </script>
                            </div>
                            <div class="col-md-8">
                                <label for="mode">Enter Mode of Payment: <B>(CHEQ/GATE/CASH/NEFT)</B> </label>
                                <input type="text" name="mode" id="mode" placeholder="CHEQ/GATE/CASH/NEFT" class="form-control register_form" maxlength="4"  required>
                            </div>
                            <div class="col-md-8">
                                <INPUT type="submit" value="Submit" id="submit" name="submit" class="btn btn-primary">
                            </div>
                        </div>
                    </form>
                    
                    <?php
                        if(isset($_GET["submit"])){
                        // Grab User submitted information
                                $date = $_GET["dated"];
                                $mode = strtoupper($_GET["mode"]);
                                if($mode=="CHEQ" or $mode=="GATE"or $mode=="CASH" or $mode=="NEFT")
                                {
                                session_start();
                                $_SESSION['date'] = $date;
                                $_SESSION['mode'] = $mode;
                                header('Location: bdm.php'); 
                                }
                                else{
                                    ?> <Font color="Red"> Enter Correct Mode </Font> <?php
                                }
                        }
                    ?>
                </div>
            </div>
        </div>
    </div>
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
