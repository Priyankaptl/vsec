<?php include('Crypto.php')?>

<?php
require('config.php');
	error_reporting(0);
	
	$workingKey='5CD2F7936549FC397600AFDBB2B6F49B';		//Working Key should be provided here.
	$encResponse=$_POST["encResp"];			//This is the response sent by the CCAvenue Server
	$rcvdString=decrypt($encResponse,$workingKey);		//Crypto Decryption used as per the specified working key.
	$order_status="";
	$decryptValues=explode('&', $rcvdString);
	$dataSize=sizeof($decryptValues);
	echo "<center>";

	for($i = 0; $i < $dataSize; $i++) 
	{
		$information=explode('=',$decryptValues[$i]);
		if($i==3)	$order_status=$information[1];
	}

	if($order_status==="Success")
	{
		echo "<br>Thank you. Your transaction is successful.";
		
	}
	else if($order_status==="Aborted")
	{
		echo "<br>Thank you. We will keep you posted regarding the status of your order through e-mail";
	
	}
	else if($order_status==="Failure")
	{
		echo "<br>Thank you. However,the transaction has been declined.";
	}
	else
	{
		echo "<br>Security Error. Illegal access detected";
	
	}

	// for($i = 0; $i < $dataSize; $i++) 
	// {
	// 	$information=explode('=',$decryptValues[$i]);
	//     $information[0];$information[1];
	// }
	$information=explode('=',$decryptValues[0]);
	$orderid=$information[1];

	$information=explode('=',$decryptValues[1]);
	$trackingid=$information[1];

	$information=explode('=',$decryptValues[2]);
	$bankref=$information[1];

	$information=explode('=',$decryptValues[3]);
	$status=$information[1];

	$information=explode('=',$decryptValues[11]);
	$name=$information[1];

	$information=explode('=',$decryptValues[17]);
	$mob=$information[1];

	$information=explode('=',$decryptValues[18]);
	$email=$information[1];

	$information=explode('=',$decryptValues[27]);
	$fname=$information[1];

	$information=explode('=',$decryptValues[28]);
	$class=$information[1];

	$information=explode('=',$decryptValues[29]);
	$month=$information[1];

	$information=explode('=',$decryptValues[30]);
	$schid=$information[1];

	$information=explode('=',$decryptValues[35]);
	$amount=$information[1];

	$information=explode('=',$decryptValues[40]);
	$date=$information[1];

	echo "</center>";
	if($order_status==="Success")
	{
		$conn=mysqli_connect($host,$username,$password,$dbname);
		$sql="UPDATE student  SET  status='$status',orderid='$orderid', payid= '$trackingid', email='$email', DDATE='$date' WHERE stud_id='$schid';";
		if(mysqli_query($conn,$sql))
		{
			echo "Data Collected.";
		}

		?>
		<br>
		<table>
			<form method="POST" action="receipt.php">
				<tr><td>Order Id:</td><td><input type="text" value="<?= $orderid; ?>" class="form-control" id="oid" name="oid" readonly></td></tr>
				<tr><td>Transaction Id:</td><td><input type="text" value="<?= $trackingid; ?>" class="form-control" id="tid" name="tid" readonly></td></tr>
				<tr><td>Student Name:</td><td><input type="text" value="<?= $name; ?>" class="form-control" id="name" name="name" readonly></td></tr>
				<tr><td>Father's Name:</td><td><input type="text" value="<?= $fname; ?>" class="form-control" id="fname" name="fname" readonly></td></tr>
				<tr><td>Scholar Number:</td><td><input type="text" value="<?= $schid; ?>" class="form-control" id="schid" name="schid" readonly></td></tr>
				<tr><td>Class:</td><td><input type="text" value="<?= $class; ?>" class="form-control" id="class" name="class" readonly></td></tr>
				<tr><td>Mobile:</td><td><input type="text" value="<?= $mob; ?>" class="form-control" id="mob" name="mob" readonly></td></tr>
				<tr><td>Email:</td><td><input type="text" value="<?= $email; ?>" class="form-control" id="email" name="email" readonly></td></tr>
				<tr><td>Month:</td><td><input type="text" value="<?= $month; ?>" class="form-control" id="month" name="month" readonly></td></tr>
				<tr><td>Amount:</td><td><input type="text" value="<?= $amount; ?>" class="form-control" id="amount" name="amount" readonly></td></tr>
				<tr><td>Bank Reference Id:</td><td><input type="text" value="<?= $bankref; ?>" class="form-control" id="br" name="br" readonly></td></tr>
				<tr><td>Payment Status:</td><td><input type="text" value="<?= $status; ?>" class="form-control" id="status" name="status" readonly></td></tr>
				<tr><td>Date:</td><td><input type="text" value="<?= $date; ?>" class="form-control" id="date" name="date" readonly></td></tr>
				<tr><td colspan="2"><button type="submit" class="btn btn-primary" id="print" name="print">Print Receipt</button></td></tr>
			</form>
		</table>
		<?php
	}
	else
	{	
		header('Location: failpayment.php');
	}
?>
