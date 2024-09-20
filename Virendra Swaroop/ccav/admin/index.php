<?php

session_start();
if(isset($_SESSION['un'])){
    session_destroy();
}
?>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<meta name="viewport" content="width=device-width">
<title>FEE Management System</title>
<link rel="stylesheet" type="text/css" href="style1rz.css">
</head>
<body align="center">
<div class="page"><center>
<IMG SRC="VSEC.png">
<hr>
<H2><U>FEE MANAGEMENT SYSTEM</U></H2>
    <form method="post" action="#">
        <table border="0" >
            <tr>
                <td><label for="uname" class="text">Enter Username:</label></td>
                <td> <input type="text" name="uname" id="uname" class="text"> </td>
            </tr>
            <tr>
                <td><label for="pass" class="text">Enter Password:</label></td>
                <td> <input type="password" name="pass" id="pass" class="text"> </td>
            </tr>
            <tr>
                <td colspan="2" align="center"><input type="submit" value="Login" name="submit" id="submit" class="text bu1"/>
                <input type="reset" value="Reset"class="text bu1"/>
            </tr>
        </table>
    </form>
    
<?php
    if(isset($_POST["submit"])){
    // Grab User submitted information
        $un = $_POST["uname"];
        $ps = $_POST['pass'];
        if(empty($_POST['uname']) || empty($_POST['pass'])){
        echo "<font color=red><B>Ivalid Entry, Enter Username or Password.</B></font><Br>";
        }
        
        // Connect to the database
        else{
        if($un=="admin@vsec" && $ps=="adminvsec@123") //
        {
            echo "Valid";
            session_start();
            $_SESSION['un'] = $un;
            header('Location: adminhome.php');
        }
        else
        {
            echo "Incorrect Username or Password, Enter valid details.";
        }
        }
    }
?>
<hr>
<a href="http://www.vsecnblock.com/"> Click to visit our Home page </a>
<h4>Dr. Virendra Swarup Education Center - © 2019</h4>
<br>
</center>
</div>
</body>
</html>