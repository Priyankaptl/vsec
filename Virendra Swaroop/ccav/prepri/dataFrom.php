<?php 
$_SESSION['name']   = $_POST['na'];
$_SESSION['fname']  = $_POST['fa'];
$_SESSION['email']  = $_POST['email'];
$_SESSION['contact']= $_POST['ph'];
$_SESSION['studId'] = $_POST['id1'];
$_SESSION['class']  = $_POST['cl'];
$_SESSION['month']  = $_POST['mo'];
$_SESSION['amount'] = $_POST['am'];
?>
<html>
<head>
<script>
	window.onload = function() {
		var d = new Date().getTime();
		var o = Math.floor(Math.random() * 100000) + 1;
		document.getElementById("tid").value = d;
		<?php
		$var=$_POST['id1'];
    	echo "var jsvar ='$var';";
   		?>
		document.getElementById("order_id").value = o+jsvar;
		var button = document.getElementById('checkout');
		button.form.submit();
	};
</script>
</head>
<body>
	<form method="post" name="customerData" action="ccavRequestHandler.php">
		<table width="40%" height="100" border='1' align="center" cellspacing=0>
			<tr>
				<td colspan="2"> Compulsory information</td>
			</tr>
			<tr>
				<td>TID	:</td><td><input type="text" name="tid" id="tid" readonly /></td>
			</tr>
			<tr>
				<td>Merchant Id	:</td><td><input type="text" name="merchant_id" value="913775" readonly/></td>
			</tr>
			<tr>
				<td>Order Id	:</td><td><input type="text" name="order_id" id="order_id" readonly/></td>
			</tr>
			<tr>
				<td>Amount	:</td><td><input type="text" name="amount" value="<?= $_SESSION['amount']?>" readonly/></td>
			</tr>
			<tr>
				<td>Currency	:</td><td><input type="text" name="currency" value="INR" readonly/></td>
			</tr>
			<tr>
				<td>Redirect URL	:</td><td><input type="text" name="redirect_url" value="https://www.vsec.in/ccav/prepri/ccavResponseHandler.php" readonly/></td>
			</tr>
			<tr>
				<td>Cancel URL	:</td><td><input type="text" name="cancel_url" value="https://www.vsec.in/ccav/prepri/ccavResponseHandler.php" readonly/></td>
			</tr>
			<tr>
				<td>Language	:</td><td><input type="text" name="language" value="EN" readonly/></td>
			</tr>
			<tr>
				<td colspan="2">Billing information(optional):</td>
			</tr>
			<tr>
				<td>Billing Name	:</td><td><input type="text" name="billing_name" value="<?=$_SESSION['name']?>" readoly/></td>
			</tr>
			<tr>
				<td>Billing Address	:</td><td><input type="text" name="billing_address" value="Dr. VSEC H2 Block" readonly/></td>
			</tr>
			<tr>
				<td>Billing City	:</td><td><input type="text" name="billing_city" value="Kanpur" readonly/></td>
			</tr>
			<tr>
				<td>Billing State	:</td><td><input type="text" name="billing_state" value="UP" readonly/></td>
			</tr>
			<tr>
				<td>Billing Zip	:</td><td><input type="text" name="billing_zip" value="208011" readonly/></td>
			</tr>
			<tr>
				<td>Billing Country	:</td><td><input type="text" name="billing_country" value="India" readonly/></td>
			</tr>
			<tr>
				<td>Billing Tel	:</td><td><input type="text" name="billing_tel" value="<?=$_SESSION["contact"]?>" readonly/></td>
			</tr>
			<tr>
				<td>Billing Email	:</td><td><input type="text" name="billing_email" value="<?=$_SESSION["email"]?>" readonly/></td>
			</tr>
			<tr>
				<td colspan="2">Shipping information(optional)</td>
			</tr>
			<tr>
				<td>Shipping Name	:</td><td><input type="text" name="delivery_name" value="<?=$_SESSION['name']?>" readoly/></td>
			</tr>
			<tr>
				<td>Shipping Address	:</td><td><input type="text" name="delivery_address" value="Dr. VSEC H2 Block" readonly/></td>
			</tr>
			<tr>
				<td>shipping City	:</td><td><input type="text" name="delivery_city" value="Kanpur" readonly/></td>
			</tr>
			<tr>
				<td>shipping State	:</td><td><input type="text" name="delivery_state" value="UP" readonly/></td>
			</tr>
			<tr>
				<td>shipping Zip	:</td><td><input type="text" name="delivery_zip" value="208011" readonly/></td>
			</tr>
			<tr>
				<td>shipping Country	:</td><td><input type="text" name="delivery_country" value="India" readonly/></td>
			</tr>
			<tr>
				<td>Shipping Tel	:</td><td><input type="text" name="delivery_tel" value="<?=$_SESSION["contact"]?>" readonly/></td>
			</tr>
			<tr>
				<td>Merchant Param1	:</td><td><input type="text" name="merchant_param1" value="<?=$_SESSION["email"]?>" readonly/></td>
			</tr>
			<tr>
				<td>Merchant Param2	:</td><td><input type="text" name="merchant_param2" value="<?=$_SESSION["fname"]?>" readonly/></td>
			</tr>
			<tr>
				<td>Merchant Param3	:</td><td><input type="text" name="merchant_param3" value="<?=$_SESSION["class"]?>" readonly/></td>
			</tr>
			<tr>
				<td>Merchant Param4	:</td><td><input type="text" name="merchant_param4" value="<?=$_SESSION["month"]?>" readonly/></td>
			</tr>
			<tr>
				<td>Merchant Param5	:</td><td><input type="text" name="merchant_param5" value="<?=$_SESSION['studId']?>" readonly/></td>
			</tr>
			<tr>
				<td>Promo Code	:</td><td><input type="text" name="promo_code" value="" readonly/></td>
			</tr>
			<tr>
				<td>Vault Info.	:</td><td><input type="text" name="customer_identifier" value="" readonly/></td>
			</tr>
			<tr>
				<td></td><td><INPUT TYPE="submit" value="CheckOut" id="checkout"></td>
			</tr>
		</table>

	 </form>
</body>
</html>


